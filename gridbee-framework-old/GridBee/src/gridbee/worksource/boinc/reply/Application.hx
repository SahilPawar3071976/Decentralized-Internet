// This file is part of the GridBee Web Computing Framework
// <http://webcomputing.iit.bme.hu>
// Copyright 2011 Budapest University of Technology and Economics,
// Public Administration's Centre of Information Technology (BME IK)
//
// GridBee is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// GridBee is distributed in the hope that it will be useful
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with GridBee. If not, see <http://www.gnu.org/licenses/>.

package gridbee.worksource.boinc.reply;
import haxe.xml.Fast;

/**
 * @author Henko
 */
class Application 
{
	public var name(default, null) : String;
	public var user_friendly_name(default, null) : String;
	
	// Joined later by name
	public var version(default, default) : AppVersion;

	public function new(node : Fast) 
	{
		if (node.hasNode.name) 					name = 					node.node.name.innerData;
		if (node.hasNode.user_friendly_name) 	user_friendly_name = 	node.node.user_friendly_name.innerData;
	}	
}