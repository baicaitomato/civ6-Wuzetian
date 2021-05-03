-- wuzetianfate_Weiren
-- Author: sb
-- DateCreated: 5/26/2020 1:53:39 AM
--------------------------------------------------------------
function OnUnitGreatPersonActivated(unitOwner:number, unitID:number, greatPersonClassID:number, greatPersonIndividualID:number)
	if (unitOwner == Game.GetLocalObserver() or Game.GetLocalObserver() == PlayerTypes.OBSERVER) then
		local pPlayer = Players[unitOwner];
		local pPlayerConfig = PlayerConfigurations[unitOwner];
		if (pPlayer ~= nil) and (pPlayerConfig:GetLeaderTypeName() == "LEADER_WUZETIANFATE") then
			local playerTechs = pPlayer:GetTechs();
			if (playerTechs:GetResearchingTech() ~= -1) then
				playerTechs:ChangeCurrentResearchProgress(playerTechs:GetResearchCost(playerTechs:GetResearchingTech()) * 0.2);
			end
		end
	end
end
Events.UnitGreatPersonActivated.Add(OnUnitGreatPersonActivated);