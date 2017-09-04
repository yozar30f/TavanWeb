--Start By @Tele_Sudo

function run(msg, matches)
local url , res = http.request('http://irapi.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '*ساعت :* _'..jdat.FAtime..'_\n*تاریخ :* _'..jdat.FAdate..'_\n'
  tdcli.sendMessage(msg.chat_id_, 0, 1, text, 1, 'md')
end
return {
  patterns = {"^(ساعت چنده)$","^(ساعت چنده)$"}, 
run = run 
}
-- http://tavanweb.com
-- @TavanWeb
-- @Tavanbot
-- @Tavan_web

