<script>
import Clock from './lib/Clock.svelte'
import Background from './lib/Background.svelte';
import Attribution from './lib/Attribution.svelte';
import Sidepanel from './lib/Sidepanel.svelte';
let image = {
    src: 'images/jakob-owens-uWbRcJSJLV8-unsplash.jpg',
    name: 'Jakob Owens',
    attribution_url: 'https://unsplash.com/@jakobowens1?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText',
    unsplash_url: 'https://unsplash.com/photos/uWbRcJSJLV8?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText'
}
</script>

<main>
<Sidepanel>
    <Clock />
</Sidepanel>

<Background src={image.src}/>
<Attribution 
  attribution_url={image.attribution_url}
  creator={image.name}
  unsplash_url={image.unsplash_url}
/>
</main>

<style>
</style>
