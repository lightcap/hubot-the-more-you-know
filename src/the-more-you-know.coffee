module.exports = (robot) ->
  robot.hear /the more you know/i, (msg) ->
    msg.send "http://www.youtube.com/watch?v=v3rhQc666Sg"

