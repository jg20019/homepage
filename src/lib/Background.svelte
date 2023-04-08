<script>

let image = {
    src: 'images/jakob-owens-uWbRcJSJLV8-unsplash.jpg',
    name: 'Jakob Owens',
    attribution_url: 'https://unsplash.com/@jakobowens1?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText',
    unsplash_url: 'https://unsplash.com/photos/uWbRcJSJLV8?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText'
}
$: style = `background-image: url("${image.src}");`

</script>

<div class="background" {style}>
<div class="attribution">
    Photo by <a href="{image.attribtion}"> { image.name } on 
    <a href="{image.unsplash_url}"> Unsplash </a>
</div>
</div>

<style>
div.background {
    z-index: -999;
    background-size: cover;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}

div.attribution {
    position: absolute;
    bottom: 5px;
    right: 5px;
    background-color: rgba(0,0,0,0.8);
    padding: 0.5em;
    border-radius: 5px;
}
</style>
