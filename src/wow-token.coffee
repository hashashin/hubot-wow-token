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
  robot.respond /wowtoken (EU|NA|CN|TW|KR|eu|na|cn|tw|kr)$/i, (msg) ->
    msg.http("https://data.wowtoken.info/wowtoken.json")
      .get() (err, res, body) ->
        json = JSON.parse(body)
        switch res.statusCode                                
          when 200
            text = "wow token prize in #{msg.match[1]}: " 
            switch msg.match[1]
              when "EU", "eu"
                msg.send "#{text}#{json.update.EU.formatted.buy}"
              when "NA", "na"
                msg.send "#{text}#{json.update.NA.formatted.buy}"
              when "TW", "tw"
                msg.send "#{text}#{json.update.TW.formatted.buy}"
              when "CN", "cn"
                msg.send "#{text}#{json.update.CN.formatted.buy}"
              when "KR", "kr"
                msg.send "#{text}#{json.update.KR.formatted.buy}"
          else
            msg.send "There was an error (status: #{res.statusCode})."
