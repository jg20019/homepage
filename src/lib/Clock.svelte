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

<div class="timer"> {hours}:{minutes}:{seconds} </div>

<style>
 div {
     pointer-events: none;
 }

 .timer {
     font-size: 4em;
     background-color: rgba(0,0,0,.8);
     padding: 0.5em;
     border-radius: 5px;
 }
 
</style>
