<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.05" unitdist="inch" unit="inch" style="dots" multiple="1" display="yes" altdistance="0.025" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="91" name="Nets" color="34" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="33" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="32" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="36" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="39" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="39" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="39" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Simulation" color="35" fill="1" visible="no" active="yes"/>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="3" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="5" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="8" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="8" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="23" fill="1" visible="no" active="no"/>
<layer number="30" name="bStop" color="23" fill="1" visible="no" active="no"/>
<layer number="31" name="tCream" color="27" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="24" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="19" fill="3" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="16" fill="6" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="20" fill="1" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="17" fill="1" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="18" fill="1" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="98" name="Guide" color="38" fill="1" visible="no" active="no"/>
<layer number="105" name="Boxes" color="11" fill="10" visible="no" active="no"/>
<layer number="151" name="BoardFrame" color="22" fill="1" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="symbols">
<description>&lt;table width="100%" cellpadding="5" cellspacing="0"  bgcolor="#E0E0E0"&gt;&lt;tr&gt;&lt;td&gt;
&lt;h3&gt;Schematic symbols&lt;/h3&gt;
Frames, graphics and block symbols for quickly drawing schematic sketches, wiring and block diagrams.&lt;br&gt;
&lt;font color=red&gt;&lt;b&gt;Schematics only&lt;/b&gt; - not suited for creating circuit boards&lt;/font&gt;&lt;br&gt;
&lt;author&gt;&lt;b&gt;Update:&lt;/b&gt; 2014-07-23 Andreas Weidner&lt;/author&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;
&lt;br&gt;&lt;br&gt;

&lt;b&gt;Usage hints&lt;/b&gt;&lt;br&gt;
Keep the following information in mind when adding symbols to a schematic:&lt;ul&gt;
&lt;li&gt;Since the devices in this library contain &lt;b&gt;no useful packages&lt;/b&gt;, they should &lt;b&gt;not&lt;/b&gt; be used for creating circuit boards. The rudimentary packages are only included to be able to draw graphics in a schematic that already has a board attached.&lt;/li&gt;
&lt;li&gt;To &lt;b&gt;avoid device name conflicts&lt;/b&gt; with other libraries, you should &lt;b&gt;not&lt;/b&gt; use this library in conjunction with
others when creating circuit boards. Since this library contains devices with names already available in other libraries,
the library browser may otherwise ask you to select the library from which to use a device. E.g., when typing
&lt;b&gt;add r&lt;/b&gt; while using both this library and another one with a device called &lt;b&gt;R&lt;/b&gt; included, the
library browser pops up asking which &lt;b&gt;R&lt;/b&gt; to add. To avoid this constant harassing, switch the usage of this
library off in all projects that do not need it.&lt;/li&gt;&lt;/ul&gt;</description>
<packages>
<package name="DUMMY10">
<description>&lt;b&gt;Dummy package&lt;/b&gt;, &lt;font color=red&gt;not suited for creating boards&lt;/font&gt;</description>
<pad name="1" x="0" y="0" drill="0.0254" diameter="2.54" shape="square" stop="no" thermals="no"/>
<pad name="2" x="2.54" y="0" drill="0.0254" diameter="2.54" shape="square" stop="no" thermals="no"/>
<pad name="3" x="5.08" y="0" drill="0.0254" diameter="2.54" shape="square" stop="no" thermals="no"/>
<pad name="4" x="7.62" y="0" drill="0.0254" diameter="2.54" shape="square" stop="no" thermals="no"/>
<pad name="5" x="10.16" y="0" drill="0.0254" diameter="2.54" shape="square" stop="no" thermals="no"/>
<pad name="6" x="12.7" y="0" drill="0.0254" diameter="2.54" shape="square" stop="no" thermals="no"/>
<pad name="7" x="15.24" y="0" drill="0.0254" diameter="2.54" shape="square" stop="no" thermals="no"/>
<pad name="8" x="17.78" y="0" drill="0.0254" diameter="2.54" shape="square" stop="no" thermals="no"/>
<pad name="9" x="20.32" y="0" drill="0.0254" diameter="2.54" shape="square" stop="no" thermals="no"/>
<pad name="10" x="22.86" y="0" drill="0.0254" diameter="2.54" shape="square" stop="no" thermals="no"/>
</package>
</packages>
<symbols>
<symbol name="VS">
<wire x1="-5.08" y1="0" x2="-3.81" y2="1.27" width="0.254" layer="94"/>
<wire x1="-3.81" y1="1.27" x2="7.62" y2="1.27" width="0.254" layer="94"/>
<wire x1="7.62" y1="1.27" x2="7.62" y2="-1.27" width="0.254" layer="94"/>
<wire x1="7.62" y1="-1.27" x2="-3.81" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-1.27" x2="-5.08" y2="0" width="0.254" layer="94"/>
<text x="-3.81" y="-0.635" size="1.27" layer="96" font="vector">&gt;VALUE</text>
</symbol>
<symbol name="XDSUB9-SHIELD">
<wire x1="4.445" y1="8.89" x2="4.445" y2="-8.255" width="0.4064" layer="94"/>
<wire x1="-1.905" y1="10.795" x2="-1.905" y2="-10.795" width="0.4064" layer="94"/>
<wire x1="3.81" y1="10.16" x2="4.445" y2="8.89" width="0.4064" layer="94" curve="-53.130102"/>
<wire x1="-1.905" y1="10.795" x2="0.635" y2="12.065" width="0.4064" layer="94" curve="-126.869898"/>
<wire x1="0.635" y1="12.065" x2="3.81" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-1.905" y1="-10.795" x2="0.635" y2="-12.065" width="0.4064" layer="94" curve="126.869898"/>
<wire x1="3.81" y1="-9.525" x2="4.445" y2="-8.255" width="0.4064" layer="94" curve="53.130102"/>
<wire x1="0.635" y1="-12.065" x2="3.81" y2="-9.525" width="0.4064" layer="94"/>
<circle x="0" y="10.16" radius="0.635" width="0.1524" layer="94"/>
<circle x="2.54" y="7.62" radius="0.635" width="0.1524" layer="94"/>
<circle x="0" y="5.08" radius="0.635" width="0.1524" layer="94"/>
<circle x="2.54" y="2.54" radius="0.635" width="0.1524" layer="94"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="94"/>
<circle x="2.54" y="-2.54" radius="0.635" width="0.1524" layer="94"/>
<circle x="0" y="-5.08" radius="0.635" width="0.1524" layer="94"/>
<circle x="2.54" y="-7.62" radius="0.635" width="0.1524" layer="94"/>
<circle x="0" y="-10.16" radius="0.635" width="0.1524" layer="94"/>
<circle x="2.54" y="-10.4775" radius="0.508" width="0" layer="94"/>
<text x="-1.905" y="13.335" size="1.524" layer="96" font="vector">&gt;VALUE</text>
<text x="-1.905" y="12.065" size="1.524" layer="95" font="vector" rot="R180">1</text>
<text x="-2.2225" y="-8.255" size="1.524" layer="95" font="vector" rot="R180">5</text>
<text x="5.08" y="-7.3025" size="1.524" layer="95" font="vector">9</text>
<text x="5.08" y="7.9375" size="1.524" layer="95" font="vector">6</text>
<text x="-2.2225" y="6.985" size="1.524" layer="95" font="vector" rot="R180">2</text>
<text x="-2.2225" y="1.905" size="1.524" layer="95" font="vector" rot="R180">3</text>
<text x="-2.2225" y="-3.175" size="1.524" layer="95" font="vector" rot="R180">4</text>
<text x="5.08" y="2.8575" size="1.524" layer="95" font="vector">7</text>
<text x="5.08" y="-2.2225" size="1.524" layer="95" font="vector">8</text>
<pin name="S" x="2.54" y="-12.7" visible="off" length="short" swaplevel="1" rot="R90"/>
<pin name="1" x="0" y="10.16" visible="off" length="point" swaplevel="1"/>
<pin name="2" x="0" y="5.08" visible="off" length="point" swaplevel="1"/>
<pin name="3" x="0" y="0" visible="off" length="point" swaplevel="1"/>
<pin name="4" x="0" y="-5.08" visible="off" length="point" swaplevel="1"/>
<pin name="5" x="0" y="-10.16" visible="off" length="point" swaplevel="1"/>
<pin name="6" x="2.54" y="7.62" visible="off" length="point" swaplevel="1" rot="R180"/>
<pin name="7" x="2.54" y="2.54" visible="off" length="point" swaplevel="1" rot="R180"/>
<pin name="8" x="2.54" y="-2.54" visible="off" length="point" swaplevel="1" rot="R180"/>
<pin name="9" x="2.54" y="-7.62" visible="off" length="point" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VS" prefix="$" uservalue="yes">
<description>&lt;b&gt;Signal I/O arrow&lt;/b&gt;, unidirectional</description>
<gates>
<gate name="A" symbol="VS" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="XDSUB9-SHIELD" prefix="X" uservalue="yes">
<description>&lt;b&gt;D-Sub connector&lt;/b&gt;, 9 pins, with shield</description>
<gates>
<gate name="A" symbol="XDSUB9-SHIELD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DUMMY10">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
<connect gate="A" pin="S" pad="10"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
<attribute name="AUTHOR" value="Sean Leavey"/>
<attribute name="COMPANY" value="Institute for Gravitational Research"/>
<attribute name="DATE" value="2015-01-19"/>
<attribute name="DESCRIPTION" value=""/>
<attribute name="DESCRIPTION2" value=""/>
<attribute name="REVISION" value=""/>
<attribute name="REVISIONAUTHOR1" value="Sean Leavey"/>
<attribute name="REVISIONAUTHOR2" value="Sean Leavey"/>
<attribute name="REVISIONAUTHOR3" value="Sean Leavey"/>
<attribute name="REVISIONAUTHOR4" value="Sean Leavey"/>
<attribute name="REVISIONAUTHOR5" value="Sean Leavey"/>
<attribute name="REVISIONDATE1" value="2015-06-30"/>
<attribute name="REVISIONDATE2" value="2015-07-14"/>
<attribute name="REVISIONDATE3" value="2015-09-19"/>
<attribute name="REVISIONDATE4" value="2015-09-28"/>
<attribute name="REVISIONDATE5" value="2016-04-06"/>
<attribute name="TITLE" value="AUX SUSPENSION"/>
<attribute name="TITLE2" value="WIRING"/>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X8" library="symbols" deviceset="XDSUB9-SHIELD" device=""/>
<part name="$63" library="symbols" deviceset="VS" device="" value="Left +"/>
<part name="$65" library="symbols" deviceset="VS" device="" value="Top +"/>
<part name="$58" library="symbols" deviceset="VS" device="" value="Right +"/>
<part name="X22" library="symbols" deviceset="XDSUB9-SHIELD" device=""/>
<part name="$2" library="symbols" deviceset="VS" device="" value="Bottom +"/>
<part name="$3" library="symbols" deviceset="VS" device="" value="GND"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="312.42" y="231.14" size="1.524" layer="97" font="vector" align="bottom-center">Allectra
female</text>
<text x="330.2" y="238.76" size="2.54" layer="97" font="vector">Auxiliary suspension</text>
<wire x1="323.85" y1="243.84" x2="323.85" y2="199.39" width="0.508" layer="97"/>
<wire x1="323.85" y1="199.39" x2="375.92" y2="199.39" width="0.508" layer="97"/>
<wire x1="375.92" y1="199.39" x2="375.92" y2="243.84" width="0.508" layer="97"/>
<wire x1="375.92" y1="243.84" x2="323.85" y2="243.84" width="0.508" layer="97"/>
<text x="331.47" y="231.14" size="1.524" layer="97" font="vector" align="bottom-center">Allectra
male</text>
<text x="327.66" y="201.93" size="1.524" layer="97" font="vector">Connector clamped to aux suspension</text>
<text x="279.4" y="218.44" size="1.524" layer="97" font="vector" rot="R90" align="center">From auxiliary
octopus cable</text>
</plain>
<instances>
<instance part="X8" gate="A" x="311.15" y="218.44"/>
<instance part="$63" gate="A" x="364.49" y="223.52"/>
<instance part="$65" gate="A" x="364.49" y="228.6"/>
<instance part="$58" gate="A" x="364.49" y="218.44"/>
<instance part="X22" gate="A" x="332.74" y="218.44" rot="MR0"/>
<instance part="$2" gate="A" x="364.49" y="213.36"/>
<instance part="$3" gate="A" x="364.49" y="208.28"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$11" class="0">
<segment>
<wire x1="353.06" y1="228.6" x2="359.41" y2="228.6" width="0.1524" layer="91"/>
<wire x1="353.06" y1="229.87" x2="353.06" y2="228.6" width="0.1524" layer="91"/>
<wire x1="351.79" y1="228.6" x2="353.06" y2="229.87" width="0.1524" layer="91"/>
<wire x1="351.79" y1="229.87" x2="351.79" y2="228.6" width="0.1524" layer="91"/>
<wire x1="350.52" y1="228.6" x2="351.79" y2="229.87" width="0.1524" layer="91"/>
<wire x1="350.52" y1="229.87" x2="350.52" y2="228.6" width="0.1524" layer="91"/>
<wire x1="349.25" y1="228.6" x2="350.52" y2="229.87" width="0.1524" layer="91"/>
<wire x1="349.25" y1="229.87" x2="349.25" y2="228.6" width="0.1524" layer="91"/>
<wire x1="347.98" y1="228.6" x2="349.25" y2="229.87" width="0.1524" layer="91"/>
<wire x1="347.98" y1="229.87" x2="347.98" y2="228.6" width="0.1524" layer="91"/>
<wire x1="346.71" y1="228.6" x2="347.98" y2="229.87" width="0.1524" layer="91"/>
<wire x1="346.71" y1="229.87" x2="346.71" y2="228.6" width="0.1524" layer="91"/>
<wire x1="345.44" y1="228.6" x2="346.71" y2="229.87" width="0.1524" layer="91"/>
<wire x1="345.44" y1="229.87" x2="345.44" y2="228.6" width="0.1524" layer="91"/>
<wire x1="344.17" y1="228.6" x2="345.44" y2="229.87" width="0.1524" layer="91"/>
<wire x1="344.17" y1="229.87" x2="344.17" y2="228.6" width="0.1524" layer="91"/>
<wire x1="342.9" y1="228.6" x2="344.17" y2="229.87" width="0.1524" layer="91"/>
<wire x1="342.9" y1="229.87" x2="342.9" y2="228.6" width="0.1524" layer="91"/>
<wire x1="341.63" y1="228.6" x2="342.9" y2="229.87" width="0.1524" layer="91"/>
<pinref part="X22" gate="A" pin="1"/>
<wire x1="332.74" y1="228.6" x2="341.63" y2="228.6" width="0.1524" layer="91"/>
<junction x="332.74" y="228.6"/>
<pinref part="X8" gate="A" pin="1"/>
<wire x1="311.15" y1="228.6" x2="312.42" y2="228.6" width="0.1524" layer="91"/>
<wire x1="312.42" y1="228.6" x2="332.74" y2="228.6" width="0.1524" layer="91"/>
<wire x1="311.15" y1="228.6" x2="284.48" y2="228.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="X22" gate="A" pin="2"/>
<wire x1="353.06" y1="223.52" x2="359.41" y2="223.52" width="0.1524" layer="91"/>
<wire x1="353.06" y1="224.79" x2="353.06" y2="223.52" width="0.1524" layer="91"/>
<wire x1="351.79" y1="223.52" x2="353.06" y2="224.79" width="0.1524" layer="91"/>
<wire x1="351.79" y1="224.79" x2="351.79" y2="223.52" width="0.1524" layer="91"/>
<wire x1="350.52" y1="223.52" x2="351.79" y2="224.79" width="0.1524" layer="91"/>
<wire x1="350.52" y1="224.79" x2="350.52" y2="223.52" width="0.1524" layer="91"/>
<wire x1="349.25" y1="223.52" x2="350.52" y2="224.79" width="0.1524" layer="91"/>
<wire x1="349.25" y1="224.79" x2="349.25" y2="223.52" width="0.1524" layer="91"/>
<wire x1="347.98" y1="223.52" x2="349.25" y2="224.79" width="0.1524" layer="91"/>
<wire x1="347.98" y1="224.79" x2="347.98" y2="223.52" width="0.1524" layer="91"/>
<wire x1="346.71" y1="223.52" x2="347.98" y2="224.79" width="0.1524" layer="91"/>
<wire x1="346.71" y1="224.79" x2="346.71" y2="223.52" width="0.1524" layer="91"/>
<wire x1="345.44" y1="223.52" x2="346.71" y2="224.79" width="0.1524" layer="91"/>
<wire x1="345.44" y1="224.79" x2="345.44" y2="223.52" width="0.1524" layer="91"/>
<wire x1="344.17" y1="223.52" x2="345.44" y2="224.79" width="0.1524" layer="91"/>
<wire x1="344.17" y1="224.79" x2="344.17" y2="223.52" width="0.1524" layer="91"/>
<wire x1="342.9" y1="223.52" x2="344.17" y2="224.79" width="0.1524" layer="91"/>
<wire x1="342.9" y1="224.79" x2="342.9" y2="223.52" width="0.1524" layer="91"/>
<wire x1="341.63" y1="223.52" x2="342.9" y2="224.79" width="0.1524" layer="91"/>
<wire x1="341.63" y1="223.52" x2="332.74" y2="223.52" width="0.1524" layer="91"/>
<junction x="332.74" y="223.52"/>
<pinref part="X8" gate="A" pin="2"/>
<wire x1="311.15" y1="223.52" x2="332.74" y2="223.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="X22" gate="A" pin="3"/>
<wire x1="353.06" y1="218.44" x2="359.41" y2="218.44" width="0.1524" layer="91"/>
<wire x1="353.06" y1="219.71" x2="353.06" y2="218.44" width="0.1524" layer="91"/>
<wire x1="351.79" y1="218.44" x2="353.06" y2="219.71" width="0.1524" layer="91"/>
<wire x1="351.79" y1="219.71" x2="351.79" y2="218.44" width="0.1524" layer="91"/>
<wire x1="350.52" y1="218.44" x2="351.79" y2="219.71" width="0.1524" layer="91"/>
<wire x1="350.52" y1="219.71" x2="350.52" y2="218.44" width="0.1524" layer="91"/>
<wire x1="349.25" y1="218.44" x2="350.52" y2="219.71" width="0.1524" layer="91"/>
<wire x1="349.25" y1="219.71" x2="349.25" y2="218.44" width="0.1524" layer="91"/>
<wire x1="347.98" y1="218.44" x2="349.25" y2="219.71" width="0.1524" layer="91"/>
<wire x1="347.98" y1="219.71" x2="347.98" y2="218.44" width="0.1524" layer="91"/>
<wire x1="346.71" y1="218.44" x2="347.98" y2="219.71" width="0.1524" layer="91"/>
<wire x1="346.71" y1="219.71" x2="346.71" y2="218.44" width="0.1524" layer="91"/>
<wire x1="345.44" y1="218.44" x2="346.71" y2="219.71" width="0.1524" layer="91"/>
<wire x1="345.44" y1="219.71" x2="345.44" y2="218.44" width="0.1524" layer="91"/>
<wire x1="344.17" y1="218.44" x2="345.44" y2="219.71" width="0.1524" layer="91"/>
<wire x1="344.17" y1="219.71" x2="344.17" y2="218.44" width="0.1524" layer="91"/>
<wire x1="342.9" y1="218.44" x2="344.17" y2="219.71" width="0.1524" layer="91"/>
<wire x1="342.9" y1="219.71" x2="342.9" y2="218.44" width="0.1524" layer="91"/>
<wire x1="341.63" y1="218.44" x2="342.9" y2="219.71" width="0.1524" layer="91"/>
<wire x1="341.63" y1="218.44" x2="332.74" y2="218.44" width="0.1524" layer="91"/>
<junction x="332.74" y="218.44"/>
<pinref part="X8" gate="A" pin="3"/>
<wire x1="311.15" y1="218.44" x2="312.42" y2="218.44" width="0.1524" layer="91"/>
<wire x1="312.42" y1="218.44" x2="332.74" y2="218.44" width="0.1524" layer="91"/>
<wire x1="311.15" y1="218.44" x2="284.48" y2="218.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$65" class="0">
<segment>
<pinref part="X22" gate="A" pin="4"/>
<wire x1="353.06" y1="213.36" x2="359.41" y2="213.36" width="0.1524" layer="91"/>
<wire x1="353.06" y1="214.63" x2="353.06" y2="213.36" width="0.1524" layer="91"/>
<wire x1="351.79" y1="213.36" x2="353.06" y2="214.63" width="0.1524" layer="91"/>
<wire x1="351.79" y1="214.63" x2="351.79" y2="213.36" width="0.1524" layer="91"/>
<wire x1="350.52" y1="213.36" x2="351.79" y2="214.63" width="0.1524" layer="91"/>
<wire x1="350.52" y1="214.63" x2="350.52" y2="213.36" width="0.1524" layer="91"/>
<wire x1="349.25" y1="213.36" x2="350.52" y2="214.63" width="0.1524" layer="91"/>
<wire x1="349.25" y1="214.63" x2="349.25" y2="213.36" width="0.1524" layer="91"/>
<wire x1="347.98" y1="213.36" x2="349.25" y2="214.63" width="0.1524" layer="91"/>
<wire x1="347.98" y1="214.63" x2="347.98" y2="213.36" width="0.1524" layer="91"/>
<wire x1="346.71" y1="213.36" x2="347.98" y2="214.63" width="0.1524" layer="91"/>
<wire x1="346.71" y1="214.63" x2="346.71" y2="213.36" width="0.1524" layer="91"/>
<wire x1="345.44" y1="213.36" x2="346.71" y2="214.63" width="0.1524" layer="91"/>
<wire x1="345.44" y1="214.63" x2="345.44" y2="213.36" width="0.1524" layer="91"/>
<wire x1="344.17" y1="213.36" x2="345.44" y2="214.63" width="0.1524" layer="91"/>
<wire x1="344.17" y1="214.63" x2="344.17" y2="213.36" width="0.1524" layer="91"/>
<wire x1="342.9" y1="213.36" x2="344.17" y2="214.63" width="0.1524" layer="91"/>
<wire x1="342.9" y1="214.63" x2="342.9" y2="213.36" width="0.1524" layer="91"/>
<wire x1="341.63" y1="213.36" x2="342.9" y2="214.63" width="0.1524" layer="91"/>
<wire x1="341.63" y1="213.36" x2="332.74" y2="213.36" width="0.1524" layer="91"/>
<junction x="332.74" y="213.36"/>
<pinref part="X8" gate="A" pin="4"/>
<wire x1="311.15" y1="213.36" x2="312.42" y2="213.36" width="0.1524" layer="91"/>
<wire x1="312.42" y1="213.36" x2="332.74" y2="213.36" width="0.1524" layer="91"/>
<wire x1="311.15" y1="213.36" x2="284.48" y2="213.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$67" class="0">
<segment>
<pinref part="X8" gate="A" pin="5"/>
<pinref part="X22" gate="A" pin="5"/>
<wire x1="359.41" y1="208.28" x2="332.74" y2="208.28" width="0.1524" layer="91"/>
<junction x="332.74" y="208.28"/>
<wire x1="332.74" y1="208.28" x2="312.42" y2="208.28" width="0.1524" layer="91"/>
<wire x1="312.42" y1="208.28" x2="311.15" y2="208.28" width="0.1524" layer="91"/>
<wire x1="311.15" y1="208.28" x2="284.48" y2="208.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<wire x1="309.88" y1="223.52" x2="284.48" y2="223.52" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
