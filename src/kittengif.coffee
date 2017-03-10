# Description:
#   Display a kitten gif
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   !kittengif - Hubot replies with a kitten gif (321 gifs from catgifpage.com)
#
# Author:
#   BackIsBachus
#

module.exports = (robot) ->
    robot.hear /(^|.*\s)!kittengif(\s.*|$)/gi, (msg) ->
      baseUrl = 'https://www.catgifpage.com/gifs/'
      number = Math.floor(Math.random() * 321)
      ext = '.gif'
      kitten = baseUrl + number + ext
      msg.send kitten
