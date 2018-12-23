local att = {}
att.name = "uecw_foldsight"
att.displayName = "Folding sights"
att.displayNameShort = "Fold"
att.isSight = true
att.aimPos = {"UECWFoldSightPos", "UECWFoldSightAng"}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/foldsight")
	att.description = {[1] = {t = "A folding variant of regular ironsights.", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if CLIENT then
		if self.AttachmentModelsVM.uecw_foldsight_front then
			self.AttachmentModelsVM.uecw_foldsight_front.active = true
		end
		if self.AttachmentModelsVM.uecw_foldsight_rear then
			self.AttachmentModelsVM.uecw_foldsight_rear.active = true
		end
	end
end

function att:detachFunc()
	if CLIENT then
		if self.AttachmentModelsVM.uecw_foldsight_front then
			self.AttachmentModelsVM.uecw_foldsight_front.active = false
		end
		if self.AttachmentModelsVM.uecw_foldsight_rear then
			self.AttachmentModelsVM.uecw_foldsight_rear.active = false
		end
	end
end

CustomizableWeaponry:registerAttachment(att)