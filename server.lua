function entregar_arma()
	if getPlayerMoney(source) >= 30 then
		takePlayerMoney(source,30)
  	giveWeapon(source,24,7,true)
  	outputChatBox("#FFC900Has Obtenido la arma correctamente",source, 0, 0, 0,true) 
  else
  	outputChatBox("#730803No tienes dinero",source,0,0,0,true)
 end
end

addEvent("onClientBotonDeagle",true)
addEventHandler("onClientBotonDeagle",root,entregar_arma)


function entregar_dinero()
if getPlayerMoney(source) >= -500000 then 
	setPlayerMoney(source,200) 
outputChatBox("Se te entrego 200$",source,0,0,0,true)

else
 outputChatBox("No")

 end
end
addEvent("onClientBotonDinero",true)
addEventHandler("onClientBotonDinero",root,entregar_dinero)


function quitar_arma(source)
	takeAllWeapons(source)
	outputChatBox("Armas quitadas")
end
addCommandHandler("quitar",quitar_arma)