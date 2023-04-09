<script>
export let attribution_url
export let creator
export let unsplash_url
</script>

<div class="attribution">
    Photo by <a target="_blank" href="{attribution_url}"> { creator } </a> on 
    <a target="_blank" href="{unsplash_url}"> Unsplash </a>
</div>

<style>
div.attribution {
    position: absolute;
    bottom: 5px;
    right: 5px;
    background-color: rgba(0,0,0,0.8);
    padding: 0.5em;
    border-radius: 5px;
}
</style>
