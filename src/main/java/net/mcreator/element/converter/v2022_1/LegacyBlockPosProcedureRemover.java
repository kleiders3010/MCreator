/*
 * MCreator (https://mcreator.net/)
 * Copyright (C) 2012-2020, Pylo
 * Copyright (C) 2020-2023, Pylo, opensource contributors
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

package net.mcreator.element.converter.v2022_1;

import net.mcreator.element.converter.ProcedureConverter;
import net.mcreator.element.types.Procedure;

public class LegacyBlockPosProcedureRemover extends ProcedureConverter {

	@Override public int getVersionConvertingTo() {
		return 26;
	}

	@Override protected String fixXML(Procedure procedure, String xml) {
		return xml.replace("type=\"block_pos_x\"", "type=\"coord_x\"")
				.replace("type=\"block_pos_y\"", "type=\"coord_y\"")
				.replace("type=\"block_pos_z\"", "type=\"coord_z\"");
	}
}
