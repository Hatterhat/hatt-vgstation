//For lists of words to be used with viruses.

/datum/disease2/effect/opposite/proc/initialize_word_list()
	virus_opposite_word_list = list(
	"to"		=	"from",
	"and"		=	"not",
	"in"		=	"out",
	"that"		=	"this",
	"I"			=	"you",
	"on"		=	"off",
	"with"		=	"without",
	"he"		=	"she",
	"we"		=	"they",
	"his"		=	"her",
	"will"		=	"won't",
	"my"		=	"your",
	"mine"		=	"yours",
	"one"		=	"two",
	"all"		=	"none",
	"would"		=	"wouldn't",
	"there"		=	"here",
	"their"		=	"our",
	"what"		=	"who",
	"up"		=	"down",
	"go"		=	"come",
	"when"		=	"where",
	"no"		=	"yes",
	"him"		=	"her",
	"take"		=	"give",
	"into"		=	"out of",
	"good"		=	"bad",
	"some"		=	"none",
	"could"		=	"couldn't",
	"them"		=	"us",
	"see"		=	"hear",
	"now"		=	"later",
	"look"		=	"listen",
	"over"		=	"under",
	"think"		=	"know",
	"back"		=	"front",
	"after"		=	"before",
	"how"		=	"why",
	"first"		=	"last",
	"new"		=	"old",
	"most"		=	"least",
	"help"		=	"kill",
	"hurt"		=	"heal",
	"left"		=	"right",
	"Medbay"	=	"brig",
	"Science"	=	"Cargo",
	"borg"		=	"human",
	"HoS"		=	"CMO",
	"QM"		=	"captain",
	"HoP"		=	"RD",
	"plasma"	=	"oxygen",
	"n2o"		=	"co2",
	"opposite"	=	"same",
	"Ian"		=	"Runtime",
	"dog"		=	"cat",
	"chaplain"	=	"cultist",
	"rune"		=	"graffiti",
	"hot"		=	"cold",
	"on fire"	=	"freezing",
	"breached"	=	"sealed",
	"open"		=	"close",
	"opened"	=	"closed",
	"bolt"		=	"unbolt",
	"bolted"	=	"unbolted",
	"fore"		=	"aft",
	"port"		=	"starboard",
	"should've"	=	"shouldn't have")

/datum/disease2/effect/piglatin/proc/initialize_word_list()
	virus_piglatin_word_list = list(
	"security"	=	"securitas",
	"science"	=	"scientia",
	"cargo"		=	"navis",
	"command"	=	"mandatum",
	"medbay"	=	"medicamentum bay",
	"of"		=	"de",
	"other"		=	"alius",
	"maint"		=	"sustentationem",
	"maintenance"=	"sustentationem",
	"captain"	=	"dux",
	"warden"	=	"custos",
	"clown"		=	"ioculator",
	"librarian"	=	"bibliothecarius",
	"officer"	=	"praefectus",
	"chef"		=	"archimagirus",
	"chaplain"	=	"capellanus",
	"mime"		=	"pantomimus",
	"botanist"	=	"botanicus",
	"technician"=	"technicus",
	"mechanic"	=	"mechanicus",
	"lawyer"	=	"advocatus",
	"scientist"	=	"physicus",
	"miner"		=	"fosores",
	"IAA"		=	"internis agentis",
	"assistant"	=	"adiutor",
	"detective"	=	"inquisitor",
	"centcomm"	=	"imperium Romanum",
	"bridge"	=	"pontis",
	"call"		=	"vocatus",
	"shuttle"	=	"pectine",
	"traitor"	=	"proditor",
	"dog"		=	"canis",
	"cat"		=	"cattus",
	"bird"		=	"avis",
	"and"		=	"et",
	"it"		=	"est",
	"you"		=	"vos",
	"think"		=	"cogitare",
	"open"		=	"aperta",
	"opened"	=	"aperuit",
	"machine"	=	"machina",
	"fuck"		=	"sexus",
	"that"		=	"quod",
	"with"		=	"cum",
	"this"		=	"hoc",
	"I"			=	"ego",
	"if"		=	"si",
	"first"		=	"primis",
	"than"		=	"quam",
	"then"		= 	"tunc",
	"number"	=	"numerus",
	"we"		=	"wos",
	"are"		=	"sunt",
	"were"		=	"erant",
	"not"		=	"non",
	"from"		=	"e",
	"down"		=	"deorsum",
	"see"		=	"vide",
	"long"		=	"diu",
	"short"		=	"breve",
	"have"		=	"habet",
	"could"		=	"posset",
	"home"		=	"domus",
	"go"		=	"eunt",
	"crew"		=	"cantavit",
	"antag"		=	"adversario",
	"nuke ops"	=	"nuclei operativa",
	"one"		=	"unus",
	"all"		=	"omnis",
	"would"		=	"vtinam",
	"there"		=	"ibi",
	"here"		=	"hic",
	"each"		=	"quisque",
	"their"		=	"eorum",
	"what"		=	"quid est",
	"who"		=	"oms",
	"why"		=	"quare",
	"help"		=	"auxilium",
	"dead"		=	"mortuus",
	"dying"		=	"mori",
	"heal"		=	"sana",
	"healing"	=	"sanitatem",
	"chapel"	=	"sacrarium",
	"new"		=	"novus",
	"old"		=	"vetus",
	"cult"		=	"cultus",
	"girl"		=	"puella",
	"boy"		=	"pupus",
	"water"		=	"aqua",
	"oil"		=	"oleum",
	"wine"		=	"vinum",
	"credits"	=	"argentum",
	"dorms"		=	"dormitorium",
	"loose"		=	"solutam",
	"demon"		=	"daemonium",
	"monkey"	=	"simia",
	"station"	=	"statione",
	"space"		=	"locus",
	"spear"		=	"hasta",
	"sword"		=	"gladius")
