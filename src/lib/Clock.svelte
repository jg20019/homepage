<script>
  import { onMount } from "svelte";

  let time = new Date()
  let months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ]

  let weekdays = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ]

  $: hours = zeroPad(time.getHours())
  $: minutes = zeroPad(time.getMinutes())
  $: seconds = zeroPad(time.getSeconds())

  $: weekday = weekdays[time.getDay()]
  $: month = months[time.getMonth()]
  $: date = time.getDate()
  $: year = time.getFullYear()


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

<div class="container">
    <div> {weekday} {month} {date}, {year} </div>
    <div> {hours}:{minutes}:{seconds} </div>
</div>

<style>
 .container {
     font-size: 2.5em;
     padding: 0.5em;
     border-radius: 5px;
     text-align: center;
 }
 
</style>
