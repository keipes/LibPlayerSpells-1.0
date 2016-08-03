--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013-2014 Adirelle (adirelle@gmail.com)

This file is part of LibPlayerSpells-1.0.

LibPlayerSpells-1.0 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

LibPlayerSpells-1.0 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with LibPlayerSpells-1.0.  If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("PALADIN", 70000, 3, {
	COOLDOWN = {
		  20271, -- Judgement
		  31935, -- Avenger's Shield -- NOTE: non-player only INTERRUPT
		  35395, -- Crusader Strike
		  53595, -- Hammer of the Righteous
		 184575, -- Blade of Justice
		 198034, -- Divine Hammer
		 210220, -- Holy Wrath
		[ 96231] = "INTERRUPT", -- Rebuke
		DISPEL = {
			HELPFUL = {
				213644, -- Cleanse Toxins
			},
		},
		AURA = {
			HELPFUL = {
				  1044, -- Blessing of Freedom
				[25771] = "INVERT_AURA", -- Forbearance
				SURVIVAL = {
					1022, -- Blessing of Protection
					6940, -- Blessing of Sacrifice
				},
			},
			HARMFUL = {
				 62124, -- Hand of Reckoning (taunt)
				183218, -- Hand of Hindrance (slow)
				197277, -- Judgement
				202270, -- Blade of Wrath
				204242, -- Consecration
				205273, -- Wake of Ashes (Retribution artifact) (slow)
				213757, -- Execution Sentence
				CROWD_CTL = {
					   853, -- Hammer of Justice (stun)
					 20066, -- Repentance (incapacitate)
					105421, -- Blinding Light (disorient)
					205290, -- Wake of Ashes (Retribution artifact) (stun)
				},
			},
			PERSONAL = {
				188370, -- Consecration (Protection)
				217020, -- Zeal -- NOTE: the buff charges overlay the spell charges
				221883, -- Divine Steed
				BURST = {
					 31884, -- Avenging Wrath
					224668, -- Crusade
				},
				SURVIVAL = {
					   642, -- Divine Shield
					 31850, -- Ardent Defender
					 86659, -- Guardian of Ancient Kings
					132403, -- Shield of the Righteous
					184662, -- Shield of Vengeance
					205191, -- Eye for an Eye
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			203528, -- Greater Blessing of Might
			203538, -- Greater Blessing of Kings
			203539, -- Greater Blessing of Might
		},
		PERSONAL = {
			202273, -- Seal of Light
			223819, -- Divine Purpose
		},
	},
}, {
	-- map aura to provider(s)
	[ 25771] = { -- Forbearance
		 633, -- Lay on Hands
		 642, -- Divine Shield
		1022, -- Blessing of Protection
	},
	[105421] = 115750, -- Blinding Light (disorient)
	[132403] = 53600, -- Shield of the Righteous
	[188370] = 26573, -- Consecration (Protection)
	[197277] = 20271, -- Judgement
	[204242] = { -- Consecration
		 26573, -- Consecration (Protection)
		205228, -- Consecration (Retribution)
	},
	[205290] = 205273, -- Wake of Ashes (Retribution artifact) (stun)
	[221883] = { -- Divine Steed
		190784, -- Divine Steed (Protection)
		205656, -- Divine Steed (Retribution)
	},
	[223819] = 223817, -- Divine Purpose
}, {
	-- map aura to modified spell(s)
	[223819] = { -- Divine Purpose
		 53385, -- Divine Storm
		 85256, -- Templar's Verdict
		202273, -- Seal of Light
		210191, -- Word of Glory
		213757, -- Execution Sentence
		215661, -- Judicar's Vengeance
	},
})
