<#--
 # MCreator (https://mcreator.net/)
 # Copyright (C) 2012-2020, Pylo
 # Copyright (C) 2020-2023, Pylo, opensource contributors
 # 
 # This program is free software: you can redistribute it and/or modify
 # it under the terms of the GNU General Public License as published by
 # the Free Software Foundation, either version 3 of the License, or
 # (at your option) any later version.
 # 
 # This program is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
 # 
 # You should have received a copy of the GNU General Public License
 # along with this program.  If not, see <https://www.gnu.org/licenses/>.
 # 
 # Additional permission for code generator templates (*.ftl files)
 # 
 # As a special exception, you may create a larger work that contains part or 
 # all of the MCreator code generator templates (*.ftl files) and distribute 
 # that work under terms of your choice, so long as that work isn't itself a 
 # template for code generation. Alternatively, if you modify or redistribute 
 # the template itself, you may (at your option) remove this special exception, 
 # which will cause the template and the resulting code generator output files 
 # to be licensed under the GNU General Public License without this special 
 # exception.
-->

<#-- @formatter:off -->
{
    "code": "${registryname}",
	"behaviors": [ { "name": "HorizontalOrientable" } ],
	"variantgroups": [
    {
      "code": "side",
      "loadFromProperties": "abstract/horizontalorientation"
    }
	],
	creativeinventoryByType: {
		"*-south": {general: ["*"]}
	},
	"shape": { "base": "game:block/basic/cube",
	"rotateYByType": {
      "*-north": 0,
      "*-east": 270,
      "*-south": 180,
      "*-west": 90
     }
	},
	"blockmaterial": "Stone",
	"drawtype": "Cube",
	"texturesByType": {
		"*-north": {
			"all": { "base": "block/${data.texture}" },
			"down": {"base": "block/${data.texture}"},
			"up": {"base": "block/${data.textureTop?has_content?then(data.textureTop, data.texture)}"},
			"north": {"base": "block/${data.textureFront?has_content?then(data.textureBack, data.texture)}"},
			"west": {"base": "block/${data.textureRight?has_content?then(data.textureRight, data.texture)}"},
			"south": {"base": "block/${data.textureBack?has_content?then(data.textureFront, data.texture)}"},
			"east": {"base": "block/${data.textureLeft?has_content?then(data.textureLeft, data.texture)}"}
		},
		"*-east": {
			"all": { "base": "block/${data.texture}" },
			"down": {"base": "block/${data.texture}", rotation: 270 },
			"up": {"base": "block/${data.textureTop?has_content?then(data.textureTop, data.texture)}", rotation: 270 },
			"north": {"base": "block/${data.textureFront?has_content?then(data.textureRight, data.texture)}"},
			"west": {"base": "block/${data.textureRight?has_content?then(data.textureFront, data.texture)}"},
			"south": {"base": "block/${data.textureBack?has_content?then(data.textureLeft, data.texture)}"},
			"east": {"base": "block/${data.textureLeft?has_content?then(data.textureBack, data.texture)}"}
		},
		"*-south": {
			"all": { "base": "block/${data.texture}" },
			"down": {"base": "block/${data.texture}", rotation: 180 },
			"up": {"base": "block/${data.textureTop?has_content?then(data.textureTop, data.texture)}", rotation: 180 },
			"north": {"base": "block/${data.textureFront?has_content?then(data.textureFront, data.texture)}"},
			"west": {"base": "block/${data.textureRight?has_content?then(data.textureLeft, data.texture)}"},
			"south": {"base": "block/${data.textureBack?has_content?then(data.textureBack, data.texture)}"},
			"east": {"base": "block/${data.textureLeft?has_content?then(data.textureRight, data.texture)}"}
		},
		"*-west": {
			"all": { "base": "block/${data.texture}" },
			"down": {"base": "block/${data.texture}", rotation: 90 },
			"up": {"base": "block/${data.textureTop?has_content?then(data.textureTop, data.texture)}", rotation: 90 },
			"north": {"base": "block/${data.textureFront?has_content?then(data.textureLeft, data.texture)}"},
			"west": {"base": "block/${data.textureRight?has_content?then(data.textureBack, data.texture)}"},
			"south": {"base": "block/${data.textureBack?has_content?then(data.textureRight, data.texture)}"},
			"east": {"base": "block/${data.textureLeft?has_content?then(data.textureFront, data.texture)}"}
		}
	},
	"resistance": 3.5,
	"sounds": {
		"place": "game:block/anvil",
		"walk": "game:walk/stone"
	}
}
<#-- @formatter:on -->