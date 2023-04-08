<script>

let src = 'images/jakob-owens-uWbRcJSJLV8-unsplash.jpg'
$: style = `background-image: url("${src}");`

</script>

<div {style} ></div>

<style>
div {
    z-index: -999;
    background-color: red;
    background-size: cover;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}
</style>
