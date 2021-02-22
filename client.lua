
function crearVentana ()
local screenW, screenH = guiGetScreenSize()
ventana1 = guiCreateWindow((screenW - 432) / 2, (screenH - 341) / 2, 432, 341, "", false)
guiWindowSetSizable(ventana1, false)

botoncerrar = guiCreateButton(361, 290, 61, 36, "Cerrar", false, ventana1)
gato1 = guiCreateStaticImage(150, 20, 136, 142, ":GUI-EDITOR/images/gato.png", false, ventana1)
botondeagle = guiCreateButton(11, 200, 107, 50, "Deagle Costo 30 $", false, ventana1)
botondinero = guiCreateButton(304, 189, 113, 47, "Dinero, tomar 200$", false, ventana1)
buttonmagico = guiCreateButton(151, 277, 112, 54, "Boton Magico", false, ventana1)

showCursor(true)

addEventHandler("onClientGUIClick",botoncerrar,cerrarVentana,false)
addEventHandler("onClientGUIClick",botondeagle,entregar_arma,false)
addEventHandler("onClientGUIClick",botondinero,entregar_dinero,false)
addEventHandler("onClientGUIClick",buttonmagico,magia_dar,false)

end
addCommandHandler("a",crearVentana)

function  cerrarVentana()
   guiSetVisible(ventana1,false)
   showCursor(false)
end
addCommandHandler("q",cerrarVentana)


function entregar_arma( ... )
	triggerServerEvent("onClientBotonDeagle",localPlayer)
end

function entregar_dinero( ... )
	triggerServerEvent("onClientBotonDinero",localPlayer)
end

function  magia_dar ( ... )
	triggerServerEvent("onClientBotonMatar",localPlayer)
	end


