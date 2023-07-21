local _, L = ...

local LS = CreateFrame("Frame");
local petIsSummoned = false;

local Rusziona = C_PetJournal.GetPetInfoBySpeciesID(3589);
local Belastrasza = C_PetJournal.GetPetInfoBySpeciesID(3590);
local Zhusadormu = C_PetJournal.GetPetInfoBySpeciesID(3598);
local Zalethgos = C_PetJournal.GetPetInfoBySpeciesID(3599);
local Posidriss = C_PetJournal.GetPetInfoBySpeciesID(3601);
local onCooldown = false;

LS.Ruszionaquotes = {

};

LS.Belastraszaquotes = {

};

LS.Zhusadormuquotes = {

};

LS.Zalethgosquotes = {

};

LS.Posidrissquotes = {

};

for i = 1, 50 do
	LS.Ruszionaquotes[i] = L[i]
	LS.Belastraszaquotes[i] = L[i]
	LS.Zhusadormuquotes[i] = L[i]
	LS.Zalethgosquotes[i] = L[i]
	LS.Posidrissquotes[i] = L[i]
end

LS.speciesID = {
	Rusziona,
	Belastrasza,
	Zhusadormu,
	Zalethgos,
	Posidriss,
};

function LS.randomSpeak()
	--#LS.Ruszionaquotes
end;

function LS.petSpeak(petName)
	if petIsSummoned == true then
		local timeStamps = date(C_CVar.GetCVar("showTimestamps"))
		if timeStamps == "none" or nil then
			timeStamps = ""
		end
		local msg = "..."
		msg = LS.Ruszionaquotes[math.random(1, #LS.Ruszionaquotes)]
		local sender = petName
		local info = ChatTypeInfo["MONSTER_WHISPER"]
		local body = CHAT_WHISPER_GET:format(sender) .. msg
		
		return DEFAULT_CHAT_FRAME:AddMessage(timeStamps .. body, info.r, info.g, info.b, info.id)
	end
end;

function LS.checkPet()
	if C_PetJournal.GetSummonedPetGUID() ~= nil then
		petIsSummoned = true
		--customName, name are probably the only 2 fields needed
		local speciesID, customName, level, xp, maxXp, displayID, isFavorite, name, icon, petType, creatureID, sourceText, description, isWild, canBattle, tradable, unique, obtainable = C_PetJournal.GetPetInfoByPetID(C_PetJournal.GetSummonedPetGUID())
		local petName = name
		if customName ~= nil and customName ~= "" then
			petName = customName;
		end
		if onCooldown == false then
			for k, v in pairs(LS.speciesID) do
				if name == v then
					LS.petSpeak(petName);
					onCooldown = true;
				end
			end
		end
		--print(customName)
		--print(name)
	else
		petIsSummoned = false;
	end
	LS.repeatingTimer();
end;

function LS.repeatingTimer()
	local cooldownThing = math.random(300,900); -- 15-30 mins
	C_Timer.After(cooldownThing, LS.checkPet);
	C_Timer.After(cooldownThing, function() onCooldown = false; end)
end;

function LS.onSummonPet(arg1, arg2, arg3)
	--if arg2 == "COMPANION_UPDATE" and arg3 == "CRITTER" then
		--C_Timer.After(5, LS.checkPet);
	--end
	if arg2 == "PLAYER_LOGIN" then
		LS.repeatingTimer();
	end
end;

--LS:RegisterEvent("COMPANION_UPDATE");
LS:RegisterEvent("PLAYER_LOGIN");
LS:SetScript("OnEvent", LS.onSummonPet);