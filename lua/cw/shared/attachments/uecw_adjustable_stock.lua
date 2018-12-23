local att = {}
att.name = "uecw_adjustable_stock" // mainly for the XM8, may or may not work on other weapons
att.displayName = "Adjustable Stock"
att.displayNameShort = "Stock"

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15sturdystock")
	att.description = {[1] = {t = "Adds an adjustable stock to the weapon", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
end

function att:detachFunc()
	if CLIENT then
		if self.StockBone then
			self.CW_VM:ManipulateBonePosition(self.CW_VM:LookupBone(self.StockBone), Vector(0,0,0))
		end
	end
end

local vec = Vector(0, 0, 0)
local data, mdldata
function att:elementRender()
	if self.StockBone then
		data, mdldata = CustomizableWeaponry.sightAdjustment:getCurrentAttachment()
		if mdldata then
			vec.y = mdldata.pos.y
		end
		
		local stockbone = self.vmBones[self.CW_VM:LookupBone(self.StockBone)+1]
		stockbone.overridePos = Vector(0, -vec.y, 0)
	end
end
CustomizableWeaponry:registerAttachment(att)