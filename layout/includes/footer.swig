<div class="al_index_footer dis_flex_center">
    <div class="al_index_footer_item al_index_footer_title">
        {{ config.author }}
    </div>

    {# ICPLicense #}
    {% if theme.ICPLicense.enable === true %}
        <div class="al_index_footer_item" onclick="window.open('http://www.beian.miit.gov.cn')")>
            {{ theme.ICPLicense.content }}
        </div>
    {% endif %}

    <div class="al_index_footer_item al_index_footer_extra">
        Created By 
        <a href="https://github.com/iGuan7u/Acetolog">AcetoLog</a>
         · Power By 
        <a href="https://hexo.io/">Hexo</a>
    </div>

    <div class="al_index_footer_item al_index_footer_extra_right">
        All Right Reserved
    </div>
</div>

{% if theme.graphviz.enable %}
  <script src='https://cdnjs.cloudflare.com/ajax/libs/viz.js/1.7.1/viz.js'></script>
  <script>
    String.prototype.replaceAll = function(search, replacement) {
      var target = this;
      return target.split(search).join(replacement);
    };

    let vizObjects = document.querySelectorAll('.graphviz')

    for (let item of vizObjects) {
      let svg = undefined
      try {
        svg = Viz(item.textContent.replaceAll('–', '--'), 'svg')
      } catch(e) {
        svg = `<pre class="error">${e}</pre>`
      }
      item.outerHTML = svg
    }
  </script>
{% endif %}