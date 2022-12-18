table.insert(Config.scriptsConfig, {

    AdmPConfig = {

		webhook = "", -- Coloque aqui um webhook para gerar todos os registros de prisão e reajustes!

		admPermissions = { "owner.permissao", "admin.permissao", "mod.permissao"},  -- Defina permissões de admin para utilizar os comandos da prisão.

		nivel1 = 3,  -- \
		nivel2 = 6,  --  } Defina quantas punições é necessário para atingir o nível. A punição do nível 3 é banimento automático caso não queira apenas coloque um número bem alto para que um player não o atinja!
		nivel3 = 9,  -- /

		timeNivel1 = 200,  -- Defina qual tempo será acrescentado para o nivel1.
		timeNivel2 = 400,  -- Defina qual tempo será acrescentado para o nivel2.

		addPoliceArrestTime = true, -- Defina como (true) ou desative como (false) para somar a pena caso o player já esteja preso (serve também para a penitenciaria padrão).
		clearInventory = true,  -- Defina como (true) ou desative como (false) para limpar o inventario do player que for preso. OBS: Necessário (eventClearInventory) configurada.
		notDesire = true,  -- Defina como (true) ou desative como (false) para ativar o resarcimento de fome e sede.
		activeHealing = true,  -- Defina como (true) ou desative como (false) para ativar cura para os presos a cada contagem.
		health = 130,  --  Defina a vida que será setada no player caso a opção acima estiver ativa.


		communique = true,  -- Ative com (true) ou desative com (false) os comunicados in-game.
		communiqueColor = {88, 253, 40},  -- Defina a cor das mensagens das prisões.
		communiqueReColor = {14, 171, 255},  -- Defina a cor das mensagens dos reajustes de prisões.
		communiqueBanColor = {255, 0, 0},  -- Defina a cor das mensagens dos banimentos pro nível de punição.

		-- EVENTOS (não mexa se não souber!) OBS: Esses eventos são utilizados pelo script e devem ser alterados caso sejam diferentes na sua base!
		eventSpawn = "vRP:playerSpawn",  -- Cria um evento de spawn que ativa quando o player spawna no servidor.
		eventClearInventory = "clearInventory",  -- Evento para limpar o inventario criado pelo script do próprio inventario.
		eventScriptSound = "vrp_sound:source",  -- Evento para puxar áudio do script vrp_sounds.
		eventSoundName = 'jaildoor',  -- Arquivo do áudio de celas do vrp_sounds.
		eventChatMessage = 'chatMessage',  -- Evento para enviar mensagens no chat.
		eventNotify = "Notify",  -- Evento de notificações na tela.

		-- BANCO DE DADOS (não mexa se não souber!)
		dbTime = "prisaoAdm",  -- Nome da coluna onde ficará o tempo do player preso.
		dbFine = "vRP:multas",  -- Nome da coluna onde fica as multas do player. -- OBS: É necessário que este registros esteja na tebela (vrp_user_data)!
		dbTimePolice = "vRP:prisao",  -- Nome da coluna onde fica o tempo do player preso pela polícia (Prisão normal). -- OBS: É necessário que este registros esteja na tebela (vrp_user_data)!
		dbNivel = "nivelDePunicao",  -- Nome da coluna onde ficará p nível de punição do player.


		cdsEnter = {2048.96,2987.51,-67.3}, -- Coordenada que o player aparecera quando preso online.

		cdsEscape = {2044.92,2981.93,-67.3},  -- Coordenada que o player será levado caso seja pego tentando fugir.

		cdsSpawn = {2059.15,2961.11,-67.3},  -- Coordenada que o player aparecera ao logar com tempo de pena pendente.

		cdsExit = {2050.02,2949.53,47.74},  -- Coordenada que o player quando a pena terminar.

		cdsDistanceEscape = {2055.05,2974.93,-67.3},  -- Coordenada usada para definir o ponto central da distância.

		distanceEscape = 20,  -- distância permitida para perambular sem ser pego tentando escapar.


		clothes = true,  -- Ative com (true) ou desative com (false) para que os prisioneiros fiquem com vestimentas.
		prisonerClothes = {  -- Defina as vestimentas dos prisioneiros.
			["prisoner"] = {
				[1885233650] = {  -- Masculina
					[1] = { 0,0,2 },  -- máscara
					[3] = { 0,0,2 },  -- mãos
					[4] = { 27,2,2 },  -- calça
					[5] = { 0,0,2 },  -- mochila
					[6] = { 34,0,2 },  -- sapato
					[7] = { 0,0,2 },  -- acessórios
					[8] = { 15,0,2 },  -- blusa
					[9] = { 0,0,2 },  -- colete
					[10] = { -1,0,2 },  -- adesivo
					[11] = { 146,7 },  -- jaqueta
					["p0"] = { -1,0 },  -- chapéu
					["p1"] = { -1,0 },  -- óculos
					["p2"] = { -1,0 },  
					["p6"] = { -1,0 },  
					["p7"] = { -1,0 }  
				},
				[-1667301416] = {  -- Feminina
					[1] = { 0,0,2 },  -- máscara
					[3] = { 4,0,2 },  -- mãos
					[4] = { 66,6,2 },  -- calça
					[5] = { 0,0,2 },  -- mochila
					[6] = { 35,0,2 },  -- sapato
					[7] = { -1,0,2 },  -- acessórios
					[8] = { 17,0,2 },  -- blusa
					[9] = { -1,0,2 },  -- colete
					[10] = { -1,0,2 },  -- adesivo
					[11] = { 247,13,2 },  -- jaqueta
					["p0"] = { -1,0 },  -- chapéu
					["p1"] = { -1,0 },  -- óculos
					["p2"] = { -1,0 },
					["p6"] = { -1,0 },
					["p7"] = { -1,0 }
				}
			},
		},
    },

	admPLanguagePTBR = {  -- Você pode alterar cada texto do script por aqui!
		commands = {
			arreste = "prenderadm",
			adjustPrision = "reprenderadm",
			levelView = "vernivelp",
			levelReadjustment = "reajustarnivelp",
		},

		notifys = {
			infoArrestMade = "Prisão efetuada com sucesso.",
			infoScheduledPrison = "Prisão agendada com sucesso.",
			prisonReadjustment = "Tempo de prisão reajustada com sucesso.",
			prisonReadjustment2 = "Seu tempo de prisão foi reajustado para: <b>",
			prisonScheduled = "Prisão agendada com sucesso.",
			infoFinalizedSentence = "Sua sentença terminou, esperamos não ve-lo novamente.",
			armyFoundYou = "O Exército encontrou você tentando escapar.",
			arrestedFor = "Você foi preso por <b>",
			months = "meses</b>.",
			reason = "<b>Motivo:</b>",
			timeStuckInfo = "Ainda vai passar <b>",
			timeStuckInfo2 = "meses</b> preso.",
			showLevel = "O nivel de punição do passaporte escolhido é:",
			showLevel2 = "O nivel de punição do passaporte escolhido agora é de:",
		},

		prompt = {
			promptPassport = "Passaporte do player:",
			promptTime = "Tempo de prisão:",
			fine = "Valor de multa a ser aplicada (deixe 0 para não aplicar!):",
			warningSummary = "Resumo da advertencia:",
			promptWarnings = "Motivo do reajuste:",
			levelReadjustmentValue = "Valor a ser adicionado ou removido (coloque um valor negativo para remover!):",
		},

		webhook = {
			staff = "[Funcionario]:",
			arrestedPassport = "[Prendeu o passaporte]:",
			scheduledTheArrest = "[Agendou a prisão do passaporte]:",
			readjustedThePrison = "[Reajustou o tempo do passaporte]:",
			readjustedTheLevel = "[Reajustou o level de punição do passaporte]:",
			prisonReadjustmentScheduled = "[Agendou o reajuste de tempo do passaporte]:",
			time = "[Tempo preso]:",
			with = "[Com]:",
			before = "[antes]:",
			resume = "[Resumo da advertencia]:",
			fine = "[Valor das multas]:",
			date = "[Data]:",
			hour = "[Hora]:",
			passaport = "[PASSAPORTE]:",
			thePassaport = "O passaporte:",
			timeApply = "Foi aplicado mais:",
			level1Motive = "Motivo: Nivel 1 de punição",
			level2Motive = "Motivo: Nivel 2 de punição",
			level3Ban = "Foi banido da servidor por chegar ao nivel 3 de punição!",
			minutes = "minutos",
			forPassaport = "Para o passaporte:",
			total = "Totalizando em:",
			timeAdd = "ja estava preso e foi contabilizado mais:",
		},

		chat = {
			fontMensage = "[Prefeitura]",
			staff = "Funcionario(A):",
			arrest = "prendeu:",
			scheduledTheArrest = "agendou a prisao do passaporte:",
			readjustedThePrison = "reajustou o tempo de prisão de:",
			prisonReadjustmentScheduled = "agendou o reajuste do tempo de prisão do passaporte:",
			forTime = "por:",
			forReadjustedTime = "para:",
			minutes = "minutos.",
			reason = "motivo:",
			level1Motive = "(Motivo: Nivel 1 de punição)",
			level2Motive = "(Motivo: Nivel 2 de punição)",
			level3BanMotive = "(Motivo: Nivel 3 de punição)",
			level3Ban = "Foi aplicado banimento permanente para:",
			timeAdd = "Foi aplicado mais",
			timeAdd2 = "ja estava preso e foi contabilizado mais",
			minutesFor = "minutos para:",
			total = "totalizando em:",
			theCitzen = "O cidadão:",
		},

		kicks = {
			level3Ban = "Você foi banido da cidade. Motivo: Nivel 3 de punição",
		}
	},

	admPLanguageENUS = {  -- You can change the script texts here!
		commands = {
			arreste = "arreste",
			adjustPrision = "adjustprision",
			levelView = "levelviewp",
			levelReadjustment = "levelreadjustmentp",
		},

		notifys = {
			infoArrestMade = "Successful arrest.",
			infoScheduledPrison = "Prison scheduled successfully.",
			prisonReadjustment = "Prison time successfully readjusted.",
			prisonReadjustment2 = "",
			prisonScheduled = "Prison scheduled successfully.",
			infoFinalizedSentence = "Your sentence is over, we hope we don't see you again.",
			armyFoundYou = "The Army found you trying to escape.",
			arrestedFor = "you were arrested for <b>",
			months = "months</b>.",
			reason = "<b>Reason:</b>",
			timeStuckInfo = "will still pass<b>",
			timeStuckInfo2 = "months</b> in prison",
			showLevel = "The punishment level of the chosen passport is:",
			showLevel2 = "The punishment level of the chosen passport is now:",

		},

		prompt = {
			promptPassport = "Player passport:",
			promptTime = "Prison time:",
			fine = "Amount of fine to be applied (leave 0 to not apply!):",
			warningSummary = "Warning summary:",
			promptWarnings = "Reason for adjustment:",
			levelReadjustmentValue = "Value to add or remove (put a negative value to remove!):",
		},

		webhook = {
			staff = "[Staff]:",
			arrestedPassport = "[Arrested the passport]:",
			scheduledTheArrest = "[Scheduled the passport arrest]:",
			readjustedThePrison = "[readjusted the passport prision time]:",
			readjustedTheLevel = "[readjusted passport punishment level]:",
			prisonReadjustmentScheduled = "[Scheduled the readjustment the passport prision time]:",
			time = "[Time stuck]:",
			with = "[with]:",
			before = "[before]:",
			resume = "[Resume]:",
			fine = "[Amount of fines]:",
			date = "[Date]:",
			hour = "[Hour]:",
			passaport = "[Passaport]:",
			thePassaport = "The passaport",
			timeApply = "Was applied more:",
			level1Motive = "Reason: Level 1 punishment",
			level2Motive = "Reason: Level 2 punishment",
			level3Ban = "Banned from the server for reaching punishment level 3!",
			minutes = "minutes",
			forPassaport = "For the passport:",
			total = "Totaling in:",
			timeAdd = "Was already arrested and was counted more:",
		},

		chat = {
			fontMensage = "[City hall]",
			staff = "Staff:",
			arrest = "Arrested:",
			scheduledTheArrest = "Scheduled passport arrest:",
			readjustedThePrison = "readjusted the prison time of:",
			prisonReadjustmentScheduled = "scheduled the passport prison time readjustment:",
			forTime = "for:",
			forReadjustedTime = "for:",
			minutes = "minutes.",
			reason = "reason:",
			level1Motive = "(Reason: Level 1 punishment)",
			level2Motive = "(Reason: Level 2 punishment)",
			level3BanMotive = "(Reason: Level 3 punishment)",
			level3Ban = "Permanent ban has been applied for:",
			timeAdd = "Was applied more",
			timeAdd2 = "Was already in prison and was accounted for more",
			minutesFor = "minutes to:",
			total = "totaling in:",
			theCitzen = "The Citizen:",
		},

		kicks = {
			level3Ban = "You've been banned from the city. Reason: Level 3 punishment",
		}
	},


})