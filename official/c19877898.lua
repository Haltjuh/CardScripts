--アルティメット・インセクト LV7
local s,id=GetID()
function s.initial_effect(c)
	--atk,def down
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_FIELD)
	e1:SetCode(EFFECT_UPDATE_ATTACK)
	e1:SetRange(LOCATION_MZONE)
	e1:SetTargetRange(0,LOCATION_MZONE)
	e1:SetCondition(s.con)
	e1:SetValue(-700)
	c:RegisterEffect(e1)
	local e2=e1:Clone()
	e2:SetCode(EFFECT_UPDATE_DEFENSE)
	c:RegisterEffect(e2)
end
s.lvupcount=1
s.lvup={34830502}
s.lvdncount=3
s.lvdn={49441499,34088136,34830502}
function s.con(e)
	return e:GetHandler():GetFlagEffect(id)~=0
end