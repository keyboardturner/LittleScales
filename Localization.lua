local LittleScales, L = ...; -- Let's use the private table passed to every .lua 

local function defaultFunc(L, key)
 -- If this function was called, we have no localization for this key.
 -- We could complain loudly to allow localizers to see the error of their ways, 
 -- but, for now, just return the key as its own localization. This allows you to—avoid writing the default localization out explicitly.
 return key;
end
setmetatable(L, {__index=defaultFunc});

local LOCALE = GetLocale()

if LOCALE == "enUS" then
	-- The EU English game client also
	-- uses the US English locale code.
	L[1] = "Hello!"
	L[2] = "Hi there!"
	L[3] = "Bingus!"
	L[4] = "Look, look! I can fly higher than that birdie!"
	L[5] = "Hey, do you like shiny things? I do! Shiny scales are the best!"
	L[6] = "I'm small, but I'm brave! No squirrel can scare me!"
	L[7] = "Do you know any good bedtime stories? I like the ones with princesses and magic!"
	L[8] = "Hey, let's race to that big tree over there! Ready, set, go!"
	L[9] = "I found a shiny pebble!"
	L[10] = "I'm practicing my roars! Raaaawr! What do you think?"
	L[11] = "Do you think I'll grow up to be a big, scary dragon one day? Maybe not too scary though!"
	L[12] = "Hey, watch me catch my tail with my claws!"
	L[13] = "You're my best friend! Pinky promise we'll stay friends forever?"
	L[14] = "Did you hear that? I think there's something hiding over there..."
	L[15] = "I like flying, but I also like naps. Can we take a nap soon?"
	L[16] = "I don't like thunderstorms. Can we stay indoors if that happens?"
	L[17] = "Do you know any dragon games? We should invent one!"
	L[18] = "I wish I could swim like fishies do. They're so graceful!"
	L[19] = "Wrathion must be really strong! I hope I can be strong like him when I grow up."
	L[20] = "I wonder if Merithra would teach me how to have dreams while flying. That sounds fun!"
	L[21] = "I wish I could meet Nozdormu and ask him to tell me stories about the past!"
	L[22] = "I saw Nefarian in a book! He looked scary, but I bet he's just misunderstood."
	L[23] = "I heard about Chromie! Time-traveling sound really adventurous!"
	L[24] = "I wonder what it's like to be a dragon in disguise."
	L[25] = "You don't think Galakrond can ever come back... right?"
	L[26] = "I think we make the best team ever! We can do anything together!"
	L[27] = "Do you think I'll grow up to be a really big dragon one day? Like, super big!"
	L[28] = "I found a pretty flower! Can we put it in your head?"
	L[29] = "Let's have a picnic under that big tree!"
	L[30] = "One of those clouds looks like a fluffy sheep!"
	L[31] = "I'm glad we're friends! You're the best!"
	L[32] = "I tried to roar like a big dragon, but it came out as a squeak."
	L[33] = "Can we visit the tallest mountain? I want to see the world from up there!"
	L[34] = "Do you think Ashenvale has magical talking trees? I'd love to visit and chat with them someday!"
	L[35] = "I heard that Westfall used to be a bountiful farm region. Let's go there and see if we can help them with their crops!"
	L[36] = "Howling Fjord must be so chilly and exciting! I want to see the icebergs and slide on the ice!"
	L[37] = "I heard there are ancient spirits in the Jade Forest. I'd love to learn their stories and make friends with them! Oh, and we can visit Kyrigosa!"
	L[38] = "Nagrand is full of floating islands and giant mushrooms! Can we go there and explore its wonders?"
	L[39] = "You know, Stranglethorn Vale is home to pirates and hidden treasures! Let's be brave and seek out the loot!"
	L[40] = "Dragonblight is where dragons go to rest forever. I hope we can visit and pay our respects to them."
	L[41] = "Hey, have you seen the mushrooms in Zangarmarsh? I'd love to see them up close!"
	L[42] = "Deepholm is said to be the heart of Azeroth. I wonder if we can feel its heartbeat when we visit!"
	L[43] = "Uldum is a desert with hidden Titan secrets. Let's go there and solve ancient mysteries together!"
	L[44] = "I want to visit the Azure Span and sing with the furbolgs! I heard they have a beautiful choir."
	L[45] = "Have you been to the Valley of the Four Winds? They say it's a land of delicious food and friendly farmers!"
	L[46] = "I wish we could soar through Storm Peaks. The mountains there are really tall!"
	L[47] = "Let's journey to Twilight Highlands! I want to race the Wildhammer gryphons!"
	L[48] = "I'd love to see the ancient trees in the Azure Span and hear their stories from long ago."
	L[49] = "I heard that Ulduar is where the Titans once fought against Old Gods. You don't think they can ever come back, right?"
	L[50] = "You know, I read about the Krasarang Wilds and its beautiful beach. I want to build sandcastles there!"






return end

if LOCALE == "esES" or LOCALE == "esMX" then
	-- Spanish translations go here
	
return end

if LOCALE == "deDE" then
	-- German translations go here
	
return end

if LOCALE == "frFR" then
	-- French translations go here
	
return end

if LOCALE == "itIT" then
	-- Italian translations go here
	
return end

if LOCALE == "ptBR" then
	-- Brazilian Portuguese translations go here
	

	-- Note that the EU Portuguese WoW client also
	-- uses the Brazilian Portuguese locale code.
return end

if LOCALE == "ruRU" then
	-- Russian translations go here
	
return end

if LOCALE == "koKR" then
	-- Korean translations go here
	
return end

if LOCALE == "zhCN" then
	-- Simplified Chinese translations go here
	
return end

if LOCALE == "zhTW" then
	-- Traditional Chinese translations go here
	
return end
