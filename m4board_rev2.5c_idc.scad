/*
    Enclosure definition for M4Board rev 2.5C by Duke (https://www.spinpoint.org/)

    Copyright © 2020 Marcin Jaworski

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
*/

use <pcb_enclosure/pcb_enclosure.scad>;

Assembled = true;
Export = "all"; // ["all", "top", "bottom", "texts"]
AddTexts = true;

/* [Hidden] */
$fn = 30;

m4Dim = [76.6, 49.5, 1.6];
m4CompBB = [[0, 0, 4], [m4Dim.x, m4Dim.y, -5]];
m4Slots = [
    ["left", [m4Dim.y - 12.7, -1.6], [m4Dim.y - 29.1, -2.6]], // antenna
    ["left", [m4Dim.y - 2.1, 4.2], [m4Dim.y - 10.3, -0.2]], // USB
    ["right", [m4Dim.y - 20, -2.3], [m4Dim.y - 31.5, -3.4]], // microSD
    ["front", [2.5, 0], [m4Dim.x - 2.5, 9]], // EXT
    ["top", [1.2, 19], [4.5, 10.9]], // power selection jumper
];
m4MountPosts = [
    [[13.4, m4Dim.y - 2.8], 3],
    [[m4Dim.x - 3.5, m4Dim.y - 3.4], 3],
    [[3.5, 4.9], 3],
    [[m4Dim.x - 3.5, 4.9], 3],
];
m4MountRestrictions = [
];
m4Buttons = [
    [[m4Dim.x - 5.7, m4Dim.y - 9.25], 2.8, -135], // M4board reset
    [[m4Dim.x - 5.7, m4Dim.y - 24.35], 2.8, -135], // CPC reset
    [[7.3, m4Dim.y - 22.45], 2.8, 45], // Hack
];
m4Texts = AddTexts ? [
    [[m4Dim.x / 2, m4Dim.y / 2], "M4", "Fredoka One", 14, "center", "center", 45],
    [m4Buttons[0][0] - [3, -0.4], "\uf021", "FontAwesome", 6, "center", "top", 0], // symbol on M4board reset button
    [m4Buttons[1][0] - [3, -0.4], "\uf0e2", "FontAwesome", 6, "center", "top", 0], // symbol on CPC reset button
    [m4Buttons[2][0] + [3, 0.1], "\uf04c", "FontAwesome", 5, "center", "bottom", 0], // symbol on hack button
] : [];

PCBEnclosure(pcbDimensions=m4Dim, pcbComponentsBB=m4CompBB, mountPosts=m4MountPosts, mountPostsRestrictions=m4MountRestrictions, buttons=m4Buttons, slots=m4Slots, topTexts=m4Texts, textDepth=0.6, buttonDiameter=12, assembled=Assembled, export=Export);
