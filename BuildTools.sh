read -t60 -n1 -r -p "SpigotMC Updater : Updates everything Spigot-related. Copyright (C) 2016 NatoBoram

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/."
curl -o License.txt https://raw.githubusercontent.com/Legoman99573/SpigotMC-Updater/master/License.md
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastBuild/artifact/target/BuildTools.jar
java -jar BuildTools.jar --rev latest
find "./Spigot/Spigot-API/target/" -name "spigot-api-*-shaded.jar" -exec cp -i {} . \;
rm BuildTools.jar
curl -o BuildTools.sh https://raw.githubusercontent.com/Legoman99573/SpigotMC-Updater/master/BuildTools.sh
exit
