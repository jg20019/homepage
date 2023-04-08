<script>
  import { onMount } from "svelte";

  let time = new Date()

  $: hours = zeroPad(time.getHours())
  $: minutes = zeroPad(time.getMinutes())
  $: seconds = zeroPad(time.getSeconds())


  onMount(() => {
      const interval = setInterval(() => {
          time = new Date()
      }, 1000)

      return () => {
          clearInterval(interval)
      }
  })

  function zeroPad(n) {
      return `${n}`.padStart(2, '0') 
  }
</script>

<div>
  {hours}:{minutes}:{seconds}
</div>

<style>
 div {
     font-size: 4em;
 }
</style>
