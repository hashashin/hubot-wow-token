# Description:
#   Return wow token price by region
#
# Dependencies:
#   None
#
# Configuration:
#  None
# 
# Commands:
#   hubot wowtoken <region> - Return <region> wow token price (regions: EU, NA, CN, TW, KR)
#
# Author:
#   hashashin
     
module.exports = (robot) ->
  robot.respond /wowtoken (EU|NA|CN|TW|KR)$/i, (msg) ->
    msg.http("https://wowtoken.info/wowtoken.json")
      .get() (err, res, body) ->
        json = JSON.parse(body)
        switch res.statusCode                                
          when 200
            text = "wow token prize in #{msg.match[1]}: " 
            switch msg.match[1]
              when "EU"
                msg.send "#{text}#{json.update.EU.formatted.buy}"
              when "NA"
                msg.send "#{text}#{json.update.NA.formatted.buy}"
              when "TW"
                msg.send "#{text}#{json.update.TW.formatted.buy}"
              when "CN"
                msg.send "#{text}#{json.update.CN.formatted.buy}"
              when "KR"
                msg.send "#{text}#{json.update.KR.formatted.buy}"
          else
            msg.send "There was an error (status: #{res.statusCode})."
