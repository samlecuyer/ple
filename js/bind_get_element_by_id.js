<button id=hello>Hello</button>
<script>
  var el = document.getElementById.bind(document);
  el('hello').onclick = function () {alert('Hello')};
</script>