
if not ConglomoMod then ConglomoMod = {} end

--BINDING_HEADER_CONGLOMOMOD = "Chat Type Key Bindings"
BINDING_NAME_CONGLOMOMOD_MYDEBUG = "myDebug"
BINDING_NAME_CONGLOMOMOD_SAY = "Say"
BINDING_NAME_CONGLOMOMOD_PARTY = "Party"
BINDING_NAME_CONGLOMOMOD_GUILD = "Guild"
BINDING_NAME_CONGLOMOMOD_RAID = "Raid"
BINDING_NAME_CONGLOMOMOD_OFFICER = "Officer"
BINDING_NAME_CONGLOMOMOD_SCRIPT = "Script"

function ConglomoMod:OpenChatType(ctype)
  DEFAULT_CHAT_FRAME.editBox.chatType = ctype
  ChatEdit_UpdateHeader(DEFAULT_CHAT_FRAME.editBox)
  DEFAULT_CHAT_FRAME.editBox:Show()
  DEFAULT_CHAT_FRAME.editBox.setText = 1
  DEFAULT_CHAT_FRAME.editBox.text = ""
end



