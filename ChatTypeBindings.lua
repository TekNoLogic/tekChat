


--BINDING_HEADER_TEKCHAT = "Chat Type Key Bindings"
BINDING_NAME_TEKCHAT_SAY = "Say"
BINDING_NAME_TEKCHAT_PARTY = "Party"
BINDING_NAME_TEKCHAT_GUILD = "Guild"
BINDING_NAME_TEKCHAT_RAID = "Raid"
BINDING_NAME_TEKCHAT_OFFICER = "Officer"
BINDING_NAME_TEKCHAT_SCRIPT = "Script"

function TekChat_OpenChatType(ctype)
	DEFAULT_CHAT_FRAME.editBox.chatType = ctype
	ChatEdit_UpdateHeader(DEFAULT_CHAT_FRAME.editBox)
	DEFAULT_CHAT_FRAME.editBox:Show()
	DEFAULT_CHAT_FRAME.editBox.setText = 1
	DEFAULT_CHAT_FRAME.editBox.text = ""
end



