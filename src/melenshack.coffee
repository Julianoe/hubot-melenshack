# Description:
#   Hubot supports Melenchon with a set of images ! Can't Stench the Meluch !
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Say : "Mélenchon en images", the bot will respond with an image
#
# Notes
#   None
#
# Author:
#  Julianoe <ju.gasba+npm@gmail.com> (https://github.com/julianoe)

module.exports = (robot) ->
  robot.hear regex, (msg) ->
    msg.send msg.random images

images = require './data/images.json'

memel = [
  'Insoumis en images',
  '(((M|m)(é|e)l|mel)(e|a)nchon) en images'
]

regex = new RegExp memel.join('|'), 'ig'
