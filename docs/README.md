# mac-setup guide

A brief guide to setup everything after a fresh installation of macOS. Note that this guide is not meant for general use, it's strictly writeen as a personal guide.

# Theme

<div class="demo-theme-preview">
  <a data-theme="Light">vue.css</a>
  <a data-theme="Dark">dark.css</a>
</div>

<style>
  .demo-theme-preview a {
    padding-right: 10px;
  }

  .demo-theme-preview a:hover {
    cursor: pointer;
    text-decoration: underline;
  }
</style>

<script>
  var preview = Docsify.dom.find('.demo-theme-preview');
  var themes = Docsify.dom.findAll('[rel="stylesheet"]');

  preview.onclick = function (e) {
    var title = e.target.getAttribute('data-theme')

    themes.forEach(function (theme) {
      theme.disabled = theme.title !== title
    });
  };
</script>
