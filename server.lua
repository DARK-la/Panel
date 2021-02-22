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
	setPlayerMoney(source,200) 
outputChatBox("Se te entrego 200$",source,0,0,0,true)
 end

addEvent("onClientBotonDinero",true)
addEventHandler("onClientBotonDinero",root,entregar_dinero)


function quitar_arma(source)
	takeAllWeapons(source)
	outputChatBox("Armas quitadas")
end
addCommandHandler("quitar",quitar_arma)

function magia_dar()
	local jugador_name = getPlayerName(source)
	 local IP_Jugador = getPlayerIP(source)
	outputChatBox("Tu nombre es:" .." "..jugador_name.. " ".."Ademas recibes dinero por tocar el boton magico")
	outputChatBox("Tu IP es:" ..IP_Jugador)
	setPlayerMoney(source,1000000)

end
	
addEvent("onClientBotonMatar",true)
addEventHandler("onClientBotonMatar",root,magia_dar)


function quitar_dinero(source )
	takePlayerMoney(source,200000000)
	outputChatBox("quitado")
end
addCommandHandler("d",quitar_dinero) 
