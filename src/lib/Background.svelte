<script>

export let src


$: style = `background-image: url("${src}");`
</script>

<div class="background" {style} />


<style>
div.background {
    z-index: -1;
    pointer-events: none;
    background-size: cover;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}
</style>
