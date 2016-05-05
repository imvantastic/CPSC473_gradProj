responses = [
  "Yes"
  "No"
  "Maybe"
  "Ask your mom"
  "Who knows?"
  "You have a slight chance"
  "I would go with what that voice in your head tells you to do"
  "Even Britney wouldn't attempt it"
  "What would Justin Beiber do?"
]

console.log 'here'

$("#kittyball").on 'click', ->
  $(".shake").effect "shake", {
    times: 4
    direction: 'up'
  }, 2000
  rand = Math.floor(Math.random() * responses.length)
  console.log(rand)
  console.log(responses[rand])
  document.getElementById('response').innerHTML = 'Kitty Says: ' + responses[rand]
  return
  
#create new mobile shake event
shakeEvent = new Shake(threshold: 15)

#stop listening for mobile shake
stopShake = ->
  shakeEvent.stop()
  return

#start listening
shakeEvent.start()
window.addEventListener 'shake', (->
  randM = Math.floor(Math.random() * responses.length)
  alert responses[randM]
  return
), false

#check if shake is supported by the mobile browser
if !('ondevicemotion' of window)
  alert 'Not Supported'

  
