ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('pawal:achat')
AddEventHandler('pawal:achat', function(price, item, nombre) 
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getMoney() >= price then
	xPlayer.removeMoney(price)
    	xPlayer.addInventoryItem(item, nombre) 
        TriggerClientEvent('esx:showNotification', source, "Merci de votre ~h~~g~Achats !", "", 1)
     else 
         TriggerClientEvent('esx:showNotification', source, "Pas assez ~h~~r~d'argent sur vous")    
        end
end)  

  