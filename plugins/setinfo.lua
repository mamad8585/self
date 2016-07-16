local function tophoto(msg, success, result)
  local receiver = get_receiver(msg)
  if success then
    local file = './info/'..msg.from.id..'.webp'
    print('File downloaded to:', result)
    os.rename(result, file)
    print('File moved to:', file)
    send_document(get_receiver(msg), file, ok_cb, false)
    redis:del("sticker:photo")
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'Failed, please try again!', ok_cb, false)
  end
end
local function run(msg,matches)
    local receiver = get_receiver(msg)
    local group = msg.to.id
    if msg.reply_id then
       if msg.to.type == 'document' and redis:get("sticker:photo") then
        if redis:set("sticker:photo", "waiting") then
        end
       end
    
      if matches[1] == "ثبت استیکر" then
     redis:get("sticker:photo")  
        load_document(msg.reply_id, tophoto, msg)
  return "💠استیکر تنظیم شد برای ["..msg.from.id.."]"
    end
end
end
return {
  patterns = {
 "^(ثبت استیکر)$",
 "%[(document)%]",
  },
  run = run,
  }
