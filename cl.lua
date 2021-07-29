ESX = nil
  
local pawalshopmenu = {   
	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_Green}, HeaderColor = {255, 255, 255},Title = 'Superette'},
	Data = { currentMenu = "Bienvenue dans notre superette !", GetPlayerName()},
    Events = { 
		onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
      PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
      local btn = btn.name

      if btn == "~h~~r~🍟 | Nourriture" then
        OpenMenu('nourriture')
    elseif btn == "~h~~r~🥂 | Boisson" then
          OpenMenu('boisson')
    elseif btn == "~h~~r~🔆 | Autres" then
        OpenMenu('autres')
    elseif btn == "                  → ~r~Revenir au menu principal~s~ ← " then
        OpenMenu('Bienvenue dans notre superette !')
    elseif btn == "                           → ~r~Fermer le menu~s~ ← " then
          CloseMenu()
     end
     
   
---------------------------Nourriture--------------------------------    
if btn == "→ ~r~~h~Pain~s~ : [~g~$3~s~]" then  
 TriggerServerEvent('pawal:achat', 3, 'bread', 1)            
 elseif btn == "→ ~r~~h~Chips~s~ : [~g~$7~s~]" then  
 TriggerServerEvent('pawal:achat', 7, 'chips', 1)           
 elseif btn == "→ ~r~~h~Saucisson~s~ : [~g~$10~s~]" then  
 TriggerServerEvent('pawal:achat', 10, 'saucisson', 1)                 
---------------------------Boisson------------------------------------    
elseif btn == "→ ~r~~h~Eau~s~ : [~g~$2~s~]" then  
    TriggerServerEvent('pawal:achat', 2, 'water', 1)              
elseif btn == "→ ~r~~h~Ice Tea~s~ : [~g~$9~s~]" then  
    TriggerServerEvent('pawal:achat', 9, 'icetea', 1)              
elseif btn == "→ ~r~~h~Jus de fruit~s~ : [~g~$7~s~]" then  
    TriggerServerEvent('pawal:achat', 7, 'jusfruit', 1)            
---------------------------Autres-------------------------------------  
elseif btn == "→ ~r~~h~Téléphone~s~ : [~g~$200~s~]" then  
    TriggerServerEvent('pawal:achat', 200, 'tel', 1)          
elseif btn == "→ ~r~~h~Sim~s~ : [~g~$25~s~]" then  
    TriggerServerEvent('pawal:achat', 25, 'sim', 1)
                 end

	        end,     
	},    
	Menu = {  
		["Bienvenue dans notre superette !"] = { 
			b = { 
        {name = "~h~~r~🍟 | Nourriture", ask = "", askX = true},
        {name = "~h~~r~🥂 | Boisson", ask = "", askX = true},  
        {name = "~h~~r~🔆 | Autres", ask = "", askX = true},  
        {name = "                           → ~r~Fermer le menu~s~ ← ", ask = "", askX = true},           
			}  
		},
    ["nourriture"] = { 
			b = { 
        {name = "                                → ~r~Nourriture~s~ ← ", ask = "", askX = true},  
        {name = "→ ~r~~h~Pain~s~ : [~g~$3~s~]", ask = "", askX = true},    
        {name = "→ ~r~~h~Chips~s~ : [~g~$7~s~]", ask = "", askX = true},   
        {name = "→ ~r~~h~Saucisson~s~ : [~g~$10~s~]", ask = "", askX = true}, 
        {name = "                  → ~r~Revenir au menu principal~s~ ← ", ask = "", askX = true},       
			}  
		},
    ["boisson"] = { 
			b = { 
        {name = "                                 → ~r~Boisson~s~ ← ", ask = "", askX = true},  
        {name = "→ ~r~~h~Eau~s~ : [~g~$2~s~]", ask = "", askX = true}, 
        {name = "→ ~r~~h~Ice Tea~s~ : [~g~$9~s~]", ask = "", askX = true},  
        {name = "→ ~r~~h~Jus de fruit~s~ : [~g~$7~s~]", ask = "", askX = true},   
        {name = "                  → ~r~Revenir au menu principal~s~ ← ", ask = "", askX = true},       
			}  
		},
        ["autres"] = { 
			b = { 
        {name = "                                → ~r~Autres~s~ ← ", ask = "", askX = true},  
        {name = "→ ~r~~h~Téléphone~s~ : [~g~$200~s~]", ask = "", askX = true},     
        {name = "→ ~r~~h~Sim~s~ : [~g~$25~s~]", ask = "", askX = true},   
        {name = "                  → ~r~Revenir au menu principal~s~ ← ", ask = "", askX = true},  
			}  
		}

	}
}    


local pawalshop = {
  {x= 25.951, y= -1346.872, z= 28.51, },
  {x= -707.41, y= -914.04, z = 18.23, },
  {x= 1135.93, y= -982.07, z = 45.43, },
  {x= 1163.16, y= -323.71, z = 68.22, },
  {x= 374.54, y= 326.69, z = 102.58, },
  {x= 2557.3, y= 382.11, z = 107.63, },
  {x= -3039.85, y= 585.99, z = 6.92, },
  {x= -3241.91, y= 1001.42, z = 11.84, },
  {x= 547.65, y= 2670.88, z = 41.17, },
  {x= 1961.41, y= 3740.89, z = 31.36, },
  {x= 2679.02, y= 3280.67, z = 54.25, },
  {x= 1729.17, y= 6414.54, z = 34.05, },
  {x= -1223.65, y= -907.05, z = 11.34, },
  {x= -1487.17, y= -379.83, z = 39.17, },
  {x= -2968.41, y= 390.05, z = 14.05, },
  {x= 1166.41, y= 2709.01, z = 37.17, },
  {x= -48.52, y= -1757.29, z = 28.44, },
  {x= -1820.86, y= 792.52, z = 138.13, },
  {x= 1698.44, y= 4924.39, z = 41.07, }
}

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0) 
      for k in pairs(pawalshop) do
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pawalshop[k].x, pawalshop[k].y, pawalshop[k].z)
          DrawMarker(6, pawalshop[k].x, pawalshop[k].y, pawalshop[k].z, 0.0, 0.0, 0.0, -90.0, 0.0, 0.0, 0.9, 0.9, 0.9, 255, 0, 0, 150, 0, 1, 2, 0, nil, nil, 0)
          if dist <= 1.1 then 
              ESX.ShowHelpNotification("Appuyez sur [~r~E~s~] pour accedez à la ~r~~h~superette")
              if IsControlJustPressed(1,38) then 			
               CreateMenu(pawalshopmenu) 
               ESX.ShowAdvancedNotification('Superette', '~h~~g~Notification', "Vendeur : Voici tout notre ~h~~g~stock disponible !", 'CHAR_BEWLIFE', 7)   
                  end
              end
          end
      end
  end)

  Citizen.CreateThread(function()

    for k in pairs(pawalshop) do

	local blip = AddBlipForCoord(pawalshop[k].x, pawalshop[k].y, pawalshop[k].z)

	SetBlipSprite(blip, 59)
	SetBlipColour(blip, 2)
	SetBlipScale(blip, 0.6)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Superette")
    EndTextCommandSetBlipName(blip)
    end
end)