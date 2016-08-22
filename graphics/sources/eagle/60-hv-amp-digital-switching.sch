<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.025" altunitdist="inch" altunit="inch"/>
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
<package name="DUMMY2">
<description>&lt;b&gt;Dummy package&lt;/b&gt;, &lt;font color=red&gt;not suited for creating boards&lt;/font&gt;</description>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.4064" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.4064" layer="21"/>
<pad name="1" x="0" y="0" drill="0.0254" diameter="2.54" shape="square" stop="no" thermals="no"/>
<pad name="2" x="2.54" y="0" drill="0.0254" diameter="2.54" shape="square" stop="no" thermals="no"/>
</package>
<package name="DUMMY1">
<description>&lt;b&gt;Dummy package&lt;/b&gt;, &lt;font color=red&gt;not suited for creating boards&lt;/font&gt;</description>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.4064" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.4064" layer="21"/>
<pad name="1" x="0" y="0" drill="0.0254" diameter="2.54" shape="square" stop="no" thermals="no"/>
</package>
</packages>
<symbols>
<symbol name="R">
<wire x1="-5.08" y1="0" x2="-3.175" y2="0" width="0.1524" layer="94"/>
<wire x1="3.175" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="-3.175" y1="-1.27" x2="-3.175" y2="0" width="0.4064" layer="94"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="1.27" width="0.4064" layer="94"/>
<wire x1="-3.175" y1="1.27" x2="3.175" y2="1.27" width="0.4064" layer="94"/>
<wire x1="3.175" y1="1.27" x2="3.175" y2="-1.27" width="0.4064" layer="94"/>
<wire x1="3.175" y1="-1.27" x2="-3.175" y2="-1.27" width="0.4064" layer="94"/>
<text x="-2.54" y="-0.7937" size="1.524" layer="96" font="vector">&gt;VALUE</text>
<pin name="N$DUMMY@1" x="-5.08" y="0" visible="off" length="point" swaplevel="1"/>
<pin name="N$DUMMY@2" x="5.08" y="0" visible="off" length="point" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="V+">
<wire x1="0" y1="3.175" x2="0" y2="1.905" width="0.1524" layer="94"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="0" width="0.1524" layer="94"/>
<circle x="0" y="2.54" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="4.445" size="1.524" layer="96" font="vector">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="off" length="point" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" prefix="R" uservalue="yes">
<description>&lt;b&gt;Resistor&lt;/b&gt;, European symbol</description>
<gates>
<gate name="A" symbol="R" x="-5.08" y="0"/>
</gates>
<devices>
<device name="" package="DUMMY2">
<connects>
<connect gate="A" pin="N$DUMMY@1" pad="1"/>
<connect gate="A" pin="N$DUMMY@2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="V+" prefix="X" uservalue="yes">
<description>&lt;b&gt;Positive voltage supply&lt;/b&gt; symbol</description>
<gates>
<gate name="A" symbol="V+" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DUMMY1">
<connects>
<connect gate="A" pin="1" pad="1"/>
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
<library name="digitals">
<description>&lt;table width="100%" cellpadding="5" cellspacing="0"  bgcolor="#E0E0E0"&gt;&lt;tr&gt;&lt;td&gt;
&lt;h3&gt;Digital ICs&lt;/h3&gt;
Digital gates, counters, multiplexers, isolators, PLDs, processors, ...&lt;br&gt;
in TTL, CMOS, high-speed, ...&lt;br&gt;
&lt;author&gt;&lt;b&gt;Update:&lt;/b&gt; 2014-08-08 Andreas Weidner&lt;/author&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;
&lt;br&gt;&lt;br&gt;

&lt;b&gt;IC technologies&lt;/b&gt;&lt;br&gt;
Most ICs are offered in different technologies, e.g., TTL or CMOS, which can not be
seen in the left part of the library browser. The asterisk shown there indicates that the
IC is available in one of the following technologies (note that not all technologies are
supported by all ICs):&lt;p&gt;
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;(none)&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;for 4xxx devices: Standard CMOS&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Standard TTL&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74AC&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Advanced CMOS&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74ACT&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Advanced CMOS (TTL threshold)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74AHC&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Advanced high-speed CMOS&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74AHCT&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Advanced high-speed CMOS (TTL threshold)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74ALS&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Advanced low-power Schottky&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74AS&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Advanced Schottky&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74C&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Standard CMOS&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74HC&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;High-speed CMOS&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74HCT&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;High-speed CMOS (TTL threshold)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74L&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Low power TTL&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74LS&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Low-power Schottky&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74S&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Schottky&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;IC suffixes&lt;/b&gt;&lt;br&gt;
Most ICs offer different suffixes to directly specify the package type. In general, these are
&lt;b&gt;not&lt;/b&gt; the manufacturer's suffixes (they vary greatly), but one of the following (note that not all ICs or technologies offer all types of packages):&lt;p&gt;
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;(none)&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Default IC package (currently DIP with long pads, if available)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;N&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;DIP package with normal pads (easily solderable)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;L&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;DIP package with long pads (easily solderable, through-pin-routing possible)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;R&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;DIP package with reduced pads (small, through-pin-routing possible)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;S&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;SMD package&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;IC examples&lt;/b&gt;&lt;br&gt;
The following examples show devices that can be inserted into EAGLE schematics using
the &lt;b&gt;add&lt;/b&gt; command:&lt;p&gt; 
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;7400&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Standard TTL NAND gate in default package (currently DIP-14 with long pads)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;4017N&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Standard CMOS counter in DIP-16 package with normal pads&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74LS32R&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Low-power Schottky OR gate in DIP-14 package with reduced pads&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;74HC245S&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;High-speed CMOS transceiver in SO-20 SMD package&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;Board layers&lt;/b&gt;&lt;br&gt;
The board packages make special use of the following layers:&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td width="1%"&gt;&lt;tt&gt;tDocu,&lt;br&gt;&amp;nbsp;&amp;nbsp;tNames,&lt;br&gt;&amp;nbsp;&amp;nbsp;tValues&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Placeplan including device names and values for printed documentation. Should
    &lt;b&gt;not&lt;/b&gt; be used for the board imprint due to complexity. Names and values occupy
    the &lt;b&gt;same&lt;/b&gt; board space, so two separate printouts are advisable&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;tPlace&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Less sophisticated, but concise placeplan &lt;b&gt;including&lt;/b&gt; device names and values for the board imprint (&lt;b&gt;no&lt;/b&gt; other layers should be used for the print)&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;</description>
<packages>
<package name="DIP14N">
<description>&lt;b&gt;DIP-14&lt;/b&gt;&lt;br&gt;
IC package, 14 pins, 0.3" width</description>
<wire x1="8.89" y1="2.54" x2="8.89" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="8.89" y1="-2.54" x2="7.62" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="7.62" y1="-2.54" x2="5.08" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="5.08" y1="-2.54" x2="2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="-5.08" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="-2.54" x2="-7.62" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="-2.54" x2="-8.89" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="-2.54" x2="-8.89" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="-1.27" x2="-8.89" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="1.27" x2="-8.89" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="1.27" x2="-8.89" y2="-1.27" width="0.254" layer="51" curve="-180"/>
<wire x1="-7.62" y1="-3.81" x2="-7.62" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="-3.81" x2="-5.08" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.81" x2="-2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="0" y1="-3.81" x2="0" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-3.81" x2="2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="5.08" y1="-3.81" x2="5.08" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="7.62" y1="-3.81" x2="7.62" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="2.54" x2="-7.62" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="2.54" x2="-5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="2.54" x2="-2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="2.54" x2="0" y2="2.54" width="0.4064" layer="51"/>
<wire x1="0" y1="2.54" x2="2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="2.54" x2="5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="5.08" y1="2.54" x2="7.62" y2="2.54" width="0.4064" layer="51"/>
<wire x1="7.62" y1="2.54" x2="8.89" y2="2.54" width="0.4064" layer="51"/>
<wire x1="7.62" y1="3.81" x2="7.62" y2="2.54" width="0.1524" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="2.54" width="0.1524" layer="51"/>
<wire x1="2.54" y1="3.81" x2="2.54" y2="2.54" width="0.1524" layer="51"/>
<wire x1="0" y1="3.81" x2="0" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="3.81" x2="-2.54" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="3.81" x2="-5.08" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="3.81" x2="-7.62" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-8.4138" y1="2.2225" x2="8.4138" y2="2.2225" width="0.254" layer="21"/>
<wire x1="8.4138" y1="2.2225" x2="8.4138" y2="-2.2225" width="0.254" layer="21"/>
<wire x1="8.4138" y1="-2.2225" x2="-8.4138" y2="-2.2225" width="0.254" layer="21"/>
<wire x1="-8.4138" y1="-2.2225" x2="-8.4138" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-8.4138" y1="0.635" x2="-8.4138" y2="2.2225" width="0.254" layer="21"/>
<wire x1="-8.4138" y1="-0.635" x2="-8.4138" y2="0.635" width="0.254" layer="21" curve="180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" diameter="2.032" first="yes"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" diameter="2.032"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" diameter="2.032"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" diameter="2.032"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" diameter="2.032"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" diameter="2.032"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" diameter="2.032"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" diameter="2.032"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" diameter="2.032"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" diameter="2.032"/>
<pad name="11" x="0" y="3.81" drill="0.8128" diameter="2.032"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" diameter="2.032"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" diameter="2.032"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" diameter="2.032"/>
<text x="-7.1438" y="-0.635" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-7.1438" y="-0.635" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-7.1437" y="-2.0637" size="1.016" layer="51" font="vector" ratio="16" rot="R90">1</text>
<text x="-8.89" y="-2.2225" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
</package>
<package name="DIP14L">
<description>&lt;b&gt;DIP-14&lt;/b&gt;, long pads&lt;br&gt;
IC package, 14 pins, 0.3" width</description>
<wire x1="8.89" y1="2.54" x2="8.89" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="8.89" y1="-2.54" x2="7.62" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="7.62" y1="-2.54" x2="5.08" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="5.08" y1="-2.54" x2="2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="-5.08" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="-2.54" x2="-7.62" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="-2.54" x2="-8.89" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="-2.54" x2="-8.89" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="-1.27" x2="-8.89" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="1.27" x2="-8.89" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="1.27" x2="-8.89" y2="-1.27" width="0.254" layer="51" curve="-180"/>
<wire x1="-7.62" y1="-3.81" x2="-7.62" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="-3.81" x2="-5.08" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.81" x2="-2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="0" y1="-3.81" x2="0" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="3.81" width="0.1524" layer="51"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="3.81" width="0.1524" layer="51"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="3.81" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-3.81" x2="2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="5.08" y1="-3.81" x2="5.08" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="7.62" y1="-3.81" x2="7.62" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="7.62" y1="2.54" x2="5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="5.08" y1="2.54" x2="2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="8.89" y1="2.54" x2="7.62" y2="2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="2.54" x2="0" y2="2.54" width="0.4064" layer="51"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="2.54" x2="-5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="2.54" x2="-7.62" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="2.54" x2="-8.89" y2="2.54" width="0.4064" layer="51"/>
<wire x1="0" y1="2.54" x2="0" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-8.4138" y1="1.905" x2="8.4138" y2="1.905" width="0.254" layer="21"/>
<wire x1="8.4138" y1="1.905" x2="8.4138" y2="-1.905" width="0.254" layer="21"/>
<wire x1="8.4138" y1="-1.905" x2="-8.4138" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-8.4138" y1="-1.905" x2="-8.4138" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-8.4138" y1="0.635" x2="-8.4138" y2="1.905" width="0.254" layer="21"/>
<wire x1="-8.4138" y1="-0.635" x2="-8.4138" y2="0.635" width="0.254" layer="21" curve="180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90" first="yes"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<text x="-7.1438" y="-0.635" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-7.1437" y="-0.635" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-7.1437" y="-2.0637" size="1.016" layer="51" font="vector" ratio="16" rot="R90">1</text>
<text x="-8.89" y="-1.905" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
</package>
<package name="DIP14R">
<description>&lt;b&gt;DIP-14&lt;/b&gt;, reduced pads&lt;br&gt;
IC package, 14 pins, 0.3" width</description>
<wire x1="8.89" y1="2.54" x2="8.89" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="8.89" y1="-2.54" x2="7.62" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="7.62" y1="-2.54" x2="5.08" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="5.08" y1="-2.54" x2="2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="-5.08" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="-2.54" x2="-7.62" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="-2.54" x2="-8.89" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="-2.54" x2="-8.89" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="-1.27" x2="-8.89" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="1.27" x2="-8.89" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="1.27" x2="-8.89" y2="-1.27" width="0.254" layer="51" curve="-180"/>
<wire x1="-7.62" y1="-3.81" x2="-7.62" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="-3.81" x2="-5.08" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.81" x2="-2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="0" y1="-3.81" x2="0" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-3.81" x2="2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="5.08" y1="-3.81" x2="5.08" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="7.62" y1="-3.81" x2="7.62" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="2.54" x2="-7.62" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="2.54" x2="-5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="2.54" x2="-2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="2.54" x2="0" y2="2.54" width="0.4064" layer="51"/>
<wire x1="0" y1="2.54" x2="2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="2.54" x2="5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="5.08" y1="2.54" x2="7.62" y2="2.54" width="0.4064" layer="51"/>
<wire x1="7.62" y1="2.54" x2="8.89" y2="2.54" width="0.4064" layer="51"/>
<wire x1="7.62" y1="3.81" x2="7.62" y2="2.54" width="0.1524" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="2.54" width="0.1524" layer="51"/>
<wire x1="2.54" y1="3.81" x2="2.54" y2="2.54" width="0.1524" layer="51"/>
<wire x1="0" y1="3.81" x2="0" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="3.81" x2="-2.54" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="3.81" x2="-5.08" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="3.81" x2="-7.62" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-8.4137" y1="2.54" x2="8.4137" y2="2.54" width="0.254" layer="21"/>
<wire x1="8.4137" y1="2.54" x2="8.4137" y2="-2.54" width="0.254" layer="21"/>
<wire x1="8.4137" y1="-2.54" x2="-8.4138" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-8.4138" y1="-2.54" x2="-8.4138" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-8.4137" y1="0.635" x2="-8.4137" y2="2.54" width="0.254" layer="21"/>
<wire x1="-8.4138" y1="-0.635" x2="-8.4137" y2="0.635" width="0.254" layer="21" curve="180.009023"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" diameter="1.397" shape="square" first="yes"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="11" x="0" y="3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" diameter="1.397" shape="square"/>
<text x="-7.1438" y="-0.635" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-7.1438" y="-0.635" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-7.1437" y="-2.0637" size="1.016" layer="51" font="vector" ratio="16" rot="R90">1</text>
<text x="-8.89" y="-2.54" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
</package>
<package name="SO14">
<description>&lt;b&gt;SO-14&lt;/b&gt;, SMD&lt;br&gt;
SOIC IC package, 14 pins, 0.15" width</description>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="-2.8575" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-2.8575" x2="-2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="-2.8575" width="0.1524" layer="51"/>
<wire x1="0" y1="-2.8575" x2="0" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="2.8575" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="2.8575" x2="-2.54" y2="1.905" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="2.8575" width="0.1524" layer="51"/>
<wire x1="0" y1="1.905" x2="0" y2="2.8575" width="0.1524" layer="51"/>
<wire x1="4.445" y1="-1.905" x2="4.445" y2="-0.9525" width="0.4064" layer="51"/>
<wire x1="4.445" y1="-0.9525" x2="4.445" y2="1.905" width="0.4064" layer="51"/>
<wire x1="4.445" y1="-1.905" x2="3.81" y2="-1.905" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-1.905" x2="2.54" y2="-1.905" width="0.4064" layer="51"/>
<wire x1="2.54" y1="-1.905" x2="1.27" y2="-1.905" width="0.4064" layer="51"/>
<wire x1="1.27" y1="-1.905" x2="-4.445" y2="-1.905" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="1.905" x2="1.27" y2="1.905" width="0.4064" layer="51"/>
<wire x1="1.27" y1="1.905" x2="2.54" y2="1.905" width="0.4064" layer="51"/>
<wire x1="2.54" y1="1.905" x2="3.81" y2="1.905" width="0.4064" layer="51"/>
<wire x1="3.81" y1="1.905" x2="4.445" y2="1.905" width="0.4064" layer="51"/>
<wire x1="-2.2225" y1="-0.9525" x2="4.445" y2="-0.9525" width="0.254" layer="51"/>
<wire x1="1.27" y1="-2.8575" x2="1.27" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-2.8575" x2="2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-2.8575" x2="3.81" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="1.27" y1="1.905" x2="1.27" y2="2.8575" width="0.1524" layer="51"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="2.8575" width="0.1524" layer="51"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="2.8575" width="0.1524" layer="51"/>
<wire x1="-4.445" y1="-1.5875" x2="4.445" y2="-1.5875" width="0.254" layer="21"/>
<wire x1="4.445" y1="-1.5875" x2="4.445" y2="1.5875" width="0.254" layer="21"/>
<wire x1="4.445" y1="1.5875" x2="-4.445" y2="1.5875" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-0.635" x2="-4.445" y2="0.635" width="0.254" layer="21" curve="180"/>
<wire x1="-4.445" y1="-1.5875" x2="-4.445" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-4.445" y1="0.635" x2="-4.445" y2="1.5875" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-0.635" x2="-4.445" y2="0.635" width="0.4064" layer="51" curve="180"/>
<wire x1="-4.445" y1="-0.635" x2="-4.445" y2="-1.905" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="0.635" x2="-4.445" y2="1.905" width="0.4064" layer="51"/>
<circle x="-3.175" y="-0.9525" radius="0.4762" width="0" layer="51"/>
<smd name="1" x="-3.81" y="-2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="2" x="-2.54" y="-2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="3" x="-1.27" y="-2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="4" x="0" y="-2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="5" x="1.27" y="-2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="6" x="2.54" y="-2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="7" x="3.81" y="-2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="8" x="3.81" y="2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="9" x="2.54" y="2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="10" x="1.27" y="2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="11" x="0" y="2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="12" x="-1.27" y="2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="13" x="-2.54" y="2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="14" x="-3.81" y="2.8575" dx="0.635" dy="1.778" layer="1"/>
<text x="-3.3338" y="0" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.3338" y="0" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-4.9213" y="-1.5875" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="INV">
<wire x1="-2.54" y1="-3.175" x2="2.54" y2="-3.175" width="0.4064" layer="94"/>
<wire x1="2.54" y1="-3.175" x2="2.54" y2="3.175" width="0.4064" layer="94"/>
<wire x1="2.54" y1="3.175" x2="-2.54" y2="3.175" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="3.175" x2="-2.54" y2="-3.175" width="0.4064" layer="94"/>
<wire x1="0.3175" y1="-1.905" x2="0.3175" y2="1.905" width="0.254" layer="94"/>
<wire x1="0.3175" y1="1.905" x2="-0.3175" y2="0.9525" width="0.254" layer="94"/>
<text x="-2.54" y="5.715" size="1.524" layer="95" font="vector">&gt;NAME</text>
<text x="-2.54" y="3.81" size="1.524" layer="96" font="vector">&gt;VALUE</text>
<pin name="I" x="-5.08" y="0" visible="pad" length="short" direction="in"/>
<pin name="O" x="7.62" y="0" visible="pad" length="middle" direction="out" function="dot" rot="R180"/>
</symbol>
<symbol name="V+/GND">
<wire x1="0" y1="2.54" x2="0" y2="2.2225" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.2225" width="0.1524" layer="94"/>
<text x="0" y="0.9525" size="1.524" layer="95" font="vector" align="center">&gt;PART</text>
<text x="0" y="-0.9525" size="1.524" layer="96" font="vector" align="center">&gt;VALUE</text>
<pin name="V+" x="0" y="5.08" visible="pad" length="short" direction="pwr" rot="R270"/>
<pin name="GND" x="0" y="-5.08" visible="pad" length="short" direction="pwr" rot="R90"/>
<circle x="1.349375" y="3.81" radius="0.9525" width="0.127" layer="95"/>
<wire x1="1.349375" y1="3.33375" x2="1.349375" y2="4.28625" width="0.127" layer="95"/>
<wire x1="0.873125" y1="3.81" x2="1.825625" y2="3.81" width="0.127" layer="95"/>
<wire x1="0.79375" y1="-3.81" x2="1.7065625" y2="-3.81" width="0.127" layer="95"/>
<wire x1="1.7065625" y1="-4.1671875" x2="1.7065625" y2="-3.81" width="0.127" layer="95"/>
<wire x1="1.7065625" y1="-3.81" x2="1.7065625" y2="-3.4528125" width="0.127" layer="95"/>
<circle x="1.349375" y="-3.81" radius="0.9525" width="0.127" layer="95"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="*04" prefix="N">
<description>&lt;b&gt;74xx04&lt;/b&gt;: Hex inverter
&lt;br&gt;_____&lt;br&gt;
&lt;br&gt;
&lt;b&gt;References:&lt;/b&gt;&lt;br&gt;

&amp;nbsp; - PDF datasheets: &lt;a href="http://elektronik.aei.uni-hannover.de:3000/datasheets/digitals/gates/inverter/74ac04.pdf"&gt;AC&lt;/a&gt;,
  &lt;a href="http://elektronik.aei.uni-hannover.de:3000/datasheets/digitals/gates/inverter/74act04.pdf"&gt;ACT&lt;/a&gt;,
  &lt;a href="http://elektronik.aei.uni-hannover.de:3000/datasheets/digitals/gates/inverter/74als04.pdf"&gt;ALS&lt;/a&gt;,
  &lt;a href="http://elektronik.aei.uni-hannover.de:3000/datasheets/digitals/gates/inverter/74as04.pdf"&gt;AS&lt;/a&gt;,
  &lt;a href="http://elektronik.aei.uni-hannover.de:3000/datasheets/digitals/gates/inverter/74hc04.pdf"&gt;HC&lt;/a&gt;,
  &lt;a href="http://elektronik.aei.uni-hannover.de:3000/datasheets/digitals/gates/inverter/74hct04.pdf"&gt;HCT&lt;/a&gt;,
  &lt;a href="http://elektronik.aei.uni-hannover.de:3000/datasheets/digitals/gates/inverter/74ls04.pdf"&gt;LS&lt;/a&gt;,
  &lt;a href="http://elektronik.aei.uni-hannover.de:3000/datasheets/digitals/gates/inverter/74s04.pdf"&gt;S&lt;/a&gt;,
  &lt;a href="http://elektronik.aei.uni-hannover.de:3000/datasheets/digitals/gates/inverter/7404.pdf"&gt;TTL&lt;/a&gt;
   (electronics workshop server)&lt;br&gt;

&amp;nbsp; - Manufacturer's links: &lt;a href="http://www.ti.com/product/cd74ac04"&gt;AC&lt;/a&gt;,
  &lt;a href="http://www.ti.com/product/cd74act04"&gt;ACT&lt;/a&gt;,
  &lt;a href="http://www.ti.com/product/sn74als04b"&gt;ALS&lt;/a&gt;,
  &lt;a href="http://www.ti.com/product/sn74as04"&gt;AS&lt;/a&gt;,
  &lt;a href="http://www.ti.com/product/cd74hc04"&gt;HC&lt;/a&gt;,
  &lt;a href="http://www.ti.com/product/cd74hct04"&gt;HCT&lt;/a&gt;,
  &lt;a href="http://www.ti.com/product/sn74ls04"&gt;LS&lt;/a&gt;,
  &lt;a href="http://www.ti.com/product/sn74s04"&gt;S&lt;/a&gt;,
  &lt;a href="http://www.ti.com/product/sn7404"&gt;TTL&lt;/a&gt; (Texas Instruments)&lt;br&gt;

&amp;nbsp; - Internet search: &lt;a href="https://www.google.de/search?q=74ac04"&gt;AC&lt;/a&gt;,
  &lt;a href="https://www.google.de/search?q=74act04"&gt;ACT&lt;/a&gt;,
  &lt;a href="https://www.google.de/search?q=74als04"&gt;ALS&lt;/a&gt;,
  &lt;a href="https://www.google.de/search?q=74as04"&gt;AS&lt;/a&gt;,
  &lt;a href="https://www.google.de/search?q=74hc04"&gt;HC&lt;/a&gt;,
  &lt;a href="https://www.google.de/search?q=74hct04"&gt;HCT&lt;/a&gt;,
  &lt;a href="https://www.google.de/search?q=74ls04"&gt;LS&lt;/a&gt;,
  &lt;a href="https://www.google.de/search?q=74s04"&gt;S&lt;/a&gt;,
  &lt;a href="https://www.google.de/search?q=7404"&gt;TTL&lt;/a&gt; (Google results)</description>
<gates>
<gate name="A" symbol="INV" x="0" y="0" swaplevel="1"/>
<gate name="C" symbol="INV" x="0" y="-15.24" swaplevel="1"/>
<gate name="E" symbol="INV" x="0" y="-30.48" swaplevel="1"/>
<gate name="B" symbol="INV" x="20.32" y="0" swaplevel="1"/>
<gate name="D" symbol="INV" x="20.32" y="-15.24" swaplevel="1"/>
<gate name="F" symbol="INV" x="20.32" y="-30.48" swaplevel="1"/>
<gate name="P" symbol="V+/GND" x="35.56" y="-15.24" addlevel="always"/>
</gates>
<devices>
<device name="N" package="DIP14N">
<connects>
<connect gate="A" pin="I" pad="1"/>
<connect gate="A" pin="O" pad="2"/>
<connect gate="B" pin="I" pad="3"/>
<connect gate="B" pin="O" pad="4"/>
<connect gate="C" pin="I" pad="5"/>
<connect gate="C" pin="O" pad="6"/>
<connect gate="D" pin="I" pad="9"/>
<connect gate="D" pin="O" pad="8"/>
<connect gate="E" pin="I" pad="11"/>
<connect gate="E" pin="O" pad="10"/>
<connect gate="F" pin="I" pad="13"/>
<connect gate="F" pin="O" pad="12"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="V+" pad="14"/>
</connects>
<technologies>
<technology name="74">
<attribute name="VALUE" value="7404"/>
</technology>
<technology name="74AC">
<attribute name="VALUE" value="74AC04"/>
</technology>
<technology name="74ACT">
<attribute name="VALUE" value="74ACT04"/>
</technology>
<technology name="74ALS">
<attribute name="VALUE" value="74ALS04"/>
</technology>
<technology name="74AS">
<attribute name="VALUE" value="74AS04"/>
</technology>
<technology name="74C">
<attribute name="VALUE" value="74C04"/>
</technology>
<technology name="74HC">
<attribute name="VALUE" value="74HC04"/>
</technology>
<technology name="74HCT">
<attribute name="VALUE" value="74HCT04"/>
</technology>
<technology name="74L">
<attribute name="VALUE" value="74L04"/>
</technology>
<technology name="74LS">
<attribute name="VALUE" value="74LS04"/>
</technology>
<technology name="74S">
<attribute name="VALUE" value="74S04"/>
</technology>
</technologies>
</device>
<device name="L" package="DIP14L">
<connects>
<connect gate="A" pin="I" pad="1"/>
<connect gate="A" pin="O" pad="2"/>
<connect gate="B" pin="I" pad="3"/>
<connect gate="B" pin="O" pad="4"/>
<connect gate="C" pin="I" pad="5"/>
<connect gate="C" pin="O" pad="6"/>
<connect gate="D" pin="I" pad="9"/>
<connect gate="D" pin="O" pad="8"/>
<connect gate="E" pin="I" pad="11"/>
<connect gate="E" pin="O" pad="10"/>
<connect gate="F" pin="I" pad="13"/>
<connect gate="F" pin="O" pad="12"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="V+" pad="14"/>
</connects>
<technologies>
<technology name="74">
<attribute name="VALUE" value="7404"/>
</technology>
<technology name="74AC">
<attribute name="VALUE" value="74AC04"/>
</technology>
<technology name="74ACT">
<attribute name="VALUE" value="74ACT04"/>
</technology>
<technology name="74ALS">
<attribute name="VALUE" value="74ALS04"/>
</technology>
<technology name="74AS">
<attribute name="VALUE" value="74AS04"/>
</technology>
<technology name="74C">
<attribute name="VALUE" value="74C04"/>
</technology>
<technology name="74HC">
<attribute name="VALUE" value="74HC04"/>
</technology>
<technology name="74HCT">
<attribute name="VALUE" value="74HCT04"/>
</technology>
<technology name="74L">
<attribute name="VALUE" value="74L04"/>
</technology>
<technology name="74LS">
<attribute name="VALUE" value="74LS04"/>
</technology>
<technology name="74S">
<attribute name="VALUE" value="74S04"/>
</technology>
</technologies>
</device>
<device name="" package="DIP14L">
<connects>
<connect gate="A" pin="I" pad="1"/>
<connect gate="A" pin="O" pad="2"/>
<connect gate="B" pin="I" pad="3"/>
<connect gate="B" pin="O" pad="4"/>
<connect gate="C" pin="I" pad="5"/>
<connect gate="C" pin="O" pad="6"/>
<connect gate="D" pin="I" pad="9"/>
<connect gate="D" pin="O" pad="8"/>
<connect gate="E" pin="I" pad="11"/>
<connect gate="E" pin="O" pad="10"/>
<connect gate="F" pin="I" pad="13"/>
<connect gate="F" pin="O" pad="12"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="V+" pad="14"/>
</connects>
<technologies>
<technology name="74">
<attribute name="VALUE" value="7404"/>
</technology>
<technology name="74AC">
<attribute name="VALUE" value="74AC04"/>
</technology>
<technology name="74ACT">
<attribute name="VALUE" value="74ACT04"/>
</technology>
<technology name="74ALS">
<attribute name="VALUE" value="74ALS04"/>
</technology>
<technology name="74AS">
<attribute name="VALUE" value="74AS04"/>
</technology>
<technology name="74C">
<attribute name="VALUE" value="74C04"/>
</technology>
<technology name="74HC">
<attribute name="VALUE" value="74HC04"/>
</technology>
<technology name="74HCT">
<attribute name="VALUE" value="74HCT04"/>
</technology>
<technology name="74L">
<attribute name="VALUE" value="74L04"/>
</technology>
<technology name="74LS">
<attribute name="VALUE" value="74LS04"/>
</technology>
<technology name="74S">
<attribute name="VALUE" value="74S04"/>
</technology>
</technologies>
</device>
<device name="R" package="DIP14R">
<connects>
<connect gate="A" pin="I" pad="1"/>
<connect gate="A" pin="O" pad="2"/>
<connect gate="B" pin="I" pad="3"/>
<connect gate="B" pin="O" pad="4"/>
<connect gate="C" pin="I" pad="5"/>
<connect gate="C" pin="O" pad="6"/>
<connect gate="D" pin="I" pad="9"/>
<connect gate="D" pin="O" pad="8"/>
<connect gate="E" pin="I" pad="11"/>
<connect gate="E" pin="O" pad="10"/>
<connect gate="F" pin="I" pad="13"/>
<connect gate="F" pin="O" pad="12"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="V+" pad="14"/>
</connects>
<technologies>
<technology name="74">
<attribute name="VALUE" value="7404"/>
</technology>
<technology name="74AC">
<attribute name="VALUE" value="74AC04"/>
</technology>
<technology name="74ACT">
<attribute name="VALUE" value="74ACT04"/>
</technology>
<technology name="74ALS">
<attribute name="VALUE" value="74ALS04"/>
</technology>
<technology name="74AS">
<attribute name="VALUE" value="74AS04"/>
</technology>
<technology name="74C">
<attribute name="VALUE" value="74C04"/>
</technology>
<technology name="74HC">
<attribute name="VALUE" value="74HC04"/>
</technology>
<technology name="74HCT">
<attribute name="VALUE" value="74HCT04"/>
</technology>
<technology name="74L">
<attribute name="VALUE" value="74L04"/>
</technology>
<technology name="74LS">
<attribute name="VALUE" value="74LS04"/>
</technology>
<technology name="74S">
<attribute name="VALUE" value="74S04"/>
</technology>
</technologies>
</device>
<device name="S" package="SO14">
<connects>
<connect gate="A" pin="I" pad="1"/>
<connect gate="A" pin="O" pad="2"/>
<connect gate="B" pin="I" pad="3"/>
<connect gate="B" pin="O" pad="4"/>
<connect gate="C" pin="I" pad="5"/>
<connect gate="C" pin="O" pad="6"/>
<connect gate="D" pin="I" pad="9"/>
<connect gate="D" pin="O" pad="8"/>
<connect gate="E" pin="I" pad="11"/>
<connect gate="E" pin="O" pad="10"/>
<connect gate="F" pin="I" pad="13"/>
<connect gate="F" pin="O" pad="12"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="V+" pad="14"/>
</connects>
<technologies>
<technology name="74AC">
<attribute name="VALUE" value="74AC04"/>
</technology>
<technology name="74ACT">
<attribute name="VALUE" value="74ACT04"/>
</technology>
<technology name="74HC">
<attribute name="VALUE" value="74HC04"/>
</technology>
<technology name="74HCT">
<attribute name="VALUE" value="74HCT04"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="transistors">
<description>&lt;table width="100%" cellpadding="5" cellspacing="0"  bgcolor="#E0E0E0"&gt;&lt;tr&gt;&lt;td&gt;
&lt;h3&gt;Transistors&lt;/h3&gt;
Bipolar (NPN/PNP), JFETs, MOSFETs, arrays, ...&lt;br&gt;
&lt;author&gt;&lt;b&gt;Update:&lt;/b&gt; 2014-07-23 Andreas Weidner&lt;/author&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;
&lt;br&gt;&lt;br&gt;

&lt;b&gt;Device suffixes&lt;/b&gt;&lt;br&gt;
Most devices offer different suffixes to directly specify the package type. In general, these are
&lt;b&gt;not&lt;/b&gt; the manufacturer's suffixes (those vary greatly), but one of the following (note that not all devices offer all types of packages):&lt;p&gt;
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;(none)&amp;nbsp;&amp;nbsp;&lt;/tt&gt;
  &lt;td&gt;Default device package (currently through-hole technology, if available)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;N&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Package with normal pads (easily solderable)&lt;/td&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;L&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Package with long pads (easily solderable, through-pin-routing possible)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;R&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Package with reduced pads (small, through-pin-routing possible)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;S&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;SMD package&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;D&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Package for diagonal mounting&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;H&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Package for horizontal mounting of vertical components&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;Device examples&lt;/b&gt;&lt;br&gt;
The following examples show devices that can be inserted into EAGLE schematics using
the &lt;b&gt;add&lt;/b&gt; command:&lt;p&gt; 
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;BC547&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;NPN transistor with default package (currently with normal pads)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;IRLIZ24H&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;N-channel MOSFET for horizontal mounting&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;SSM2210S&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Matched NPN pair in SO-8 SMD package&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;Board layers&lt;/b&gt;&lt;br&gt;
The board packages make special use of the following layers:&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td width="1%"&gt;&lt;tt&gt;tDocu,&lt;br&gt;&amp;nbsp;&amp;nbsp;tNames,&lt;br&gt;&amp;nbsp;&amp;nbsp;tValues&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Placeplan including device names and values for printed documentation. Should
    &lt;b&gt;not&lt;/b&gt; be used for the board imprint due to complexity. Names and values occupy
    the &lt;b&gt;same&lt;/b&gt; board space, so two separate printouts are advisable&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;tPlace&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Less sophisticated, but concise placeplan &lt;b&gt;including&lt;/b&gt; device names (and values for certain components) for the board imprint (&lt;b&gt;no&lt;/b&gt; other layers should be used for the print)&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;</description>
<packages>
<package name="TO92N">
<description>&lt;b&gt;TO-92&lt;/b&gt;&lt;br&gt;
Plastic package, 3 pins</description>
<wire x1="-2.2225" y1="-1.27" x2="2.2225" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.2225" y1="-1.27" x2="2.2225" y2="-1.27" width="0.4064" layer="51" curve="-239.489763"/>
<wire x1="-2.0638" y1="-1.27" x2="2.0638" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.143" y1="1.27" x2="-1.2699" y2="2.1431" width="0.254" layer="21" curve="-20.608643"/>
<wire x1="2.143" y1="1.27" x2="1.2699" y2="2.1431" width="0.254" layer="21" curve="20.608643"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="2.032"/>
<pad name="3" x="2.54" y="0" drill="0.8128" diameter="2.032"/>
<pad name="2" x="0" y="2.54" drill="0.8128" diameter="2.032"/>
<text x="-2.2225" y="-3.175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.2225" y="-3.175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.2225" y="-3.175" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="TO92D">
<description>&lt;b&gt;TO-92&lt;/b&gt;, diagonal mounting&lt;br&gt;
Plastic package, 3 pins</description>
<wire x1="-0.6736" y1="-2.4695" x2="2.4695" y2="0.6735" width="0.4064" layer="51"/>
<wire x1="-0.6736" y1="-2.4695" x2="2.4695" y2="0.6735" width="0.4064" layer="51" curve="-239.482695"/>
<wire x1="0.6076" y1="2.4695" x2="-0.6078" y2="2.4695" width="0.254" layer="21" curve="26.469422"/>
<wire x1="-2.4695" y1="0.6076" x2="-2.4695" y2="-0.6078" width="0.254" layer="21" curve="26.469422"/>
<wire x1="-0.3969" y1="-2.54" x2="2.54" y2="0.3969" width="0.254" layer="21"/>
<wire x1="2.54" y1="0.3969" x2="2.4606" y2="0.635" width="0.254" layer="21"/>
<wire x1="-0.3969" y1="-2.54" x2="-0.635" y2="-2.4606" width="0.254" layer="21"/>
<circle x="-1.27" y="-1.27" radius="0.3175" width="0" layer="51"/>
<circle x="-1.27" y="1.27" radius="0.3175" width="0" layer="51"/>
<circle x="1.27" y="1.27" radius="0.3175" width="0" layer="51"/>
<pad name="1" x="-1.27" y="-1.27" drill="0.8128" diameter="2.032"/>
<pad name="2" x="-1.27" y="1.27" drill="0.8128" diameter="2.032"/>
<pad name="3" x="1.27" y="1.27" drill="0.8128" diameter="2.032"/>
<text x="-2.54" y="3.0162" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.54" y="3.0163" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.54" y="3.0163" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="TO92DR">
<description>&lt;b&gt;TO-92&lt;/b&gt;, diagonal mounting, reduced pads&lt;br&gt;
Plastic package, 3 pins</description>
<wire x1="-0.6736" y1="-2.4695" x2="2.4695" y2="0.6735" width="0.4064" layer="51"/>
<wire x1="-0.6736" y1="-2.4695" x2="2.4695" y2="0.6735" width="0.4064" layer="51" curve="-239.482695"/>
<wire x1="1.0045" y1="2.3108" x2="-1.0047" y2="2.3108" width="0.254" layer="21" curve="51.412973"/>
<wire x1="-2.3108" y1="1.0045" x2="-2.3108" y2="-1.0047" width="0.254" layer="21" curve="51.412973"/>
<wire x1="-1.0319" y1="-2.3019" x2="-0.3969" y2="-2.54" width="0.254" layer="21"/>
<wire x1="2.3019" y1="1.0319" x2="2.54" y2="0.3969" width="0.254" layer="21"/>
<wire x1="-0.3969" y1="-2.54" x2="2.54" y2="0.3969" width="0.254" layer="21"/>
<circle x="-1.27" y="-1.27" radius="0.3175" width="0" layer="51"/>
<circle x="-1.27" y="1.27" radius="0.3175" width="0" layer="51"/>
<circle x="1.27" y="1.27" radius="0.3175" width="0" layer="51"/>
<pad name="1" x="-1.27" y="-1.27" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="2" x="-1.27" y="1.27" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="3" x="1.27" y="1.27" drill="0.8128" diameter="1.397" shape="square"/>
<text x="-2.54" y="3.0162" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.54" y="3.0163" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.54" y="3.0163" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="TNPN">
<wire x1="-2.54" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="3.81" width="0.1524" layer="94"/>
<wire x1="5.08" y1="3.81" x2="0" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.27" x2="3.175" y2="-2.8575" width="0.1524" layer="94"/>
<wire x1="3.175" y1="-2.8575" x2="5.08" y2="-3.81" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-3.81" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="0" width="0.4064" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="3.175" y1="-2.8575" x2="2.2225" y2="-1.7463" width="0.4064" layer="94"/>
<wire x1="2.2225" y1="-1.7463" x2="1.5875" y2="-2.6988" width="0.4064" layer="94"/>
<wire x1="1.5875" y1="-2.6988" x2="3.175" y2="-2.8575" width="0.4064" layer="94"/>
<wire x1="3.175" y1="-2.8575" x2="2.0638" y2="-2.0638" width="0.4064" layer="94"/>
<wire x1="3.175" y1="-2.8575" x2="1.7463" y2="-2.54" width="0.4064" layer="94"/>
<circle x="1.27" y="0" radius="3.81" width="0.4064" layer="94"/>
<text x="2.54" y="8.255" size="1.524" layer="95" font="vector" rot="R180">&gt;NAME</text>
<text x="2.54" y="6.35" size="1.524" layer="96" font="vector" rot="R180">&gt;VALUE</text>
<pin name="C" x="5.08" y="5.08" visible="pad" length="point" rot="R270"/>
<pin name="E" x="5.08" y="-5.08" visible="pad" length="point" rot="R90"/>
<pin name="B" x="-5.08" y="0" visible="pad" length="short"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BC547" prefix="T">
<description>&lt;b&gt;BC547&lt;/b&gt;: Universal NPN transistor (Motorola, Siemens)&lt;br&gt;
45V Uce, 100mA Ic, 75-900 hfe&lt;br&gt;
Complementary type BC557&lt;br&gt;
_____&lt;br&gt;&lt;br&gt;
Supported &lt;b&gt;SPICE&lt;/b&gt; models:&lt;br&gt;
BC547C BC547B
&lt;br&gt;
_____&lt;br&gt;
&lt;br&gt;
&lt;b&gt;References:&lt;/b&gt;&lt;br&gt;

&amp;nbsp; - &lt;a href="http://elektronik.aei.uni-hannover.de:3000/datasheets/transistors/bipolar/npn/bc547.pdf"&gt;
PDF datasheet&lt;/a&gt; (electronics workshop server)&lt;br&gt;

&amp;nbsp; - &lt;a href="http://www.fairchildsemi.com/pf/BC/BC547.html?rd=Y"&gt;
Manufacturer's link&lt;/a&gt; (Fairchild website)&lt;br&gt;

&amp;nbsp; - &lt;a href="http://www.google.de/search?q=bc547"&gt;
Internet search&lt;/a&gt; (Google results)</description>
<gates>
<gate name="A" symbol="TNPN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO92N">
<connects>
<connect gate="A" pin="B" pad="2"/>
<connect gate="A" pin="C" pad="1"/>
<connect gate="A" pin="E" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:Q&gt; &lt;pin:A.C&gt; &lt;pin:A.B&gt; &lt;pin:A.E&gt; &lt;model:BC547C BC547B&gt;&lt;temperature: temp=&gt;&lt;voltages: ic=&gt;"/>
<attribute name="VALUE" value="BC547"/>
</technology>
</technologies>
</device>
<device name="D" package="TO92D">
<connects>
<connect gate="A" pin="B" pad="2"/>
<connect gate="A" pin="C" pad="1"/>
<connect gate="A" pin="E" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:Q&gt; &lt;pin:A.C&gt; &lt;pin:A.B&gt; &lt;pin:A.E&gt; &lt;model:BC547C BC547B&gt;&lt;temperature: temp=&gt;&lt;voltages: ic=&gt;"/>
<attribute name="VALUE" value="BC547"/>
</technology>
</technologies>
</device>
<device name="N" package="TO92N">
<connects>
<connect gate="A" pin="B" pad="2"/>
<connect gate="A" pin="C" pad="1"/>
<connect gate="A" pin="E" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:Q&gt; &lt;pin:A.C&gt; &lt;pin:A.B&gt; &lt;pin:A.E&gt; &lt;model:BC547C BC547B&gt;&lt;temperature: temp=&gt;&lt;voltages: ic=&gt;"/>
<attribute name="VALUE" value="BC547"/>
</technology>
</technologies>
</device>
<device name="DR" package="TO92DR">
<connects>
<connect gate="A" pin="B" pad="2"/>
<connect gate="A" pin="C" pad="1"/>
<connect gate="A" pin="E" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:Q&gt; &lt;pin:A.C&gt; &lt;pin:A.B&gt; &lt;pin:A.E&gt; &lt;model:BC547C BC547B&gt;&lt;temperature: temp=&gt;&lt;voltages: ic=&gt;"/>
<attribute name="VALUE" value="BC547"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="diodes">
<description>&lt;table width="100%" cellpadding="5" cellspacing="0"  bgcolor="#E0E0E0"&gt;&lt;tr&gt;&lt;td&gt;
&lt;h3&gt;Diodes&lt;/h3&gt;
Standard, Schottky, capacitance diodes, zener diodes, arrays, rectifiers, ... (&lt;b&gt;no&lt;/b&gt; optoelectronics)&lt;br&gt;
&lt;author&gt;&lt;b&gt;Update:&lt;/b&gt; 2014-07-23 Andreas Weidner&lt;/author&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;
&lt;br&gt;&lt;br&gt;

&lt;b&gt;Device prefixes&lt;/b&gt;&lt;br&gt;
All devices have a dedicated prefix, sometimes followed by a 2-digit number, which signify
the component type and its grid spacing. The following components are available (excerpt):&lt;p&gt;
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;D[Nr]&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Diode [length in 0.1"]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;DC[Nr]&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Capacitance diode [length in 0.1"]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;DR&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Diode rectifier&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;DS[Nr]&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Schottky diode [length in 0.1"]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;DSB[Nr]&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Bidirectional suppressor diode [length in 0.1"]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;DSC[Nr]&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Bidirectional crowbar suppressor diode [length in 0.1"]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;DSU[Nr]&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Unidirectional suppressor diode [length in 0.1"]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;DZ[Nr]&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Zener diode [length in 01"]&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;Device suffixes&lt;/b&gt;&lt;br&gt;
Most devices offer different suffixes to directly specify either the solder pad or package type. The following suffixes are available (excerpt):&lt;p&gt;
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;(none)&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Default package (often with normal pads, if available)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;N&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Package with normal pads (easily solderable)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;R&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Package with reduced pads (small, through-pin-routing possible)&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;Device examples&lt;/b&gt;&lt;br&gt;
The following examples show devices that can be inserted into EAGLE schematics using
the &lt;b&gt;add&lt;/b&gt; command:&lt;p&gt; 
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;D&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Default diode (currently 0.4" with normal pads)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;DZ03R&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Zener diode 0.3" with reduced pads&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;1N4148&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Standard diode with this name and default package (currently 0.4", normal pads)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;HSMS-2810&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Special Agilent diode with this name&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;Board layers&lt;/b&gt;&lt;br&gt;
The board packages make special use of the following layers:&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td width="1%"&gt;&lt;tt&gt;tDocu,&lt;br&gt;&amp;nbsp;&amp;nbsp;tNames,&lt;br&gt;&amp;nbsp;&amp;nbsp;tValues&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Placeplan including device names and values for printed documentation. Should
    &lt;b&gt;not&lt;/b&gt; be used for the board imprint due to complexity. Names and values occupy
    the &lt;b&gt;same&lt;/b&gt; board space, so two separate printouts are advisable&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;tPlace&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Less sophisticated, but concise placeplan &lt;b&gt;including&lt;/b&gt; device names and values for the board imprint (&lt;b&gt;no&lt;/b&gt; other layers should be used for the print)&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;</description>
<packages>
<package name="DZ04N">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.4"</description>
<wire x1="-5.08" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="5.08" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="-1.27" x2="-2.0637" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-3.81" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="3.81" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-5.08" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="5.08" y="0" drill="0.8128" diameter="2.032"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ01N">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.1"</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<circle x="-1.27" y="0" radius="1.27" width="0.4064" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="1.27" y="0" drill="0.8128" diameter="2.032"/>
<text x="0.635" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.635" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="0.635" y="-1.5875" size="1.27" layer="51" font="vector" ratio="16">C</text>
<text x="-2.54" y="1.905" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="3.175" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="DZ01R">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.1", reduced pads</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.2225" y1="0.9525" x2="2.2225" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.2225" y1="0.9525" x2="2.2225" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.2225" y1="-0.9525" x2="-2.2225" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.2225" y1="-0.9525" x2="-2.2225" y2="0.9525" width="0.254" layer="21"/>
<circle x="-1.27" y="0" radius="1.27" width="0.4064" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="1.27" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="0.635" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.635" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="0.635" y="-1.5875" size="1.27" layer="51" font="vector" ratio="16">C</text>
<text x="-2.2225" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="2.8575" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="DZ02N">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.2"</description>
<wire x1="-2.54" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="2.54" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="-1.27" x2="0.4763" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<pad name="A" x="-2.54" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="2.54" y="0" drill="0.8128" diameter="2.032"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.81" y="1.905" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="4.445" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="DZ02R">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.2", reduced pads</description>
<wire x1="-2.54" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="2.54" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="-1.27" x2="0.4763" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.4925" y1="0.9525" x2="3.4925" y2="0.9525" width="0.254" layer="21"/>
<wire x1="3.4925" y1="0.9525" x2="3.4925" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="3.4925" y1="-0.9525" x2="-3.4925" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-3.4925" y1="-0.9525" x2="-3.4925" y2="0.9525" width="0.254" layer="21"/>
<pad name="A" x="-2.54" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="2.54" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.4925" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="4.1275" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="DZ03N">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.3"</description>
<wire x1="-3.81" y1="0" x2="-0.3175" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0" x2="3.81" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.3812" y1="1.27" x2="-2.3812" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.3812" y1="-1.27" x2="-0.3175" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.3175" y1="0" x2="-2.3812" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-0.1587" y1="1.27" x2="-0.1587" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-0.1587" y1="-1.27" x2="-0.7937" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="0.9525" x2="1.5875" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.5875" y1="0.9525" x2="2.54" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.54" y1="0.9525" x2="2.54" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.54" y1="-0.9525" x2="1.5875" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.5875" y1="-0.9525" x2="-2.54" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-0.9525" x2="-2.54" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.5875" y1="0.9525" x2="1.5875" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-3.81" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="3.81" y="0" drill="0.8128" diameter="2.032"/>
<text x="0.3175" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.3175" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.54" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ03R">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.3", reduced pads</description>
<wire x1="-3.81" y1="0" x2="-0.3175" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0" x2="3.81" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.3812" y1="1.27" x2="-2.3812" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.3812" y1="-1.27" x2="-0.3175" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.3175" y1="0" x2="-2.3812" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-0.1587" y1="1.27" x2="-0.1587" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-0.1587" y1="-1.27" x2="-0.7937" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="0.9525" x2="1.5875" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.5875" y1="0.9525" x2="2.54" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.54" y1="0.9525" x2="2.54" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.54" y1="-0.9525" x2="1.5875" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.5875" y1="-0.9525" x2="-2.54" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-0.9525" x2="-2.54" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.5875" y1="0.9525" x2="1.5875" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-3.81" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="3.81" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="0.3175" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.3175" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.54" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ04R">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.4", reduced pads</description>
<wire x1="-5.08" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="5.08" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="-1.27" x2="-2.0637" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-4.1275" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="4.1275" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-5.08" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="5.08" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ05N">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.5"</description>
<wire x1="-6.35" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="6.35" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="-1.27" x2="-2.0637" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-5.08" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="5.08" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-6.35" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="6.35" y="0" drill="0.8128" diameter="2.032"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ05R">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.5", reduced pads</description>
<wire x1="-6.35" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="6.35" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="-1.27" x2="-2.0637" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-5.3975" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="5.3975" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-6.35" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="6.35" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ06N">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.6"</description>
<wire x1="-7.62" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="7.62" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="-1.27" x2="-2.0637" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-6.35" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="6.35" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-7.62" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="7.62" y="0" drill="0.8128" diameter="2.032"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ06R">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.6", reduced pads</description>
<wire x1="-7.62" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="7.62" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="-1.27" x2="-2.0637" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-6.6675" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="6.6675" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-7.62" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="7.62" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ07N">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.7"</description>
<wire x1="-8.89" y1="0" x2="-0.3175" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0" x2="8.89" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.3812" y1="1.27" x2="-2.3812" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.3812" y1="-1.27" x2="-0.3175" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.3175" y1="0" x2="-2.3812" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-0.1587" y1="1.27" x2="-0.1587" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-0.1587" y1="-1.27" x2="-0.7937" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-7.62" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="7.62" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-8.89" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="8.89" y="0" drill="0.8128" diameter="2.032"/>
<text x="0.3175" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.3175" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ07R">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.7", reduced pads</description>
<wire x1="-8.89" y1="0" x2="-0.3175" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0" x2="8.89" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.3812" y1="1.27" x2="-2.3812" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.3812" y1="-1.27" x2="-0.3175" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.3175" y1="0" x2="-2.3812" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-0.1587" y1="1.27" x2="-0.1587" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-0.1587" y1="-1.27" x2="-0.7937" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-7.9375" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="7.9375" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-8.89" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="8.89" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="0.3175" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.3175" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ08N">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.8"</description>
<wire x1="-10.16" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="10.16" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="-1.27" x2="0.4763" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-8.89" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="8.89" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-10.16" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="10.16" y="0" drill="0.8128" diameter="2.032"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ08R">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.8", reduced pads</description>
<wire x1="-10.16" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="10.16" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="-1.27" x2="0.4763" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-9.2075" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="9.2075" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-10.16" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="10.16" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ09N">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.9"</description>
<wire x1="-11.43" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="11.43" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="-1.27" x2="0.4763" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-10.16" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="10.16" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-11.43" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="11.43" y="0" drill="0.8128" diameter="2.032"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ09R">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.9", reduced pads</description>
<wire x1="-11.43" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="11.43" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="-1.27" x2="0.4763" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-10.4775" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="10.4775" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-11.43" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="11.43" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ10N">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 1.0"</description>
<wire x1="-12.7" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="12.7" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="-1.27" x2="0.4763" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-11.43" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="11.43" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-12.7" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="12.7" y="0" drill="0.8128" diameter="2.032"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ10R">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 1.0", reduced pads</description>
<wire x1="-12.7" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="12.7" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="-1.27" x2="0.4763" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-11.7475" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="11.7475" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-12.7" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="12.7" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="TO18D">
<description>&lt;b&gt;TO-18D&lt;/b&gt; metal can package, 2 pins</description>
<wire x1="-1.5875" y1="2.54" x2="-2.2225" y2="3.175" width="0.254" layer="51"/>
<wire x1="-2.2225" y1="3.175" x2="-3.175" y2="2.2225" width="0.254" layer="51"/>
<wire x1="-3.175" y1="2.2225" x2="-2.54" y2="1.5875" width="0.254" layer="51"/>
<circle x="0" y="0" radius="2.8575" width="0.4064" layer="51"/>
<circle x="0" y="0" radius="2.2225" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="1.27" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="2.032"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="2.032"/>
<text x="-2.54" y="3.81" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.54" y="3.81" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
</package>
<package name="TO92-2N">
<wire x1="-2.54" y1="-2.54" x2="2.54" y2="-2.54" width="0.4064" layer="51" curve="-270"/>
<wire x1="-2.54" y1="-2.54" x2="2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="0" x2="3.81" y2="0" width="0.254" layer="21" curve="-180" cap="flat"/>
<wire x1="-3.81" y1="0" x2="-2.54" y2="-2.54" width="0.254" layer="21" curve="43.602819" cap="flat"/>
<wire x1="2.54" y1="-2.54" x2="3.81" y2="0" width="0.254" layer="21" curve="43.602819" cap="flat"/>
<wire x1="-2.54" y1="-2.54" x2="2.54" y2="-2.54" width="0.254" layer="21"/>
<circle x="-2.54" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="2.54" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="2.032"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="2.032"/>
<text x="-2.54" y="-4.445" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.54" y="-4.445" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.54" y="-4.445" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DZ04B">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.4", big pads (0.1")&lt;br&gt;
1.1mm drill</description>
<wire x1="-5.08" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="5.08" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="-1.27" x2="-2.0637" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-3.4925" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="3.4925" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-5.08" y="0" drill="1.0922" diameter="2.54"/>
<pad name="C" x="5.08" y="0" drill="1.0922" diameter="2.54"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DMELF-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; SMD,  MELF package&lt;br&gt;
- SM4001...SM4007</description>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="51"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.254" layer="51"/>
<wire x1="-2.54" y1="1.27" x2="1.1112" y2="1.27" width="0.254" layer="51"/>
<wire x1="1.1112" y1="1.27" x2="1.2699" y2="1.27" width="0.254" layer="51"/>
<wire x1="1.2699" y1="1.27" x2="1.4287" y2="1.27" width="0.254" layer="51"/>
<wire x1="1.4287" y1="1.27" x2="1.5874" y2="1.27" width="0.254" layer="51"/>
<wire x1="1.5874" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="51"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.254" layer="51"/>
<wire x1="1.2699" y1="1.27" x2="1.2699" y2="-1.2699" width="0.254" layer="51"/>
<wire x1="-4.1275" y1="1.5875" x2="0.9525" y2="1.5875" width="0.254" layer="21"/>
<wire x1="0.9525" y1="1.5875" x2="4.1275" y2="1.5875" width="0.254" layer="21"/>
<wire x1="4.1275" y1="1.5875" x2="4.1275" y2="-1.5875" width="0.254" layer="21"/>
<wire x1="4.1275" y1="-1.5875" x2="0.9525" y2="-1.5875" width="0.254" layer="21"/>
<wire x1="0.9525" y1="-1.5875" x2="-4.1275" y2="-1.5875" width="0.254" layer="21"/>
<wire x1="-4.1275" y1="-1.5875" x2="-4.1275" y2="1.5875" width="0.254" layer="21"/>
<wire x1="0.9525" y1="1.5875" x2="0.9525" y2="-1.5875" width="0.254" layer="21"/>
<wire x1="1.4287" y1="1.27" x2="1.4287" y2="-1.2699" width="0.254" layer="51"/>
<wire x1="1.5874" y1="1.27" x2="1.5874" y2="-1.2699" width="0.254" layer="51"/>
<wire x1="1.1112" y1="1.27" x2="1.1112" y2="-1.2699" width="0.254" layer="51"/>
<smd name="A" x="-2.54" y="0" dx="2.54" dy="2.54" layer="1"/>
<smd name="C" x="2.54" y="0" dx="2.54" dy="2.54" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.54" y="1.905" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-4.1275" y="1.905" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DMINIMELF-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; SMD,  Mini-MELF package&lt;br&gt;
&amp;nbsp;- LL4148&lt;br&gt;
&amp;nbsp;- BZV55</description>
<wire x1="1.5875" y1="-0.635" x2="-1.1113" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.1113" y1="-0.635" x2="-1.5875" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="-0.635" x2="-1.5875" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0.635" x2="-1.1113" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.1113" y1="0.635" x2="1.5875" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.5875" y1="0.635" x2="1.5875" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-2.6988" y1="1.27" x2="2.6988" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.6988" y1="1.27" x2="2.8575" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.8575" y1="1.27" x2="3.0163" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.0163" y1="1.27" x2="3.0163" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.0163" y1="-1.27" x2="2.8575" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-1.27" x2="2.6988" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.6988" y1="-1.27" x2="-2.6988" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.6988" y1="-1.27" x2="-2.6988" y2="1.27" width="0.254" layer="21"/>
<wire x1="-1.1113" y1="0.635" x2="-1.1113" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="0.7936" y1="0.5557" x2="0.7936" y2="-0.5555" width="0.254" layer="51"/>
<wire x1="2.6988" y1="1.27" x2="2.6988" y2="-1.27" width="0.254" layer="21"/>
<wire x1="1.0317" y1="0.5557" x2="1.0317" y2="-0.5555" width="0.254" layer="51"/>
<wire x1="0.5554" y1="0.5557" x2="0.5554" y2="-0.5555" width="0.254" layer="51"/>
<wire x1="2.8575" y1="1.27" x2="2.8575" y2="-1.27" width="0.254" layer="21"/>
<smd name="A" x="-1.4" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="C" x="1.4" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-1.7463" y="1.1113" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-1.7463" y="1.1113" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.8178" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-0.3175" y="-0.397" size="0.762" layer="51" font="vector" ratio="16">D</text>
</package>
<package name="DZ06N2">
<wire x1="-7.62" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="7.62" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="-1.27" x2="0.4763" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-4.7625" y1="2.54" x2="3.4925" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.4925" y1="2.54" x2="4.7625" y2="2.54" width="0.254" layer="21"/>
<wire x1="4.7625" y1="2.54" x2="4.7625" y2="0" width="0.254" layer="21"/>
<wire x1="4.7625" y1="0" x2="4.7625" y2="-2.54" width="0.254" layer="21"/>
<wire x1="4.7625" y1="-2.54" x2="3.4925" y2="-2.54" width="0.254" layer="21"/>
<wire x1="3.4925" y1="-2.54" x2="-4.7625" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.7625" y1="-2.54" x2="-4.7625" y2="0" width="0.254" layer="21"/>
<wire x1="-4.7625" y1="0" x2="-4.7625" y2="2.54" width="0.254" layer="21"/>
<wire x1="-6.35" y1="0" x2="-4.7625" y2="0" width="0.254" layer="21"/>
<wire x1="6.35" y1="0" x2="4.7625" y2="0" width="0.254" layer="21"/>
<wire x1="3.4925" y1="2.54" x2="3.4925" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.7625" y1="-2.54" x2="-4.7625" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-4.7625" y1="2.54" x2="4.7625" y2="2.54" width="0.4064" layer="51"/>
<wire x1="4.7625" y1="2.54" x2="4.7625" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="4.7625" y1="-2.54" x2="-4.7625" y2="-2.54" width="0.4064" layer="51"/>
<pad name="A" x="-7.62" y="0" drill="1.1938" diameter="2.794"/>
<pad name="C" x="7.62" y="0" drill="1.1938" diameter="2.794"/>
<text x="-4.7625" y="2.8575" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-4.7625" y="2.8575" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.7625" y="2.8575" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DSOD123">
<description>&lt;b&gt;Diode&lt;/b&gt; SMD,  SOD-123 package&lt;br&gt;
&amp;nbsp;- MMSZ16</description>
<wire x1="1.27" y1="-0.7938" x2="-1.27" y2="-0.7938" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="-0.7938" x2="-1.27" y2="-0.3175" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="-0.3175" x2="-1.27" y2="0.3175" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0.3175" x2="-1.27" y2="0.7938" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0.7938" x2="1.27" y2="0.7938" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0.7938" x2="1.27" y2="0.3175" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0.3175" x2="1.27" y2="-0.3175" width="0.1524" layer="51"/>
<wire x1="1.27" y1="-0.3175" x2="1.27" y2="-0.7938" width="0.1524" layer="51"/>
<wire x1="-3.0163" y1="0.9525" x2="2.9751" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.9751" y1="0.9525" x2="3.175" y2="0.9525" width="0.254" layer="21"/>
<wire x1="3.175" y1="0.9525" x2="3.175" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="3.175" y1="-0.9525" x2="2.9751" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.9751" y1="-0.9525" x2="-3.0163" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-3.0163" y1="-0.9525" x2="-3.0163" y2="0.9525" width="0.254" layer="21"/>
<wire x1="0.9524" y1="0.7144" x2="0.9524" y2="-0.7143" width="0.254" layer="51"/>
<wire x1="2.9751" y1="0.9525" x2="2.9751" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.1904" y1="0.7144" x2="1.1904" y2="-0.7143" width="0.254" layer="51"/>
<wire x1="0.7142" y1="0.7145" x2="0.7142" y2="-0.7143" width="0.254" layer="51"/>
<wire x1="-1.27" y1="0.3175" x2="-1.905" y2="0.3175" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="0.3175" x2="-1.905" y2="-0.3175" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="-0.3175" x2="-1.27" y2="-0.3175" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0.3175" x2="1.905" y2="0.3175" width="0.1524" layer="51"/>
<wire x1="1.905" y1="0.3175" x2="1.905" y2="-0.3175" width="0.1524" layer="51"/>
<wire x1="1.905" y1="-0.3175" x2="1.27" y2="-0.3175" width="0.1524" layer="51"/>
<smd name="A" x="-1.9" y="0" dx="1.6" dy="1.2" layer="1"/>
<smd name="C" x="1.9" y="0" dx="1.6" dy="1.2" layer="1"/>
<text x="-1.905" y="1.1113" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-1.905" y="1.1113" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.0163" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-0.3175" y="-0.397" size="0.762" layer="51" font="vector" ratio="16">D</text>
</package>
<package name="DZ05B">
<description>&lt;b&gt;Zener diode&lt;/b&gt; 0.5" (4*9mm), 1.2mm drills</description>
<wire x1="-6.35" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="6.35" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="-1.27" x2="-2.0637" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="1.9844" x2="3.4925" y2="1.9844" width="0.254" layer="21"/>
<wire x1="3.4925" y1="1.9844" x2="4.445" y2="1.9844" width="0.254" layer="21"/>
<wire x1="4.445" y1="1.9844" x2="4.445" y2="-1.9844" width="0.254" layer="21"/>
<wire x1="4.445" y1="-1.9844" x2="3.4925" y2="-1.9844" width="0.254" layer="21"/>
<wire x1="3.4925" y1="-1.9844" x2="-4.445" y2="-1.9844" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-1.9844" x2="-4.445" y2="1.9844" width="0.254" layer="21"/>
<wire x1="3.4925" y1="1.9844" x2="3.4925" y2="-1.9844" width="0.254" layer="21"/>
<wire x1="-4.445" y1="1.9844" x2="4.445" y2="1.9844" width="0.4064" layer="51"/>
<wire x1="4.445" y1="1.9844" x2="4.445" y2="-1.9844" width="0.4064" layer="51"/>
<wire x1="4.445" y1="-1.9844" x2="-4.445" y2="-1.9844" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="-1.9844" x2="-4.445" y2="1.9844" width="0.4064" layer="51"/>
<pad name="A" x="-6.35" y="0" drill="1.1938" diameter="2.794"/>
<pad name="C" x="6.35" y="0" drill="1.1938" diameter="2.794"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.445" y="2.2225" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D04N-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.4", DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-5.08" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="5.08" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-3.81" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="3.81" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-5.08" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="5.08" y="0" drill="0.8128" diameter="2.032"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D01N-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.1", DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<circle x="-1.27" y="0" radius="1.27" width="0.4064" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="1.27" y="0" drill="0.8128" diameter="2.032"/>
<text x="0.635" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.635" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="0.635" y="-1.5875" size="1.27" layer="51" font="vector" ratio="16">C</text>
<text x="-2.54" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="3.175" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D01R-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.1", reduced pads, DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.2225" y1="0.9525" x2="2.2225" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.2225" y1="0.9525" x2="2.2225" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.2225" y1="-0.9525" x2="-2.2225" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.2225" y1="-0.9525" x2="-2.2225" y2="0.9525" width="0.254" layer="21"/>
<circle x="-1.27" y="0" radius="1.27" width="0.4064" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="1.27" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="0.635" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.635" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="0.635" y="-1.5875" size="1.27" layer="51" font="vector" ratio="16">C</text>
<text x="-2.54" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="2.54" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D02N-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.2", DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-2.54" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="2.54" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<pad name="A" x="-2.54" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="2.54" y="0" drill="0.8128" diameter="2.032"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.81" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="4.1275" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D02R-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.2", reduced pads, DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-2.54" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="2.54" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.4925" y1="0.9525" x2="3.4925" y2="0.9525" width="0.254" layer="21"/>
<wire x1="3.4925" y1="0.9525" x2="3.4925" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="3.4925" y1="-0.9525" x2="-3.4925" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-3.4925" y1="-0.9525" x2="-3.4925" y2="0.9525" width="0.254" layer="21"/>
<pad name="A" x="-2.54" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="2.54" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.4925" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="3.81" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D03N-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.3", DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-3.81" y1="0" x2="-0.3175" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0" x2="3.81" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.3812" y1="1.27" x2="-2.3812" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.3812" y1="-1.27" x2="-0.3175" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.3175" y1="0" x2="-2.3812" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-0.1587" y1="1.27" x2="-0.1587" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="0.9525" x2="1.5875" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.5875" y1="0.9525" x2="2.54" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.54" y1="0.9525" x2="2.54" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.54" y1="-0.9525" x2="1.5875" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.5875" y1="-0.9525" x2="-2.54" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-0.9525" x2="-2.54" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.5875" y1="0.9525" x2="1.5875" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-3.81" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="3.81" y="0" drill="0.8128" diameter="2.032"/>
<text x="0.3175" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.3175" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.54" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D03R-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.3", reduced pads, DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-3.81" y1="0" x2="-0.3175" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0" x2="3.81" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.3812" y1="1.27" x2="-2.3812" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.3812" y1="-1.27" x2="-0.3175" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.3175" y1="0" x2="-2.3812" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-0.1587" y1="1.27" x2="-0.1587" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="0.9525" x2="1.5875" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.5875" y1="0.9525" x2="2.54" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.54" y1="0.9525" x2="2.54" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.54" y1="-0.9525" x2="1.5875" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.5875" y1="-0.9525" x2="-2.54" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-0.9525" x2="-2.54" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.5875" y1="0.9525" x2="1.5875" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-3.81" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="3.81" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="0.3175" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.3175" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.54" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D04R-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.4", reduced pads, DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-5.08" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="5.08" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-4.1275" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="4.1275" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-5.08" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="5.08" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D05N-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.5", DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-6.35" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="6.35" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-5.08" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="5.08" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-6.35" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="6.35" y="0" drill="0.8128" diameter="2.032"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D05R-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.5", reduced pads, DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-6.35" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="6.35" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-5.3975" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="5.3975" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-6.35" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="6.35" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D06N-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.6", DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-7.62" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="7.62" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-6.35" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="6.35" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-7.62" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="7.62" y="0" drill="0.8128" diameter="2.032"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D06R-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.6", reduced pads, DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-7.62" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="7.62" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-6.6675" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="6.6675" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-7.62" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="7.62" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D07N-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.7", DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-8.89" y1="0" x2="-0.3175" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0" x2="8.89" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.3812" y1="1.27" x2="-2.3812" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.3812" y1="-1.27" x2="-0.3175" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.3175" y1="0" x2="-2.3812" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-0.1587" y1="1.27" x2="-0.1587" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-7.62" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="7.62" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-8.89" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="8.89" y="0" drill="0.8128" diameter="2.032"/>
<text x="0.3175" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.3175" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D07R-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.7", reduced pads, DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-8.89" y1="0" x2="-0.3175" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0" x2="8.89" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.3812" y1="1.27" x2="-2.3812" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.3812" y1="-1.27" x2="-0.3175" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.3175" y1="0" x2="-2.3812" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-0.1587" y1="1.27" x2="-0.1587" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-7.9375" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="7.9375" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-8.89" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="8.89" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="0.3175" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.3175" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D08N-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.8", DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-10.16" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="10.16" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-8.89" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="8.89" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-10.16" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="10.16" y="0" drill="0.8128" diameter="2.032"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D08R-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.8", reduced pads, DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-10.16" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="10.16" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-9.2075" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="9.2075" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-10.16" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="10.16" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D09N-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.9", DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-11.43" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="11.43" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-10.16" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="10.16" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-11.43" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="11.43" y="0" drill="0.8128" diameter="2.032"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D09R-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.9", reduced pads, DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-11.43" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="11.43" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-10.4775" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="10.4775" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-11.43" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="11.43" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D10N-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 1.0", DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-12.7" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="12.7" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-11.43" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="11.43" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-12.7" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="12.7" y="0" drill="0.8128" diameter="2.032"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D10R-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 1.0", reduced pads, DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-12.7" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="12.7" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-11.7475" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="11.7475" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-12.7" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="12.7" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D11N-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 1.1", DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-13.97" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="13.97" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-12.7" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="12.7" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-13.97" y="0" drill="0.8128" diameter="2.032"/>
<pad name="C" x="13.97" y="0" drill="0.8128" diameter="2.032"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D11R-DO35-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 1.1", reduced pads, DO-35&lt;br&gt;
1.9mm diameter, 0.8mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-13.97" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="13.97" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0.9525" x2="1.905" y2="0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0.9525" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="-0.9525" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-0.9525" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-13.0175" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="13.0175" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="0.9525" x2="1.905" y2="-0.9525" width="0.254" layer="21"/>
<pad name="A" x="-13.97" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="C" x="13.97" y="0" drill="0.8128" diameter="1.397" shape="square"/>
<text x="1.5875" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="1.5875" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.27" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D01N-DO41-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.1", DO-41&lt;br&gt;
2.7mm diameter, 1.0mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.6988" y1="1.4288" x2="2.6988" y2="1.4288" width="0.254" layer="21"/>
<wire x1="2.6988" y1="1.4288" x2="2.6988" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="2.6988" y1="-1.4288" x2="-2.6988" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.6988" y1="-1.4288" x2="-2.6988" y2="1.4288" width="0.254" layer="21"/>
<circle x="-1.27" y="0" radius="1.4288" width="0.4064" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.9906" diameter="2.032"/>
<pad name="C" x="1.27" y="0" drill="0.9906" diameter="2.032"/>
<text x="0.635" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.635" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="0.635" y="-1.5875" size="1.27" layer="51" font="vector" ratio="16">C</text>
<text x="-2.6988" y="1.7463" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="3.175" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D04N-DO41-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.4", DO-41&lt;br&gt;
2.7mm diameter, 1.0mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-5.08" y1="0" x2="0.7938" y2="0" width="0.1524" layer="51"/>
<wire x1="0.7938" y1="0" x2="5.08" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.6349" y1="0.7938" x2="-0.6349" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-0.6349" y1="-0.7938" x2="0.7938" y2="0" width="0.254" layer="51"/>
<wire x1="0.7938" y1="0" x2="-0.6349" y2="0.7938" width="0.254" layer="51"/>
<wire x1="0.9526" y1="0.7938" x2="0.9526" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="-3.81" y1="0" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="3.81" y1="0" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="51"/>
<pad name="A" x="-5.08" y="0" drill="0.9906" diameter="2.032"/>
<pad name="C" x="5.08" y="0" drill="0.9906" diameter="2.032"/>
<text x="-2.8575" y="1.905" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.8575" y="1.905" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.7463" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D02N-DO41-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.2", DO-41&lt;br&gt;
2.7mm diameter, 1.0mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.9688" y1="1.4288" x2="3.9688" y2="1.4288" width="0.254" layer="21"/>
<wire x1="3.9688" y1="1.4288" x2="3.9688" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="3.9688" y1="-1.4288" x2="-3.9688" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-3.9688" y1="-1.4288" x2="-3.9688" y2="1.4288" width="0.254" layer="21"/>
<circle x="-2.54" y="0" radius="1.4288" width="0.4064" layer="51"/>
<pad name="A" x="-2.54" y="0" drill="0.9906" diameter="2.032"/>
<pad name="C" x="2.54" y="0" drill="0.9906" diameter="2.032"/>
<text x="-0.635" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.635" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="1.905" y="-1.5875" size="1.27" layer="51" font="vector" ratio="16">C</text>
<text x="-3.9688" y="1.7463" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="4.445" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D03N-DO41-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.3", DO-41&lt;br&gt;
2.7mm diameter, 1.0mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-3.81" y1="0" x2="0.7938" y2="0" width="0.1524" layer="51"/>
<wire x1="0.7938" y1="0" x2="3.81" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.6349" y1="0.7938" x2="-0.6349" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-0.6349" y1="-0.7938" x2="0.7938" y2="0" width="0.254" layer="51"/>
<wire x1="0.7938" y1="0" x2="-0.6349" y2="0.7938" width="0.254" layer="51"/>
<wire x1="0.9526" y1="0.7938" x2="0.9526" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="1.4288" x2="-2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="0.9525" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-1.4288" x2="2.8575" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="51"/>
<pad name="A" x="-3.81" y="0" drill="0.9906" diameter="2.032"/>
<pad name="C" x="3.81" y="0" drill="0.9906" diameter="2.032"/>
<text x="-2.8575" y="1.905" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.8575" y="1.905" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.7463" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D05N-DO41-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.5", DO-41&lt;br&gt;
2.7mm diameter, 1.0mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-6.35" y1="0" x2="0.7938" y2="0" width="0.1524" layer="51"/>
<wire x1="0.7938" y1="0" x2="6.35" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.6349" y1="0.7938" x2="-0.6349" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-0.6349" y1="-0.7938" x2="0.7938" y2="0" width="0.254" layer="51"/>
<wire x1="0.7938" y1="0" x2="-0.6349" y2="0.7938" width="0.254" layer="51"/>
<wire x1="0.9526" y1="0.7938" x2="0.9526" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0" x2="-4.9213" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="4.9213" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="51"/>
<pad name="A" x="-6.35" y="0" drill="0.9906" diameter="2.032"/>
<pad name="C" x="6.35" y="0" drill="0.9906" diameter="2.032"/>
<text x="-2.8575" y="1.905" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.8575" y="1.905" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.7463" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="3.3338" y="-1.5875" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D06N-DO41-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.6", DO-41&lt;br&gt;
2.7mm diameter, 1.0mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-7.62" y1="0" x2="0.7938" y2="0" width="0.1524" layer="51"/>
<wire x1="0.7938" y1="0" x2="7.62" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.6349" y1="0.7938" x2="-0.6349" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-0.6349" y1="-0.7938" x2="0.7938" y2="0" width="0.254" layer="51"/>
<wire x1="0.7938" y1="0" x2="-0.6349" y2="0.7938" width="0.254" layer="51"/>
<wire x1="0.9526" y1="0.7938" x2="0.9526" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0" x2="-6.1913" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="6.1913" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="51"/>
<pad name="A" x="-7.62" y="0" drill="0.9906" diameter="2.032"/>
<pad name="C" x="7.62" y="0" drill="0.9906" diameter="2.032"/>
<text x="-2.8575" y="1.905" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.8575" y="1.905" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.8575" y="1.7463" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="3.3338" y="-1.5875" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D07N-DO41-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.7", DO-41&lt;br&gt;
2.7mm diameter, 1.0mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-8.89" y1="0" x2="0.7938" y2="0" width="0.1524" layer="51"/>
<wire x1="0.7938" y1="0" x2="8.89" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.6349" y1="0.7938" x2="-0.6349" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-0.6349" y1="-0.7938" x2="0.7938" y2="0" width="0.254" layer="51"/>
<wire x1="0.7938" y1="0" x2="-0.6349" y2="0.7938" width="0.254" layer="51"/>
<wire x1="0.9526" y1="0.7938" x2="0.9526" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0" x2="-7.4613" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="7.4613" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="51"/>
<pad name="A" x="-8.89" y="0" drill="0.9906" diameter="2.032"/>
<pad name="C" x="8.89" y="0" drill="0.9906" diameter="2.032"/>
<text x="-2.8575" y="1.905" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.8575" y="1.905" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="3.3338" y="0.3175" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="3.3338" y="-1.5875" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D08N-DO41-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.8", DO-41&lt;br&gt;
2.7mm diameter, 1.0mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-10.16" y1="0" x2="0.7938" y2="0" width="0.1524" layer="51"/>
<wire x1="0.7938" y1="0" x2="10.16" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.6349" y1="0.7938" x2="-0.6349" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-0.6349" y1="-0.7938" x2="0.7938" y2="0" width="0.254" layer="51"/>
<wire x1="0.7938" y1="0" x2="-0.6349" y2="0.7938" width="0.254" layer="51"/>
<wire x1="0.9526" y1="0.7938" x2="0.9526" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0" x2="-8.7313" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="8.7313" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="51"/>
<pad name="A" x="-10.16" y="0" drill="0.9906" diameter="2.032"/>
<pad name="C" x="10.16" y="0" drill="0.9906" diameter="2.032"/>
<text x="3.3338" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="3.3338" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="3.3338" y="0.3175" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="3.3338" y="-1.5875" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D09N-DO41-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.9", DO-41&lt;br&gt;
2.7mm diameter, 1.0mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-11.43" y1="0" x2="0.7938" y2="0" width="0.1524" layer="51"/>
<wire x1="0.7938" y1="0" x2="11.43" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.6349" y1="0.7938" x2="-0.6349" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-0.6349" y1="-0.7938" x2="0.7938" y2="0" width="0.254" layer="51"/>
<wire x1="0.7938" y1="0" x2="-0.6349" y2="0.7938" width="0.254" layer="51"/>
<wire x1="0.9526" y1="0.7938" x2="0.9526" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0" x2="-10.0013" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="10.0013" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="51"/>
<pad name="A" x="-11.43" y="0" drill="0.9906" diameter="2.032"/>
<pad name="C" x="11.43" y="0" drill="0.9906" diameter="2.032"/>
<text x="3.3338" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="3.3338" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="3.3338" y="0.3175" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="3.3338" y="-1.5875" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D10N-DO41-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 1.0", DO-41&lt;br&gt;
2.7mm diameter, 1.0mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-12.7" y1="0" x2="0.7938" y2="0" width="0.1524" layer="51"/>
<wire x1="0.7938" y1="0" x2="12.7" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.6349" y1="0.7938" x2="-0.6349" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-0.6349" y1="-0.7938" x2="0.7938" y2="0" width="0.254" layer="51"/>
<wire x1="0.7938" y1="0" x2="-0.6349" y2="0.7938" width="0.254" layer="51"/>
<wire x1="0.9526" y1="0.7938" x2="0.9526" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0" x2="-11.2713" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="11.2713" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="51"/>
<pad name="A" x="-12.7" y="0" drill="0.9906" diameter="2.032"/>
<pad name="C" x="12.7" y="0" drill="0.9906" diameter="2.032"/>
<text x="3.3338" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="3.3338" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="3.3338" y="0.3175" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="3.3338" y="-1.5875" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D11N-DO41-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 1.1", DO-41&lt;br&gt;
2.7mm diameter, 1.0mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-13.97" y1="0" x2="0.7938" y2="0" width="0.1524" layer="51"/>
<wire x1="0.7938" y1="0" x2="13.97" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.6349" y1="0.7938" x2="-0.6349" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-0.6349" y1="-0.7938" x2="0.7938" y2="0" width="0.254" layer="51"/>
<wire x1="0.7938" y1="0" x2="-0.6349" y2="0.7938" width="0.254" layer="51"/>
<wire x1="0.9526" y1="0.7938" x2="0.9526" y2="-0.7938" width="0.254" layer="51"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="0" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="0" x2="-2.8575" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="1.4288" x2="1.905" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="1.4288" x2="2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="1.4288" x2="2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="-1.4288" x2="1.905" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="1.905" y1="-1.4288" x2="-2.8575" y2="-1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="-1.4288" x2="-2.8575" y2="1.4288" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="0" x2="-12.5413" y2="0" width="0.254" layer="21"/>
<wire x1="2.8575" y1="0" x2="12.5413" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.4288" x2="1.905" y2="-1.4288" width="0.254" layer="51"/>
<pad name="A" x="-13.97" y="0" drill="0.9906" diameter="2.032"/>
<pad name="C" x="13.97" y="0" drill="0.9906" diameter="2.032"/>
<text x="3.3338" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="3.3338" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="3.3338" y="0.3175" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="3.3338" y="-1.5875" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D04N-DO15-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.4", DO-15&lt;br&gt;
3.2mm diameter, 1.0mm drills&lt;br&gt;
with &lt;tt&gt;VALUE&lt;/tt&gt; placeholder</description>
<wire x1="-5.08" y1="0" x2="-1.5875" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5875" y1="0" x2="5.08" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.6512" y1="1.27" x2="-3.6512" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.6512" y1="-1.27" x2="-1.5875" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="0" x2="-3.6512" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.4287" y1="1.27" x2="-1.4287" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.175" y1="1.5875" x2="1.905" y2="1.5875" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.5875" x2="3.175" y2="1.5875" width="0.254" layer="21"/>
<wire x1="3.175" y1="1.5875" x2="3.175" y2="0" width="0.254" layer="21"/>
<wire x1="3.175" y1="0" x2="3.175" y2="-1.5876" width="0.254" layer="21"/>
<wire x1="3.175" y1="-1.5876" x2="1.905" y2="-1.5875" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.5875" x2="-3.175" y2="-1.5875" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-1.5875" x2="-3.175" y2="0" width="0.254" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="1.5875" width="0.254" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.254" layer="21"/>
<wire x1="3.81" y1="0" x2="3.175" y2="0" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.5875" x2="1.905" y2="-1.5875" width="0.254" layer="21"/>
<pad name="A" x="-5.08" y="0" drill="0.9906" diameter="2.032"/>
<pad name="C" x="5.08" y="0" drill="0.9906" diameter="2.032"/>
<text x="-0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.175" y="1.905" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="TO220-2A">
<description>&lt;b&gt;TO-220&lt;/b&gt;&lt;br&gt;
Power package, 2 pins</description>
<wire x1="-5.08" y1="2.54" x2="5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="1.5875" width="0.4064" layer="51"/>
<wire x1="5.08" y1="1.5875" x2="4.445" y2="-1.905" width="0.4064" layer="51"/>
<wire x1="4.445" y1="-1.905" x2="-4.445" y2="-1.905" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="-1.905" x2="-5.08" y2="1.5875" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="1.5875" x2="-5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="1.5875" x2="5.08" y2="1.5875" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="21"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="1.5875" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.5875" x2="4.445" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-1.905" x2="-5.08" y2="1.5875" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.5875" x2="-5.08" y2="2.54" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.5875" x2="-3.81" y2="1.5875" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.5875" x2="3.81" y2="1.5875" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-1.905" x2="-3.4925" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-1.5875" y1="-1.905" x2="1.5875" y2="-1.905" width="0.254" layer="21"/>
<wire x1="3.4925" y1="-1.905" x2="4.445" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-1.27" y1="1.5875" x2="1.27" y2="1.5875" width="0.254" layer="21"/>
<circle x="2.54" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-2.54" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.9906" diameter="1.905" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.9906" diameter="1.905" shape="long" rot="R90"/>
<text x="-5.08" y="3.175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-5.08" y="3.175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.445" y="-3.4925" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="TO220-2C">
<description>&lt;b&gt;TO-220&lt;/b&gt;, horizontal mounting&lt;br&gt;
Power package, 2 pins</description>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="10.16" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="10.16" x2="-5.08" y2="12.7" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="12.7" x2="-5.08" y2="15.875" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="15.875" x2="-5.08" y2="17.145" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="23.495" x2="5.08" y2="23.495" width="0.4064" layer="51"/>
<wire x1="5.08" y1="17.145" x2="5.08" y2="15.875" width="0.4064" layer="51"/>
<wire x1="5.08" y1="15.875" x2="5.08" y2="12.7" width="0.4064" layer="51"/>
<wire x1="5.08" y1="12.7" x2="5.08" y2="10.16" width="0.4064" layer="51"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="7.62" width="0.4064" layer="51"/>
<wire x1="5.08" y1="7.62" x2="3.175" y2="7.62" width="0.4064" layer="51"/>
<wire x1="3.175" y1="7.62" x2="1.905" y2="7.62" width="0.4064" layer="51"/>
<wire x1="1.905" y1="7.62" x2="-1.905" y2="7.62" width="0.4064" layer="51"/>
<wire x1="-1.905" y1="7.62" x2="-3.175" y2="7.62" width="0.4064" layer="51"/>
<wire x1="-3.175" y1="7.62" x2="-5.08" y2="7.62" width="0.4064" layer="51"/>
<wire x1="5.08" y1="17.145" x2="-5.08" y2="17.145" width="0.4064" layer="51"/>
<wire x1="1.5875" y1="18.7325" x2="-1.5875" y2="21.9075" width="0.762" layer="51"/>
<wire x1="5.08" y1="12.7" x2="5.08" y2="10.16" width="0.254" layer="51" curve="180"/>
<wire x1="-5.08" y1="12.7" x2="-5.08" y2="10.16" width="0.254" layer="51" curve="-180"/>
<wire x1="5.08" y1="17.145" x2="5.08" y2="17.78" width="0.4064" layer="51"/>
<wire x1="5.08" y1="17.78" x2="4.445" y2="17.78" width="0.4064" layer="51"/>
<wire x1="4.445" y1="17.78" x2="4.445" y2="19.05" width="0.4064" layer="51"/>
<wire x1="4.445" y1="19.05" x2="5.08" y2="19.05" width="0.4064" layer="51"/>
<wire x1="5.08" y1="19.05" x2="5.08" y2="23.495" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="17.145" x2="-5.08" y2="17.78" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="17.78" x2="-4.445" y2="17.78" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="17.78" x2="-4.445" y2="19.05" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="19.05" x2="-5.08" y2="19.05" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="19.05" x2="-5.08" y2="23.495" width="0.4064" layer="51"/>
<wire x1="5.08" y1="15.875" x2="-5.08" y2="15.875" width="0.254" layer="51"/>
<wire x1="3.175" y1="7.62" x2="3.175" y2="3.81" width="0.254" layer="51"/>
<wire x1="3.175" y1="3.81" x2="2.54" y2="3.81" width="0.254" layer="51"/>
<wire x1="2.54" y1="3.81" x2="1.905" y2="3.81" width="0.254" layer="51"/>
<wire x1="1.905" y1="3.81" x2="1.905" y2="7.62" width="0.254" layer="51"/>
<wire x1="-1.905" y1="7.62" x2="-1.905" y2="3.81" width="0.254" layer="51"/>
<wire x1="-1.905" y1="3.81" x2="-2.54" y2="3.81" width="0.254" layer="51"/>
<wire x1="-2.54" y1="3.81" x2="-3.175" y2="3.81" width="0.254" layer="51"/>
<wire x1="-3.175" y1="3.81" x2="-3.175" y2="7.62" width="0.254" layer="51"/>
<wire x1="2.54" y1="3.81" x2="2.54" y2="0" width="0.254" layer="51"/>
<wire x1="-2.54" y1="3.81" x2="-2.54" y2="0" width="0.254" layer="51"/>
<wire x1="-5.715" y1="24.765" x2="5.715" y2="24.765" width="0.254" layer="21"/>
<wire x1="5.715" y1="24.765" x2="5.715" y2="5.08" width="0.254" layer="21"/>
<wire x1="5.715" y1="5.08" x2="4.445" y2="5.08" width="0.254" layer="21"/>
<wire x1="4.445" y1="5.08" x2="4.445" y2="-2.54" width="0.254" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="-4.445" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="5.08" width="0.254" layer="21"/>
<wire x1="-4.445" y1="5.08" x2="-5.715" y2="5.08" width="0.254" layer="21"/>
<wire x1="-5.715" y1="5.08" x2="-5.715" y2="24.765" width="0.254" layer="21"/>
<circle x="0" y="20.32" radius="2.54" width="0.4064" layer="51"/>
<pad name="2" x="2.54" y="0" drill="0.9906" diameter="1.905" shape="long" rot="R90"/>
<pad name="1" x="-2.54" y="0" drill="0.9906" diameter="1.905" shape="long" rot="R90"/>
<pad name="CASE" x="0" y="20.32" drill="3.2004" diameter="7.62"/>
<text x="-4.445" y="8.255" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.445" y="8.255" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-5.715" y="25.4" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="TO220-2D">
<description>&lt;b&gt;TO-220&lt;/b&gt;, horizontal mounting&lt;br&gt;
Power package, 2 SMD pins</description>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="10.16" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="10.16" x2="-5.08" y2="12.7" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="12.7" x2="-5.08" y2="15.875" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="15.875" x2="-5.08" y2="17.145" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="23.495" x2="5.08" y2="23.495" width="0.4064" layer="51"/>
<wire x1="5.08" y1="17.145" x2="5.08" y2="15.875" width="0.4064" layer="51"/>
<wire x1="5.08" y1="15.875" x2="5.08" y2="12.7" width="0.4064" layer="51"/>
<wire x1="5.08" y1="12.7" x2="5.08" y2="10.16" width="0.4064" layer="51"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="7.62" width="0.4064" layer="51"/>
<wire x1="5.08" y1="7.62" x2="2.8575" y2="7.62" width="0.4064" layer="51"/>
<wire x1="2.8575" y1="7.62" x2="2.2225" y2="7.62" width="0.4064" layer="51"/>
<wire x1="2.2225" y1="7.62" x2="-2.2225" y2="7.62" width="0.4064" layer="51"/>
<wire x1="-2.2225" y1="7.62" x2="-2.8575" y2="7.62" width="0.4064" layer="51"/>
<wire x1="-2.8575" y1="7.62" x2="-5.08" y2="7.62" width="0.4064" layer="51"/>
<wire x1="5.08" y1="17.145" x2="-5.08" y2="17.145" width="0.4064" layer="51"/>
<wire x1="1.5875" y1="18.7325" x2="-1.5875" y2="21.9075" width="0.762" layer="51"/>
<wire x1="5.08" y1="12.7" x2="5.08" y2="10.16" width="0.254" layer="51" curve="180"/>
<wire x1="-5.08" y1="12.7" x2="-5.08" y2="10.16" width="0.254" layer="51" curve="-180"/>
<wire x1="5.08" y1="17.145" x2="5.08" y2="17.78" width="0.4064" layer="51"/>
<wire x1="5.08" y1="17.78" x2="4.445" y2="17.78" width="0.4064" layer="51"/>
<wire x1="4.445" y1="17.78" x2="4.445" y2="19.05" width="0.4064" layer="51"/>
<wire x1="4.445" y1="19.05" x2="5.08" y2="19.05" width="0.4064" layer="51"/>
<wire x1="5.08" y1="19.05" x2="5.08" y2="23.495" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="17.145" x2="-5.08" y2="17.78" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="17.78" x2="-4.445" y2="17.78" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="17.78" x2="-4.445" y2="19.05" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="19.05" x2="-5.08" y2="19.05" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="19.05" x2="-5.08" y2="23.495" width="0.4064" layer="51"/>
<wire x1="5.08" y1="15.875" x2="-5.08" y2="15.875" width="0.254" layer="51"/>
<wire x1="2.8575" y1="7.62" x2="2.8575" y2="-1.27" width="0.254" layer="51"/>
<wire x1="2.8575" y1="-1.27" x2="2.2225" y2="-1.27" width="0.254" layer="51"/>
<wire x1="2.2225" y1="-1.27" x2="2.2225" y2="7.62" width="0.254" layer="51"/>
<wire x1="-2.2225" y1="7.62" x2="-2.2225" y2="-1.27" width="0.254" layer="51"/>
<wire x1="-2.2225" y1="-1.27" x2="-2.8575" y2="-1.27" width="0.254" layer="51"/>
<wire x1="-2.8575" y1="-1.27" x2="-2.8575" y2="7.62" width="0.254" layer="51"/>
<wire x1="-5.715" y1="24.13" x2="5.715" y2="24.13" width="0.254" layer="21"/>
<wire x1="5.715" y1="24.13" x2="5.715" y2="5.08" width="0.254" layer="21"/>
<wire x1="5.715" y1="5.08" x2="4.445" y2="5.08" width="0.254" layer="21"/>
<wire x1="4.445" y1="5.08" x2="4.445" y2="-2.54" width="0.254" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="-4.445" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="5.08" width="0.254" layer="21"/>
<wire x1="-4.445" y1="5.08" x2="-5.715" y2="5.08" width="0.254" layer="21"/>
<wire x1="-5.715" y1="5.08" x2="-5.715" y2="24.13" width="0.254" layer="21"/>
<circle x="0" y="20.32" radius="2.54" width="0.4064" layer="51"/>
<pad name="CASE" x="0" y="20.32" drill="3.2004" diameter="3.81"/>
<smd name="1" x="-2.54" y="0" dx="2.032" dy="3.81" layer="1" rot="R180"/>
<smd name="2" x="2.54" y="0" dx="2.032" dy="3.81" layer="1" rot="R180"/>
<text x="-4.445" y="8.255" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.445" y="8.255" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-5.715" y="24.4475" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D0603-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; SMD, size 0603</description>
<wire x1="-0.8255" y1="-0.4445" x2="-0.381" y2="-0.4445" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-0.4445" x2="0.2223" y2="-0.4445" width="0.1524" layer="51"/>
<wire x1="0.2223" y1="-0.4445" x2="0.8255" y2="-0.4445" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="-0.4445" x2="0.8255" y2="0.4445" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="0.4445" x2="0.2223" y2="0.4445" width="0.1524" layer="51"/>
<wire x1="0.2223" y1="0.4445" x2="-0.381" y2="0.4445" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="0.4445" x2="-0.8255" y2="0.4445" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="0.4445" x2="-0.8255" y2="-0.4445" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="0.4445" x2="-0.381" y2="-0.4445" width="0.1524" layer="51"/>
<wire x1="0.2223" y1="0.4445" x2="0.2223" y2="-0.4445" width="0.1524" layer="51"/>
<wire x1="0.3573" y1="0.4366" x2="0.3573" y2="-0.4366" width="0.1524" layer="51"/>
<wire x1="0.4763" y1="0.4366" x2="0.4763" y2="-0.4366" width="0.1524" layer="51"/>
<wire x1="-1.8415" y1="0.8255" x2="1.8415" y2="0.8255" width="0.254" layer="21"/>
<wire x1="1.8415" y1="0.8255" x2="1.8415" y2="-0.8255" width="0.254" layer="21"/>
<wire x1="1.8415" y1="-0.8255" x2="-1.8415" y2="-0.8255" width="0.254" layer="21"/>
<wire x1="-1.8415" y1="-0.8255" x2="-1.8415" y2="0.8255" width="0.254" layer="21"/>
<wire x1="1.8415" y1="0.8255" x2="2.0638" y2="0.8255" width="0.254" layer="21"/>
<wire x1="1.8415" y1="-0.8255" x2="2.0638" y2="-0.8255" width="0.254" layer="21"/>
<wire x1="2.0638" y1="0.8255" x2="2.0638" y2="-0.8255" width="0.254" layer="21"/>
<wire x1="2.0638" y1="0.8255" x2="2.2225" y2="0.8255" width="0.254" layer="21"/>
<wire x1="2.0638" y1="-0.8255" x2="2.2225" y2="-0.8255" width="0.254" layer="21"/>
<wire x1="2.2225" y1="0.8255" x2="2.2225" y2="-0.8255" width="0.254" layer="21"/>
<smd name="C" x="0.889" y="0" dx="1.27" dy="1.016" layer="1"/>
<smd name="A" x="-0.889" y="0" dx="1.27" dy="1.016" layer="1"/>
<text x="-1.5875" y="0.7938" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-1.5875" y="0.7938" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="1.27" y="-0.635" size="1.27" layer="51" font="vector" ratio="16">C</text>
<text x="-1.905" y="1.1113" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D0805-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; SMD, size 0805</description>
<wire x1="-0.9922" y1="0.5159" x2="0.9922" y2="0.5159" width="0.1524" layer="51"/>
<wire x1="0.9922" y1="0.5159" x2="0.9922" y2="-0.5159" width="0.1524" layer="51"/>
<wire x1="0.9922" y1="-0.5159" x2="-0.9922" y2="-0.5159" width="0.1524" layer="51"/>
<wire x1="-0.9922" y1="-0.5159" x2="-0.9922" y2="0.5159" width="0.1524" layer="51"/>
<wire x1="0.7144" y1="0.4763" x2="0.7144" y2="-0.4763" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0.4763" x2="-0.635" y2="-0.4763" width="0.1524" layer="51"/>
<wire x1="-1.9844" y1="1.0319" x2="1.9844" y2="1.0319" width="0.254" layer="21"/>
<wire x1="1.9844" y1="1.0319" x2="1.9844" y2="-1.0319" width="0.254" layer="21"/>
<wire x1="1.9844" y1="-1.0319" x2="-1.9844" y2="-1.0319" width="0.254" layer="21"/>
<wire x1="-1.9844" y1="-1.0319" x2="-1.9844" y2="1.0319" width="0.254" layer="21"/>
<wire x1="0.4763" y1="0.4763" x2="0.4763" y2="-0.4763" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0.4763" x2="0.635" y2="-0.4763" width="0.1524" layer="51"/>
<wire x1="0.5556" y1="0.4763" x2="0.5556" y2="-0.4763" width="0.1524" layer="51"/>
<smd name="C" x="0.9525" y="0" dx="1.397" dy="1.397" layer="1"/>
<smd name="A" x="-0.9525" y="-0.0001" dx="1.397" dy="1.397" layer="1"/>
<text x="-1.5875" y="0.9525" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-1.5875" y="0.9525" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-0.3175" y="-0.397" size="0.762" layer="51" font="vector" ratio="16">D</text>
<text x="-2.0638" y="1.4288" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="2.3019" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
<text x="1.27" y="-0.635" size="1.27" layer="51" font="vector" ratio="16">C</text>
</package>
<package name="D1206-VALUE">
<description>&lt;b&gt;Diode&lt;/b&gt; SMD, size 1206</description>
<wire x1="-1.6272" y1="0.6746" x2="1.6272" y2="0.6746" width="0.1524" layer="51"/>
<wire x1="1.6272" y1="0.6746" x2="1.6272" y2="-0.6747" width="0.1524" layer="51"/>
<wire x1="1.6272" y1="-0.6747" x2="-1.6272" y2="-0.6747" width="0.1524" layer="51"/>
<wire x1="-1.6272" y1="-0.6747" x2="-1.6272" y2="0.6746" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="1.1113" y1="0.635" x2="1.1113" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.635" x2="0.9525" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="1.0319" y1="0.635" x2="1.0319" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="1.1906" y1="0.635" x2="1.1906" y2="-0.635" width="0.1524" layer="51"/>
<smd name="A" x="-1.5287" y="0" dx="1.524" dy="1.778" layer="1"/>
<smd name="C" x="1.5287" y="0" dx="1.524" dy="1.778" layer="1"/>
<text x="-1.7463" y="0.9525" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-1.7463" y="0.9525" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-0.3175" y="-0.397" size="0.762" layer="51" font="vector" ratio="16">D</text>
<text x="-2.54" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="2.9369" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
<text x="1.9844" y="-0.635" size="1.27" layer="51" font="vector" ratio="16">C</text>
</package>
<package name="D05D">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.5"&lt;br&gt;
5.2mm diameter, 1.5mm drills</description>
<wire x1="-6.35" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="6.35" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="2.54" x2="3.175" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.254" layer="21"/>
<wire x1="4.445" y1="2.54" x2="4.445" y2="-2.5401" width="0.254" layer="21"/>
<wire x1="4.445" y1="-2.5401" x2="3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="4.445" y2="2.54" width="0.4064" layer="51"/>
<wire x1="4.445" y1="2.54" x2="4.445" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="4.445" y1="-2.54" x2="-4.445" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="2.54" width="0.4064" layer="51"/>
<pad name="A" x="-6.35" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="6.35" y="0" drill="1.4986" diameter="3.048"/>
<text x="-4.445" y="2.8575" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-4.445" y="2.8575" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.445" y="2.8575" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D05E">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.5"&lt;br&gt;
8mm diameter, 1.5mm drills</description>
<wire x1="-6.35" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="6.35" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="4.445" x2="2.54" y2="4.445" width="0.254" layer="21"/>
<wire x1="2.54" y1="4.445" x2="3.81" y2="4.445" width="0.254" layer="21"/>
<wire x1="3.81" y1="4.445" x2="3.81" y2="0" width="0.254" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-4.4451" width="0.254" layer="21"/>
<wire x1="3.81" y1="-4.4451" x2="2.54" y2="-4.445" width="0.254" layer="21"/>
<wire x1="2.54" y1="-4.445" x2="-3.81" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-4.445" x2="-3.81" y2="0" width="0.254" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.81" y2="4.445" width="0.254" layer="21"/>
<wire x1="-4.445" y1="0" x2="-3.81" y2="0" width="0.254" layer="21"/>
<wire x1="4.445" y1="0" x2="3.81" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="4.445" x2="2.54" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-3.81" y1="4.445" x2="3.81" y2="4.445" width="0.4064" layer="51"/>
<wire x1="3.81" y1="4.445" x2="3.81" y2="-4.445" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-4.445" x2="-3.81" y2="-4.445" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-4.445" x2="-3.81" y2="4.445" width="0.4064" layer="51"/>
<pad name="A" x="-6.35" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="6.35" y="0" drill="1.4986" diameter="3.048"/>
<text x="-3.81" y="4.7625" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.81" y="4.7625" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.81" y="4.7625" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D06D">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.6"&lt;br&gt;
5.2mm diameter, 1.5mm drills</description>
<wire x1="-7.62" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="7.62" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="2.54" x2="3.175" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.254" layer="21"/>
<wire x1="4.445" y1="2.54" x2="4.445" y2="0" width="0.254" layer="21"/>
<wire x1="4.445" y1="0" x2="4.445" y2="-2.5401" width="0.254" layer="21"/>
<wire x1="4.445" y1="-2.5401" x2="3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="0" width="0.254" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="2.54" width="0.254" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.445" y2="0" width="0.254" layer="21"/>
<wire x1="5.715" y1="0" x2="4.445" y2="0" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="4.445" y2="2.54" width="0.4064" layer="51"/>
<wire x1="4.445" y1="2.54" x2="4.445" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="4.445" y1="-2.54" x2="-4.445" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="2.54" width="0.4064" layer="51"/>
<pad name="A" x="-7.62" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="7.62" y="0" drill="1.4986" diameter="3.048"/>
<text x="-4.445" y="2.8575" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-4.445" y="2.8575" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.445" y="2.8575" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D06E">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.6"&lt;br&gt;
8mm diameter, 1.5mm drills</description>
<wire x1="-7.62" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="7.62" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="4.445" x2="2.54" y2="4.445" width="0.254" layer="21"/>
<wire x1="2.54" y1="4.445" x2="3.81" y2="4.445" width="0.254" layer="21"/>
<wire x1="3.81" y1="4.445" x2="3.81" y2="0" width="0.254" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-4.4451" width="0.254" layer="21"/>
<wire x1="3.81" y1="-4.4451" x2="2.54" y2="-4.445" width="0.254" layer="21"/>
<wire x1="2.54" y1="-4.445" x2="-3.81" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-4.445" x2="-3.81" y2="0" width="0.254" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.81" y2="4.445" width="0.254" layer="21"/>
<wire x1="-5.715" y1="0" x2="-3.81" y2="0" width="0.254" layer="21"/>
<wire x1="5.715" y1="0" x2="3.81" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="4.445" x2="2.54" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-3.81" y1="4.445" x2="3.81" y2="4.445" width="0.4064" layer="51"/>
<wire x1="3.81" y1="4.445" x2="3.81" y2="-4.445" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-4.445" x2="-3.81" y2="-4.445" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-4.445" x2="-3.81" y2="4.445" width="0.4064" layer="51"/>
<pad name="A" x="-7.62" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="7.62" y="0" drill="1.4986" diameter="3.048"/>
<text x="-3.81" y="4.7625" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.81" y="4.7625" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.81" y="4.7625" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D07D">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.7"&lt;br&gt;
5.2mm diameter, 1.5mm drills</description>
<wire x1="-8.89" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="8.89" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="2.54" x2="3.175" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.254" layer="21"/>
<wire x1="4.445" y1="2.54" x2="4.445" y2="0" width="0.254" layer="21"/>
<wire x1="4.445" y1="0" x2="4.445" y2="-2.5401" width="0.254" layer="21"/>
<wire x1="4.445" y1="-2.5401" x2="3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="0" width="0.254" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="2.54" width="0.254" layer="21"/>
<wire x1="-6.985" y1="0" x2="-4.445" y2="0" width="0.254" layer="21"/>
<wire x1="6.985" y1="0" x2="4.445" y2="0" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="4.445" y2="2.54" width="0.4064" layer="51"/>
<wire x1="4.445" y1="2.54" x2="4.445" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="4.445" y1="-2.54" x2="-4.445" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="2.54" width="0.4064" layer="51"/>
<pad name="A" x="-8.89" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="8.89" y="0" drill="1.4986" diameter="3.048"/>
<text x="5.08" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="5.08" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.445" y="2.8575" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D07E">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.7"&lt;br&gt;
8mm diameter, 1.5mm drills</description>
<wire x1="-8.89" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="8.89" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="4.445" x2="2.54" y2="4.445" width="0.254" layer="21"/>
<wire x1="2.54" y1="4.445" x2="3.81" y2="4.445" width="0.254" layer="21"/>
<wire x1="3.81" y1="4.445" x2="3.81" y2="0" width="0.254" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-4.4451" width="0.254" layer="21"/>
<wire x1="3.81" y1="-4.4451" x2="2.54" y2="-4.445" width="0.254" layer="21"/>
<wire x1="2.54" y1="-4.445" x2="-3.81" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-4.445" x2="-3.81" y2="0" width="0.254" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.81" y2="4.445" width="0.254" layer="21"/>
<wire x1="-6.985" y1="0" x2="-3.81" y2="0" width="0.254" layer="21"/>
<wire x1="6.985" y1="0" x2="3.81" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="4.445" x2="2.54" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-3.81" y1="4.445" x2="3.81" y2="4.445" width="0.4064" layer="51"/>
<wire x1="3.81" y1="4.445" x2="3.81" y2="-4.445" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-4.445" x2="-3.81" y2="-4.445" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-4.445" x2="-3.81" y2="4.445" width="0.4064" layer="51"/>
<pad name="A" x="-8.89" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="8.89" y="0" drill="1.4986" diameter="3.048"/>
<text x="4.445" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="4.445" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.81" y="4.7625" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D08D">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.8"&lt;br&gt;
5.2mm diameter, 1.5mm drills</description>
<wire x1="-10.16" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="10.16" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="2.54" x2="3.175" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.254" layer="21"/>
<wire x1="4.445" y1="2.54" x2="4.445" y2="0" width="0.254" layer="21"/>
<wire x1="4.445" y1="0" x2="4.445" y2="-2.5401" width="0.254" layer="21"/>
<wire x1="4.445" y1="-2.5401" x2="3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="0" width="0.254" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="2.54" width="0.254" layer="21"/>
<wire x1="-8.255" y1="0" x2="-4.445" y2="0" width="0.254" layer="21"/>
<wire x1="8.255" y1="0" x2="4.445" y2="0" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="4.445" y2="2.54" width="0.4064" layer="51"/>
<wire x1="4.445" y1="2.54" x2="4.445" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="4.445" y1="-2.54" x2="-4.445" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="2.54" width="0.4064" layer="51"/>
<pad name="A" x="-10.16" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="10.16" y="0" drill="1.4986" diameter="3.048"/>
<text x="5.08" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="5.08" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.445" y="2.8575" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D08E">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.8"&lt;br&gt;
8mm diameter, 1.5mm drills</description>
<wire x1="-10.16" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="10.16" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="4.445" x2="2.54" y2="4.445" width="0.254" layer="21"/>
<wire x1="2.54" y1="4.445" x2="3.81" y2="4.445" width="0.254" layer="21"/>
<wire x1="3.81" y1="4.445" x2="3.81" y2="0" width="0.254" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-4.4451" width="0.254" layer="21"/>
<wire x1="3.81" y1="-4.4451" x2="2.54" y2="-4.445" width="0.254" layer="21"/>
<wire x1="2.54" y1="-4.445" x2="-3.81" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-4.445" x2="-3.81" y2="0" width="0.254" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.81" y2="4.445" width="0.254" layer="21"/>
<wire x1="-8.255" y1="0" x2="-3.81" y2="0" width="0.254" layer="21"/>
<wire x1="8.255" y1="0" x2="3.81" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="4.445" x2="2.54" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-3.81" y1="4.445" x2="3.81" y2="4.445" width="0.4064" layer="51"/>
<wire x1="3.81" y1="4.445" x2="3.81" y2="-4.445" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-4.445" x2="-3.81" y2="-4.445" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-4.445" x2="-3.81" y2="4.445" width="0.4064" layer="51"/>
<pad name="A" x="-10.16" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="10.16" y="0" drill="1.4986" diameter="3.048"/>
<text x="4.445" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="4.445" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.81" y="4.7625" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D09D">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.9"&lt;br&gt;
5.2mm diameter, 1.5mm drills</description>
<wire x1="-11.43" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="11.43" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="2.54" x2="3.175" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.254" layer="21"/>
<wire x1="4.445" y1="2.54" x2="4.445" y2="0" width="0.254" layer="21"/>
<wire x1="4.445" y1="0" x2="4.445" y2="-2.5401" width="0.254" layer="21"/>
<wire x1="4.445" y1="-2.5401" x2="3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="0" width="0.254" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="2.54" width="0.254" layer="21"/>
<wire x1="-9.525" y1="0" x2="-4.445" y2="0" width="0.254" layer="21"/>
<wire x1="9.525" y1="0" x2="4.445" y2="0" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="4.445" y2="2.54" width="0.4064" layer="51"/>
<wire x1="4.445" y1="2.54" x2="4.445" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="4.445" y1="-2.54" x2="-4.445" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="2.54" width="0.4064" layer="51"/>
<pad name="A" x="-11.43" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="11.43" y="0" drill="1.4986" diameter="3.048"/>
<text x="5.08" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="5.08" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.445" y="2.8575" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D09E">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.9"&lt;br&gt;
8mm diameter, 1.5mm drills</description>
<wire x1="-11.43" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="11.43" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="4.445" x2="2.54" y2="4.445" width="0.254" layer="21"/>
<wire x1="2.54" y1="4.445" x2="3.81" y2="4.445" width="0.254" layer="21"/>
<wire x1="3.81" y1="4.445" x2="3.81" y2="0" width="0.254" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-4.4451" width="0.254" layer="21"/>
<wire x1="3.81" y1="-4.4451" x2="2.54" y2="-4.445" width="0.254" layer="21"/>
<wire x1="2.54" y1="-4.445" x2="-3.81" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-4.445" x2="-3.81" y2="0" width="0.254" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.81" y2="4.445" width="0.254" layer="21"/>
<wire x1="-9.525" y1="0" x2="-3.81" y2="0" width="0.254" layer="21"/>
<wire x1="9.525" y1="0" x2="3.81" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="4.445" x2="2.54" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-3.81" y1="4.445" x2="3.81" y2="4.445" width="0.4064" layer="51"/>
<wire x1="3.81" y1="4.445" x2="3.81" y2="-4.445" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-4.445" x2="-3.81" y2="-4.445" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-4.445" x2="-3.81" y2="4.445" width="0.4064" layer="51"/>
<pad name="A" x="-11.43" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="11.43" y="0" drill="1.4986" diameter="3.048"/>
<text x="4.445" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="4.445" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.81" y="4.7625" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D10D">
<description>&lt;b&gt;Diode&lt;/b&gt; 1.0"&lt;br&gt;
5.2mm diameter, 1.5mm drills</description>
<wire x1="-12.7" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="12.7" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="2.54" x2="3.175" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.254" layer="21"/>
<wire x1="4.445" y1="2.54" x2="4.445" y2="0" width="0.254" layer="21"/>
<wire x1="4.445" y1="0" x2="4.445" y2="-2.5401" width="0.254" layer="21"/>
<wire x1="4.445" y1="-2.5401" x2="3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="0" width="0.254" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="2.54" width="0.254" layer="21"/>
<wire x1="-10.795" y1="0" x2="-4.445" y2="0" width="0.254" layer="21"/>
<wire x1="10.795" y1="0" x2="4.445" y2="0" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="4.445" y2="2.54" width="0.4064" layer="51"/>
<wire x1="4.445" y1="2.54" x2="4.445" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="4.445" y1="-2.54" x2="-4.445" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="2.54" width="0.4064" layer="51"/>
<pad name="A" x="-12.7" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="12.7" y="0" drill="1.4986" diameter="3.048"/>
<text x="5.08" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="5.08" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.445" y="2.8575" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="D10E">
<description>&lt;b&gt;Diode&lt;/b&gt; 1.0"&lt;br&gt;
8mm diameter, 1.5mm drills</description>
<wire x1="-12.7" y1="0" x2="0.9525" y2="0" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0" x2="12.7" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.1112" y1="1.27" x2="-1.1112" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.1112" y1="-1.27" x2="0.9525" y2="0" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="0" x2="-1.1112" y2="1.27" width="0.4064" layer="51"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="4.445" x2="2.54" y2="4.445" width="0.254" layer="21"/>
<wire x1="2.54" y1="4.445" x2="3.81" y2="4.445" width="0.254" layer="21"/>
<wire x1="3.81" y1="4.445" x2="3.81" y2="0" width="0.254" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-4.4451" width="0.254" layer="21"/>
<wire x1="3.81" y1="-4.4451" x2="2.54" y2="-4.445" width="0.254" layer="21"/>
<wire x1="2.54" y1="-4.445" x2="-3.81" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-4.445" x2="-3.81" y2="0" width="0.254" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.81" y2="4.445" width="0.254" layer="21"/>
<wire x1="-10.795" y1="0" x2="-3.81" y2="0" width="0.254" layer="21"/>
<wire x1="10.795" y1="0" x2="3.81" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="4.445" x2="2.54" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-3.81" y1="4.445" x2="3.81" y2="4.445" width="0.4064" layer="51"/>
<wire x1="3.81" y1="4.445" x2="3.81" y2="-4.445" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-4.445" x2="-3.81" y2="-4.445" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-4.445" x2="-3.81" y2="4.445" width="0.4064" layer="51"/>
<pad name="A" x="-12.7" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="12.7" y="0" drill="1.4986" diameter="3.048"/>
<text x="4.445" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="4.445" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.81" y="4.7625" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
</package>
<package name="DSOD80C">
<description>&lt;b&gt;Diode&lt;/b&gt; SMD,  SOD80C package&lt;br&gt;
&amp;nbsp;- BAS32L</description>
<wire x1="1.7463" y1="-0.7938" x2="-1.4288" y2="-0.7938" width="0.1524" layer="51"/>
<wire x1="-1.4288" y1="-0.7938" x2="-1.7463" y2="-0.7938" width="0.1524" layer="51"/>
<wire x1="-1.7463" y1="-0.7938" x2="-1.7463" y2="0.7938" width="0.1524" layer="51"/>
<wire x1="-1.7463" y1="0.7938" x2="-1.4288" y2="0.7938" width="0.1524" layer="51"/>
<wire x1="-1.4288" y1="0.7938" x2="1.4288" y2="0.7938" width="0.1524" layer="51"/>
<wire x1="1.4288" y1="0.7938" x2="1.7463" y2="0.7938" width="0.1524" layer="51"/>
<wire x1="1.7463" y1="0.7938" x2="1.7463" y2="-0.7938" width="0.1524" layer="51"/>
<wire x1="-2.8575" y1="1.27" x2="2.8163" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.8163" y1="1.27" x2="3.0163" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.0163" y1="1.27" x2="3.0163" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.0163" y1="-1.27" x2="2.8163" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.8163" y1="-1.27" x2="-2.8575" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-1.27" x2="-2.8575" y2="1.27" width="0.254" layer="21"/>
<wire x1="-1.4288" y1="0.7938" x2="-1.4288" y2="-0.7938" width="0.1524" layer="51"/>
<wire x1="0.7936" y1="0.7144" x2="0.7936" y2="-0.7143" width="0.254" layer="51"/>
<wire x1="2.8163" y1="1.27" x2="2.8163" y2="-1.27" width="0.254" layer="21"/>
<wire x1="1.0317" y1="0.7144" x2="1.0317" y2="-0.7143" width="0.254" layer="51"/>
<wire x1="0.5554" y1="0.7145" x2="0.5554" y2="-0.7143" width="0.254" layer="51"/>
<wire x1="1.4288" y1="0.7938" x2="1.4288" y2="-0.7938" width="0.1524" layer="51"/>
<smd name="A" x="-1.7" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="C" x="1.7" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.7463" y="1.1113" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-1.7463" y="1.1113" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.8575" y="1.5875" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-0.3175" y="-0.397" size="0.762" layer="51" font="vector" ratio="16">D</text>
</package>
<package name="DSMB">
<description>&lt;b&gt;Diode&lt;/b&gt; SMD,  SMB package</description>
<wire x1="2.54" y1="-1.8257" x2="-2.54" y2="-1.8257" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-1.8257" x2="-2.54" y2="-1.1113" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-1.1113" x2="-2.54" y2="1.1113" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="1.1113" x2="-2.54" y2="1.8257" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="1.8257" x2="2.54" y2="1.8257" width="0.1524" layer="51"/>
<wire x1="2.54" y1="1.8257" x2="2.54" y2="1.1113" width="0.1524" layer="51"/>
<wire x1="2.54" y1="1.1113" x2="2.54" y2="-1.1113" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-1.1113" x2="2.54" y2="-1.8257" width="0.1524" layer="51"/>
<wire x1="-4.0481" y1="1.7463" x2="4.0862" y2="1.7463" width="0.254" layer="21"/>
<wire x1="4.0862" y1="1.7463" x2="4.2861" y2="1.7463" width="0.254" layer="21"/>
<wire x1="4.2861" y1="1.7463" x2="4.2861" y2="-1.7463" width="0.254" layer="21"/>
<wire x1="4.2861" y1="-1.7463" x2="4.0862" y2="-1.7463" width="0.254" layer="21"/>
<wire x1="4.0862" y1="-1.7463" x2="-4.0481" y2="-1.7463" width="0.254" layer="21"/>
<wire x1="-4.0481" y1="-1.7463" x2="-4.0481" y2="1.7463" width="0.254" layer="21"/>
<wire x1="2.2224" y1="1.7463" x2="2.2224" y2="-1.7462" width="0.254" layer="51"/>
<wire x1="4.0862" y1="1.7463" x2="4.0862" y2="-1.7463" width="0.254" layer="21"/>
<wire x1="2.4604" y1="1.7463" x2="2.4604" y2="-1.7462" width="0.254" layer="51"/>
<wire x1="1.9842" y1="1.7464" x2="1.9842" y2="-1.7462" width="0.254" layer="51"/>
<wire x1="-2.54" y1="1.1113" x2="-2.6988" y2="1.1113" width="0.1524" layer="51"/>
<wire x1="-2.6988" y1="1.1113" x2="-2.6988" y2="-1.1113" width="0.1524" layer="51"/>
<wire x1="-2.6988" y1="-1.1113" x2="-2.54" y2="-1.1113" width="0.1524" layer="51"/>
<wire x1="2.54" y1="1.1113" x2="2.6988" y2="1.1113" width="0.1524" layer="51"/>
<wire x1="2.6988" y1="1.1113" x2="2.6988" y2="-1.1113" width="0.1524" layer="51"/>
<wire x1="2.6988" y1="-1.1113" x2="2.54" y2="-1.1113" width="0.1524" layer="51"/>
<wire x1="4.2863" y1="1.7463" x2="4.5244" y2="1.7463" width="0.254" layer="21"/>
<wire x1="4.5244" y1="1.7463" x2="4.5244" y2="-1.7463" width="0.254" layer="21"/>
<wire x1="4.5244" y1="-1.7463" x2="4.2863" y2="-1.7463" width="0.254" layer="21"/>
<smd name="A" x="-2.4" y="0" dx="2.5" dy="2.5" layer="1"/>
<smd name="C" x="2.4" y="0" dx="2.5" dy="2.5" layer="1"/>
<text x="-2.6194" y="2.0638" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.6195" y="2.0638" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-4.1275" y="1.9844" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-0.4763" y="-0.5557" size="1.27" layer="51" font="vector" ratio="16">D</text>
</package>
<package name="D02E1">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.2"&lt;br&gt;
8mm diameter, 1.5mm drills, cathode away from body</description>
<wire x1="-2.54" y1="0" x2="0.4763" y2="0" width="0.1524" layer="51"/>
<wire x1="0.4763" y1="0" x2="2.54" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.5874" y1="1.27" x2="-1.5874" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.5874" y1="-1.27" x2="0.4763" y2="0" width="0.4064" layer="51"/>
<wire x1="0.4763" y1="0" x2="-1.5874" y2="1.27" width="0.4064" layer="51"/>
<wire x1="0.6351" y1="1.27" x2="0.6351" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="2.2225" x2="0.9525" y2="-2.2225" width="0.254" layer="21" curve="295.057615"/>
<wire x1="2.54" y1="-2.2225" x2="2.54" y2="2.2225" width="0.254" layer="21" curve="180"/>
<wire x1="2.54" y1="2.2225" x2="0.9525" y2="2.2225" width="0.254" layer="21"/>
<wire x1="2.54" y1="-2.2225" x2="0.9525" y2="-2.2225" width="0.254" layer="21"/>
<circle x="-2.54" y="0" radius="4.1275" width="0.4064" layer="51"/>
<pad name="A" x="-2.54" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="2.54" y="0" drill="1.4986" diameter="3.048"/>
<text x="2.2225" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="2.2225" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="1.27" y="2.54" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="5.2388" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D02E2">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.2"&lt;br&gt;
8mm diameter, 1.5mm drills, cathode at body</description>
<wire x1="2.54" y1="0" x2="-1.4288" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.4288" y1="0" x2="-2.54" y2="0" width="0.1524" layer="51"/>
<wire x1="0.6349" y1="-1.27" x2="0.6349" y2="1.27" width="0.4064" layer="51"/>
<wire x1="0.6349" y1="1.27" x2="-1.4288" y2="0" width="0.4064" layer="51"/>
<wire x1="-1.4288" y1="0" x2="0.6349" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.5876" y1="-1.27" x2="-1.5876" y2="1.27" width="0.4064" layer="51"/>
<wire x1="0.9525" y1="2.2225" x2="0.9525" y2="-2.2225" width="0.254" layer="21" curve="295.057615"/>
<wire x1="2.54" y1="-2.2225" x2="2.54" y2="2.2225" width="0.254" layer="21" curve="180"/>
<wire x1="2.54" y1="2.2225" x2="0.9525" y2="2.2225" width="0.254" layer="21"/>
<wire x1="2.54" y1="-2.2225" x2="0.9525" y2="-2.2225" width="0.254" layer="21"/>
<circle x="-2.54" y="0" radius="4.1275" width="0.4064" layer="51"/>
<pad name="A" x="2.54" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="-2.54" y="0" drill="1.4986" diameter="3.048"/>
<text x="2.2225" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="2.2225" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="1.27" y="2.54" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-8.0962" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D03E1">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.3"&lt;br&gt;
8mm diameter, 1.5mm drills, cathode away from body</description>
<wire x1="-3.81" y1="0" x2="-0.7937" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.7937" y1="0" x2="3.81" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.8574" y1="1.27" x2="-2.8574" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8574" y1="-1.27" x2="-0.7937" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.7937" y1="0" x2="-2.8574" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-0.6349" y1="1.27" x2="-0.6349" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-0.3175" y1="2.2225" x2="-0.3175" y2="-2.2225" width="0.254" layer="21" curve="295.057615"/>
<wire x1="3.81" y1="-2.2225" x2="3.81" y2="2.2225" width="0.254" layer="21" curve="180"/>
<wire x1="3.81" y1="2.2225" x2="-0.3175" y2="2.2225" width="0.254" layer="21"/>
<wire x1="3.81" y1="-2.2225" x2="-0.3175" y2="-2.2225" width="0.254" layer="21"/>
<circle x="-3.81" y="0" radius="4.1275" width="0.4064" layer="51"/>
<pad name="A" x="-3.81" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="3.81" y="0" drill="1.4986" diameter="3.048"/>
<text x="0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="0" y="2.54" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="6.5088" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D03E2">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.3"&lt;br&gt;
8mm diameter, 1.5mm drills, cathode at body</description>
<wire x1="3.81" y1="0" x2="-2.6988" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.6988" y1="0" x2="-3.81" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.6351" y1="-1.27" x2="-0.6351" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-0.6351" y1="1.27" x2="-2.6988" y2="0" width="0.4064" layer="51"/>
<wire x1="-2.6988" y1="0" x2="-0.6351" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-2.8576" y1="-1.27" x2="-2.8576" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-0.3175" y1="2.2225" x2="-0.3175" y2="-2.2225" width="0.254" layer="21" curve="295.057615"/>
<wire x1="3.81" y1="-2.2225" x2="3.81" y2="2.2225" width="0.254" layer="21" curve="180"/>
<wire x1="3.81" y1="2.2225" x2="-0.3175" y2="2.2225" width="0.254" layer="21"/>
<wire x1="3.81" y1="-2.2225" x2="-0.3175" y2="-2.2225" width="0.254" layer="21"/>
<circle x="-3.81" y="0" radius="4.1275" width="0.4064" layer="51"/>
<pad name="A" x="3.81" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="-3.81" y="0" drill="1.4986" diameter="3.048"/>
<text x="0.9525" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="0.9525" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="0" y="2.54" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-9.3662" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D04E1">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.4"&lt;br&gt;
8mm diameter, 1.5mm drills, cathode away from body</description>
<wire x1="-5.08" y1="0" x2="-2.0637" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.0637" y1="0" x2="5.08" y2="0" width="0.1524" layer="51"/>
<wire x1="-4.1274" y1="1.27" x2="-4.1274" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-4.1274" y1="-1.27" x2="-2.0637" y2="0" width="0.4064" layer="51"/>
<wire x1="-2.0637" y1="0" x2="-4.1274" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.9049" y1="1.27" x2="-1.9049" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="2.2225" x2="-1.5875" y2="-2.2225" width="0.254" layer="21" curve="295.057615"/>
<wire x1="5.08" y1="-2.2225" x2="5.08" y2="2.2225" width="0.254" layer="21" curve="180"/>
<wire x1="5.08" y1="2.2225" x2="-1.5875" y2="2.2225" width="0.254" layer="21"/>
<wire x1="5.08" y1="-2.2225" x2="-1.5875" y2="-2.2225" width="0.254" layer="21"/>
<circle x="-5.08" y="0" radius="4.1275" width="0.4064" layer="51"/>
<pad name="A" x="-5.08" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="5.08" y="0" drill="1.4986" diameter="3.048"/>
<text x="-0.3175" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.3175" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-1.27" y="2.54" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="7.7788" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="D04E2">
<description>&lt;b&gt;Diode&lt;/b&gt; 0.4"&lt;br&gt;
8mm diameter, 1.5mm drills, cathode at body</description>
<wire x1="5.08" y1="0" x2="-3.9688" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.9688" y1="0" x2="-5.08" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.9051" y1="-1.27" x2="-1.9051" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.9051" y1="1.27" x2="-3.9688" y2="0" width="0.4064" layer="51"/>
<wire x1="-3.9688" y1="0" x2="-1.9051" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-4.1276" y1="-1.27" x2="-4.1276" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-1.5875" y1="2.2225" x2="-1.5875" y2="-2.2225" width="0.254" layer="21" curve="295.057615"/>
<wire x1="5.08" y1="-2.2225" x2="5.08" y2="2.2225" width="0.254" layer="21" curve="180"/>
<wire x1="5.08" y1="2.2225" x2="-1.5875" y2="2.2225" width="0.254" layer="21"/>
<wire x1="5.08" y1="-2.2225" x2="-1.5875" y2="-2.2225" width="0.254" layer="21"/>
<circle x="-5.08" y="0" radius="4.1275" width="0.4064" layer="51"/>
<pad name="A" x="5.08" y="0" drill="1.4986" diameter="3.048"/>
<pad name="C" x="-5.08" y="0" drill="1.4986" diameter="3.048"/>
<text x="-0.3175" y="0.3175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-0.3175" y="0.3175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-1.27" y="2.54" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-10.6362" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">C</text>
</package>
<package name="DSMA">
<description>&lt;b&gt;Diode&lt;/b&gt; SMD,  SMA package</description>
<wire x1="2.3019" y1="-1.3495" x2="-2.3019" y2="-1.3495" width="0.1524" layer="51"/>
<wire x1="-2.3019" y1="-1.3495" x2="-2.3019" y2="-0.8732" width="0.1524" layer="51"/>
<wire x1="-2.3019" y1="-0.8732" x2="-2.3019" y2="0.8732" width="0.1524" layer="51"/>
<wire x1="-2.3019" y1="0.8732" x2="-2.3019" y2="1.3495" width="0.1524" layer="51"/>
<wire x1="-2.3019" y1="1.3495" x2="2.3019" y2="1.3495" width="0.1524" layer="51"/>
<wire x1="2.3019" y1="1.3495" x2="2.3019" y2="0.8732" width="0.1524" layer="51"/>
<wire x1="2.3019" y1="0.8732" x2="2.3019" y2="-0.8732" width="0.1524" layer="51"/>
<wire x1="2.3019" y1="-0.8732" x2="2.3019" y2="-1.3495" width="0.1524" layer="51"/>
<wire x1="-3.7306" y1="1.4288" x2="3.7687" y2="1.4288" width="0.254" layer="21"/>
<wire x1="3.7687" y1="1.4288" x2="3.9686" y2="1.4288" width="0.254" layer="21"/>
<wire x1="3.9686" y1="1.4288" x2="3.9686" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="3.9686" y1="-1.4288" x2="3.7687" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="3.7687" y1="-1.4288" x2="-3.7306" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="-3.7306" y1="-1.4288" x2="-3.7306" y2="1.4288" width="0.254" layer="21"/>
<wire x1="1.9843" y1="1.2701" x2="1.9843" y2="-1.27" width="0.254" layer="51"/>
<wire x1="3.7687" y1="1.4288" x2="3.7687" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="2.2223" y1="1.2701" x2="2.2223" y2="-1.27" width="0.254" layer="51"/>
<wire x1="1.7461" y1="1.2702" x2="1.7461" y2="-1.27" width="0.254" layer="51"/>
<wire x1="-2.3019" y1="0.8732" x2="-2.4607" y2="0.8732" width="0.1524" layer="51"/>
<wire x1="-2.4607" y1="0.8732" x2="-2.4607" y2="-0.8732" width="0.1524" layer="51"/>
<wire x1="-2.4607" y1="-0.8732" x2="-2.3019" y2="-0.8732" width="0.1524" layer="51"/>
<wire x1="2.3019" y1="0.8732" x2="2.4607" y2="0.8732" width="0.1524" layer="51"/>
<wire x1="2.4607" y1="0.8732" x2="2.4607" y2="-0.8732" width="0.1524" layer="51"/>
<wire x1="2.4607" y1="-0.8732" x2="2.3019" y2="-0.8732" width="0.1524" layer="51"/>
<wire x1="3.9688" y1="1.4288" x2="4.2069" y2="1.4288" width="0.254" layer="21"/>
<wire x1="4.2069" y1="1.4288" x2="4.2069" y2="-1.4288" width="0.254" layer="21"/>
<wire x1="4.2069" y1="-1.4288" x2="3.9688" y2="-1.4288" width="0.254" layer="21"/>
<smd name="A" x="-2.0825" y="0" dx="2.5" dy="2" layer="1"/>
<smd name="C" x="2.0825" y="0" dx="2.5" dy="2" layer="1"/>
<text x="-2.3813" y="1.5876" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.3813" y="1.5876" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.81" y="1.7463" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-0.4763" y="-0.5557" size="1.27" layer="51" font="vector" ratio="16">D</text>
</package>
<package name="DSMC">
<description>&lt;b&gt;Diode&lt;/b&gt; SMD,  SMC package</description>
<wire x1="3.81" y1="-3.0163" x2="-3.81" y2="-3.0163" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="-3.0163" x2="-3.81" y2="-1.5081" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="-1.5081" x2="-3.81" y2="1.5081" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="1.5081" x2="-3.81" y2="3.0164" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="3.0164" x2="3.81" y2="3.0164" width="0.1524" layer="51"/>
<wire x1="3.81" y1="3.0164" x2="3.81" y2="1.5081" width="0.1524" layer="51"/>
<wire x1="3.81" y1="1.5081" x2="3.81" y2="-1.5081" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-1.5081" x2="3.81" y2="-3.0163" width="0.1524" layer="51"/>
<wire x1="-5.3975" y1="2.3019" x2="-3.81" y2="2.3019" width="0.254" layer="21"/>
<wire x1="3.81" y1="2.3019" x2="5.4356" y2="2.3019" width="0.254" layer="21"/>
<wire x1="5.4356" y1="2.3019" x2="5.6355" y2="2.3019" width="0.254" layer="21"/>
<wire x1="5.6355" y1="2.3019" x2="5.6355" y2="-2.3019" width="0.254" layer="21"/>
<wire x1="5.6355" y1="-2.3019" x2="5.4356" y2="-2.3019" width="0.254" layer="21"/>
<wire x1="5.4356" y1="-2.3019" x2="3.81" y2="-2.3019" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-2.3019" x2="-5.3975" y2="-2.3019" width="0.254" layer="21"/>
<wire x1="-5.3975" y1="-2.3019" x2="-5.3975" y2="2.3019" width="0.254" layer="21"/>
<wire x1="3.4924" y1="2.937" x2="3.4924" y2="-2.9368" width="0.254" layer="51"/>
<wire x1="5.4356" y1="2.3019" x2="5.4356" y2="-2.3019" width="0.254" layer="21"/>
<wire x1="3.7304" y1="2.937" x2="3.7304" y2="-2.9368" width="0.254" layer="51"/>
<wire x1="3.2542" y1="2.9371" x2="3.2542" y2="-2.9368" width="0.254" layer="51"/>
<wire x1="-3.81" y1="1.5081" x2="-3.9688" y2="1.5081" width="0.1524" layer="51"/>
<wire x1="-3.9688" y1="1.5081" x2="-3.9688" y2="-1.5081" width="0.1524" layer="51"/>
<wire x1="-3.9688" y1="-1.5081" x2="-3.81" y2="-1.5081" width="0.1524" layer="51"/>
<wire x1="3.81" y1="1.5081" x2="3.9688" y2="1.5081" width="0.1524" layer="51"/>
<wire x1="3.9688" y1="1.5081" x2="3.9688" y2="-1.5081" width="0.1524" layer="51"/>
<wire x1="3.9688" y1="-1.5081" x2="3.81" y2="-1.5081" width="0.1524" layer="51"/>
<wire x1="5.6357" y1="2.3019" x2="5.8738" y2="2.3019" width="0.254" layer="21"/>
<wire x1="5.8738" y1="2.3019" x2="5.8738" y2="-2.3019" width="0.254" layer="21"/>
<wire x1="5.8738" y1="-2.3019" x2="5.6357" y2="-2.3019" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-2.3019" x2="-3.81" y2="-3.0163" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-3.0163" x2="3.81" y2="-3.0163" width="0.254" layer="21"/>
<wire x1="3.81" y1="-3.0163" x2="3.81" y2="-2.3019" width="0.254" layer="21"/>
<wire x1="-3.81" y1="2.3019" x2="-3.81" y2="3.0163" width="0.254" layer="21"/>
<wire x1="-3.81" y1="3.0163" x2="3.81" y2="3.0163" width="0.254" layer="21"/>
<wire x1="3.81" y1="3.0163" x2="3.81" y2="2.3019" width="0.254" layer="21"/>
<smd name="A" x="-3.5113" y="0" dx="3" dy="3.8" layer="1"/>
<smd name="C" x="3.5112" y="0" dx="3" dy="3.8" layer="1"/>
<text x="-3.8894" y="3.3339" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.8894" y="3.3339" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.8894" y="3.3338" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-0.4763" y="-0.5557" size="1.27" layer="51" font="vector" ratio="16">D</text>
</package>
</packages>
<symbols>
<symbol name="DZ">
<wire x1="-1.1113" y1="1.27" x2="-1.1113" y2="-1.27" width="0.4064" layer="94"/>
<wire x1="-1.1113" y1="-1.27" x2="1.1113" y2="0" width="0.4064" layer="94"/>
<wire x1="1.1113" y1="0" x2="-1.1113" y2="1.27" width="0.4064" layer="94"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="0" width="0.4064" layer="94"/>
<wire x1="1.1113" y1="0" x2="1.1113" y2="-1.27" width="0.4064" layer="94"/>
<wire x1="1.1113" y1="-1.27" x2="0.4763" y2="-1.27" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="0" x2="1.1113" y2="0" width="0.1524" layer="94"/>
<wire x1="1.1113" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-1.905" y="1.905" size="1.524" layer="95" font="vector">&gt;NAME</text>
<text x="-1.905" y="-3.4925" size="1.524" layer="96" font="vector">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="point" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="point" direction="pas" rot="R180"/>
</symbol>
<symbol name="D-VALUE">
<wire x1="-1.1113" y1="1.27" x2="-1.1113" y2="-1.27" width="0.4064" layer="94"/>
<wire x1="-1.1113" y1="-1.27" x2="1.1113" y2="0" width="0.4064" layer="94"/>
<wire x1="1.1113" y1="0" x2="-1.1113" y2="1.27" width="0.4064" layer="94"/>
<wire x1="1.1113" y1="1.27" x2="1.1113" y2="0" width="0.4064" layer="94"/>
<wire x1="1.1113" y1="0" x2="1.1113" y2="-1.27" width="0.4064" layer="94"/>
<wire x1="2.54" y1="0" x2="1.1113" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="1.1113" y2="0" width="0.1524" layer="94"/>
<text x="-1.905" y="1.905" size="1.524" layer="95" font="vector">&gt;NAME</text>
<text x="-1.905" y="-3.4925" size="1.524" layer="96" font="vector">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="point" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="point" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DZ" prefix="D" uservalue="yes">
<description>&lt;b&gt;Zener diode&lt;/b&gt;&lt;br&gt;</description>
<gates>
<gate name="A" symbol="DZ" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DZ04N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="01" package="DZ01N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="01R" package="DZ01R">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="02" package="DZ02N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="02R" package="DZ02R">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="03" package="DZ03N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="03R" package="DZ03R">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="04" package="DZ04N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="04R" package="DZ04R">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="05" package="DZ05N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="05R" package="DZ05R">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="06" package="DZ06N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="06R" package="DZ06R">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="07" package="DZ07N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="07R" package="DZ07R">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="08" package="DZ08N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="08R" package="DZ08R">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="09" package="DZ09N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="09R" package="DZ09R">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10" package="DZ10N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10R" package="DZ10R">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R" package="DZ04R">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="01N" package="DZ01N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="02N" package="DZ02N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="03N" package="DZ03N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="04N" package="DZ04N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="05N" package="DZ05N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="06N" package="DZ06N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="07N" package="DZ07N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="08N" package="DZ08N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="09N" package="DZ09N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10N" package="DZ10N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="N" package="DZ04N">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-ICL8069T" package="TO18D">
<connects>
<connect gate="A" pin="A" pad="2"/>
<connect gate="A" pin="C" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-ICL8069N" package="TO92-2N">
<connects>
<connect gate="A" pin="A" pad="2"/>
<connect gate="A" pin="C" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="04B" package="DZ04B">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF" package="DMELF-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S" package="DMINIMELF-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MINIMELF" package="DMINIMELF-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="N2" package="DZ06N2">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SOD123" package="DSOD123">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="05B" package="DZ05B">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="D" prefix="D" uservalue="yes">
<description>&lt;b&gt;Diode&lt;/b&gt;&lt;br&gt;
_____&lt;br&gt;&lt;br&gt;
Supported &lt;b&gt;SPICE&lt;/b&gt; attributes:&lt;br&gt;
&amp;nbsp;&amp;nbsp;&amp;nbsp;VALUE, TEMPERATURE&lt;br&gt;
(A detailed description of these parameters can be found in the library &lt;b&gt;spice.lbr&lt;/b&gt;)</description>
<gates>
<gate name="A" symbol="D-VALUE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="D04N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="01" package="D01N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="01R" package="D01R-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="02" package="D02N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="02R" package="D02R-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="03" package="D03N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="03R" package="D03R-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="04" package="D04N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="04R" package="D04R-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="05" package="D05N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="05R" package="D05R-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="06" package="D06N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="06R" package="D06R-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="07" package="D07N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="07R" package="D07R-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="08" package="D08N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="08R" package="D08R-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="09" package="D09N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="09R" package="D09R-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="10" package="D10N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="10R" package="D10R-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="R" package="D04R-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="01N" package="D01N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="02N" package="D02N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="03N" package="D03N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="04N" package="D04N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="05N" package="D05N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="06N" package="D06N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="07N" package="D07N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="08N" package="D08N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="09N" package="D09N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="10N" package="D10N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="N" package="D04N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="11" package="D11N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="11R" package="D11R-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="11N" package="D11N-DO35-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF" package="DMELF-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="S" package="DMINIMELF-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MINIMELF" package="DMINIMELF-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="01B" package="D01N-DO41-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="04B" package="D04N-DO41-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="02B" package="D02N-DO41-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="03B" package="D03N-DO41-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="05B" package="D05N-DO41-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="06B" package="D06N-DO41-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="07B" package="D07N-DO41-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="08B" package="D08N-DO41-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="09B" package="D09N-DO41-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="10B" package="D10N-DO41-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="11B" package="D11N-DO41-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="04C" package="D04N-DO15-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="T1" package="TO220-2A">
<connects>
<connect gate="A" pin="A" pad="2"/>
<connect gate="A" pin="C" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="T2" package="TO220-2C">
<connects>
<connect gate="A" pin="A" pad="2"/>
<connect gate="A" pin="C" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="T3" package="TO220-2D">
<connects>
<connect gate="A" pin="A" pad="2"/>
<connect gate="A" pin="C" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="0603" package="D0603-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="0805" package="D0805-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="1206" package="D1206-VALUE">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="05D" package="D05D">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="05E" package="D05E">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="06D" package="D06D">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="06E" package="D06E">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="07D" package="D07D">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="07E" package="D07E">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="08D" package="D08D">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="08E" package="D08E">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="09D" package="D09D">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="09E" package="D09E">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="10D" package="D10D">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="10E" package="D10E">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="SOD80C" package="DSOD80C">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="SOD123" package="DSOD123">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMB" package="DSMB">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="02E1" package="D02E1">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="02E2" package="D02E2">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="03E1" package="D03E1">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="03E2" package="D03E2">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="04E1" package="D04E1">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="04E2" package="D04E2">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMA" package="DSMA">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMC" package="DSMC">
<connects>
<connect gate="A" pin="A" pad="A"/>
<connect gate="A" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICE" value="&lt;name:D&gt; &lt;pin:A.A&gt; &lt;pin:A.C&gt; &lt;model:&lt;value&gt;&gt;&lt;temperature: temp=&gt;"/>
<attribute name="TEMPERATURE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="optos">
<description>&lt;table width="100%" cellpadding="5" cellspacing="0"  bgcolor="#E0E0E0"&gt;&lt;tr&gt;&lt;td&gt;
&lt;h3&gt;Optoelectronic&lt;/h3&gt;
LEDs, photodiodes, optocouplers, displays, lamps, driver ICs, ...&lt;br&gt;
&lt;author&gt;&lt;b&gt;Update:&lt;/b&gt; 2014-07-23 Andreas Weidner&lt;/author&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;
&lt;br&gt;&lt;br&gt;

&lt;b&gt;Device suffixes&lt;/b&gt;&lt;br&gt;
Most devices offer different suffixes to directly specify the package type. In general, these are
&lt;b&gt;not&lt;/b&gt; the manufacturer's suffixes (they vary greatly), but one of the following (note that not all devices offer all types of packages):&lt;p&gt;
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;(none)&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Default package (with ICs, mostly DIP with long pads)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;L&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Package with long pads (easily solderable, through-pin-routing possible)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;N&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Package with normal pads (easily solderable)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;R&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Package with reduced pads (small, through-pin-routing possible)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;S&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;SMD package&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;Device examples&lt;/b&gt;&lt;br&gt;
The following examples show devices that can be inserted into EAGLE schematics using
the &lt;b&gt;add&lt;/b&gt; command:&lt;p&gt; 
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;DL&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Default LED (currently 3mm with normal pads)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;DL05R&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;LED 5mm with reduced pads&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;6N138L&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Optocoupler in DIP-8 package with long pads&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;Board layers&lt;/b&gt;&lt;br&gt;
The board packages make special use of the following layers:&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td width="1%"&gt;&lt;tt&gt;tDocu,&lt;br&gt;&amp;nbsp;&amp;nbsp;tNames,&lt;br&gt;&amp;nbsp;&amp;nbsp;tValues&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Placeplan including device names and values for printed documentation. Should
    &lt;b&gt;not&lt;/b&gt; be used for the board imprint due to complexity. Names and values occupy
    the &lt;b&gt;same&lt;/b&gt; board space, so two separate printouts are advisable&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;tPlace&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Less sophisticated, but concise placeplan &lt;b&gt;including&lt;/b&gt; device names and values for the board imprint (&lt;b&gt;no&lt;/b&gt; other layers should be used for the print)&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;</description>
<packages>
<package name="DIP06L">
<description>&lt;b&gt;DIP-6, long pads&lt;/b&gt;&lt;br&gt;
Standard IC package, 6 pins</description>
<wire x1="-3.81" y1="2.54" x2="-2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="2.54" x2="0" y2="2.54" width="0.4064" layer="51"/>
<wire x1="0" y1="2.54" x2="2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="2.54" x2="3.81" y2="2.54" width="0.4064" layer="51"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="-3.81" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-2.54" x2="-3.81" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-1.27" x2="-3.81" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.254" layer="51" curve="-180"/>
<wire x1="-2.54" y1="-3.81" x2="-2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="0" y1="-3.81" x2="0" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-3.81" x2="2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="0" y1="2.54" x2="0" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-3.175" y1="1.905" x2="3.175" y2="1.905" width="0.254" layer="21"/>
<wire x1="3.175" y1="1.905" x2="3.175" y2="-1.905" width="0.254" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="-3.175" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-1.905" x2="-3.175" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-3.175" y1="0.635" x2="-3.175" y2="1.905" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-0.635" x2="-3.175" y2="0.635" width="0.254" layer="21" curve="180"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="3.81" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="2" x="0" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="5" x="0" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="6" x="-2.54" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<text x="-1.905" y="-0.635" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-1.905" y="-0.635" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.0637" y="-2.0637" size="1.016" layer="51" font="vector" ratio="16" rot="R90">1</text>
<text x="-3.81" y="-1.905" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
</package>
<package name="DIP06N">
<description>&lt;b&gt;DIP-6&lt;/b&gt;&lt;br&gt;
Standard IC package, 6 pins</description>
<wire x1="-3.81" y1="2.54" x2="-2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="2.54" x2="0" y2="2.54" width="0.4064" layer="51"/>
<wire x1="0" y1="2.54" x2="2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="2.54" x2="3.81" y2="2.54" width="0.4064" layer="51"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="-3.81" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-2.54" x2="-3.81" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-1.27" x2="-3.81" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.254" layer="51" curve="-180"/>
<wire x1="-2.54" y1="-3.81" x2="-2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="0" y1="-3.81" x2="0" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-3.81" x2="2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="0" y1="2.54" x2="0" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-3.175" y1="1.905" x2="3.175" y2="1.905" width="0.254" layer="21"/>
<wire x1="3.175" y1="1.905" x2="3.175" y2="-1.905" width="0.254" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="-3.175" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-1.905" x2="-3.175" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-3.175" y1="0.635" x2="-3.175" y2="1.905" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-0.635" x2="-3.175" y2="0.635" width="0.254" layer="21" curve="180"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="3.81" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="-3.81" drill="0.8128" diameter="2.032" rot="R90"/>
<pad name="2" x="0" y="-3.81" drill="0.8128" diameter="2.032" rot="R90"/>
<pad name="3" x="2.54" y="-3.81" drill="0.8128" diameter="2.032" rot="R90"/>
<pad name="4" x="2.54" y="3.81" drill="0.8128" diameter="2.032" rot="R90"/>
<pad name="5" x="0" y="3.81" drill="0.8128" diameter="2.032" rot="R90"/>
<pad name="6" x="-2.54" y="3.81" drill="0.8128" diameter="2.032" rot="R90"/>
<text x="-1.905" y="-0.635" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-1.905" y="-0.635" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.0637" y="-2.0637" size="1.016" layer="51" font="vector" ratio="16" rot="R90">1</text>
<text x="-3.81" y="-1.905" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
</package>
<package name="DIP06R">
<description>&lt;b&gt;DIP-6, reduced pads&lt;/b&gt;&lt;br&gt;
Standard IC package, 6 pins</description>
<wire x1="-3.81" y1="2.54" x2="-2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="2.54" x2="0" y2="2.54" width="0.4064" layer="51"/>
<wire x1="0" y1="2.54" x2="2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="2.54" x2="3.81" y2="2.54" width="0.4064" layer="51"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="-3.81" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-2.54" x2="-3.81" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-1.27" x2="-3.81" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.254" layer="51" curve="-180"/>
<wire x1="-2.54" y1="-3.81" x2="-2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="0" y1="-3.81" x2="0" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-3.81" x2="2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="0" y1="2.54" x2="0" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-3.175" y1="1.905" x2="3.175" y2="1.905" width="0.254" layer="21"/>
<wire x1="3.175" y1="1.905" x2="3.175" y2="-1.905" width="0.254" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="-3.175" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-1.905" x2="-3.175" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-3.175" y1="0.635" x2="-3.175" y2="1.905" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-0.635" x2="-3.175" y2="0.635" width="0.254" layer="21" curve="180"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="3.81" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="-3.81" drill="0.8128" diameter="1.397" shape="square" rot="R90"/>
<pad name="2" x="0" y="-3.81" drill="0.8128" diameter="1.397" shape="square" rot="R90"/>
<pad name="3" x="2.54" y="-3.81" drill="0.8128" diameter="1.397" shape="square" rot="R90"/>
<pad name="4" x="2.54" y="3.81" drill="0.8128" diameter="1.397" shape="square" rot="R90"/>
<pad name="5" x="0" y="3.81" drill="0.8128" diameter="1.397" shape="square" rot="R90"/>
<pad name="6" x="-2.54" y="3.81" drill="0.8128" diameter="1.397" shape="square" rot="R90"/>
<text x="-1.905" y="-0.635" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-1.905" y="-0.635" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-2.0637" y="-2.0637" size="1.016" layer="51" font="vector" ratio="16" rot="R90">1</text>
<text x="-3.81" y="-1.905" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="OPTO4">
<wire x1="-1.27" y1="1.1113" x2="-3.81" y2="1.1113" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="1.1113" x2="-2.54" y2="-1.1113" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="-1.1113" x2="-1.27" y2="1.1113" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="-1.1113" x2="-2.54" y2="-1.1113" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="-1.1113" x2="-3.81" y2="-1.1113" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="0.635" x2="0.635" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="0.635" y1="-0.635" x2="-0.1587" y2="-0.3175" width="0.1524" layer="94"/>
<wire x1="-0.1587" y1="-0.3175" x2="0" y2="-0.1588" width="0.1524" layer="94"/>
<wire x1="0" y1="-0.1588" x2="0.1588" y2="0" width="0.1524" layer="94"/>
<wire x1="0.1588" y1="0" x2="0.3175" y2="0.1588" width="0.1524" layer="94"/>
<wire x1="0.3175" y1="0.1588" x2="0.635" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="0.635" y1="-0.635" x2="0.1588" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="-0.1588" x2="0.635" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="0.635" y1="-0.635" x2="0.3175" y2="0" width="0.1524" layer="94"/>
<wire x1="0.635" y1="-0.635" x2="0" y2="-0.3175" width="0.1524" layer="94"/>
<wire x1="-0.635" y1="-0.635" x2="0.635" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0.635" y1="-1.905" x2="-0.1587" y2="-1.5875" width="0.1524" layer="94"/>
<wire x1="-0.1587" y1="-1.5875" x2="0" y2="-1.4288" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.4288" x2="0.1588" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="0.1588" y1="-1.27" x2="0.3175" y2="-1.1113" width="0.1524" layer="94"/>
<wire x1="0.3175" y1="-1.1113" x2="0.635" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0.635" y1="-1.905" x2="0.1588" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.4288" x2="0.635" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0.635" y1="-1.905" x2="0.3175" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="0.635" y1="-1.905" x2="0" y2="-1.5875" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-1.1113" x2="-2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-1.1113" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="1.27" width="0.1524" layer="94"/>
<wire x1="3.81" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="94"/>
<wire x1="1.905" y1="-1.27" x2="3.81" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="1.905" y1="2.54" x2="1.905" y2="1.27" width="0.4064" layer="94"/>
<wire x1="1.905" y1="1.27" x2="1.905" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="3.81" x2="5.08" y2="3.81" width="0.4064" layer="94"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="2.54" width="0.4064" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="5.08" y1="-3.81" x2="-5.08" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-3.81" x2="-5.08" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="3.81" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="94"/>
<text x="-5.08" y="6.35" size="1.524" layer="95" font="vector">&gt;NAME</text>
<text x="-5.08" y="4.445" size="1.524" layer="96" font="vector">&gt;VALUE</text>
<pin name="A" x="-7.62" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="C" x="-7.62" y="-2.54" visible="pad" length="short" direction="pas"/>
<pin name="R1" x="7.62" y="2.54" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="R2" x="7.62" y="-2.54" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="H11F1" prefix="N">
<description>&lt;b&gt;H11F1&lt;/b&gt;: FET Optocoupler (Fairchild)&lt;br&gt;
99.9% linearity, 5kV isolation, &amp;plusmn;100mA Iout, 200&amp;Omega; Ron</description>
<gates>
<gate name="A" symbol="OPTO4" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="DIP06L">
<connects>
<connect gate="A" pin="A" pad="1"/>
<connect gate="A" pin="C" pad="2"/>
<connect gate="A" pin="R1" pad="6"/>
<connect gate="A" pin="R2" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="L" package="DIP06L">
<connects>
<connect gate="A" pin="A" pad="1"/>
<connect gate="A" pin="C" pad="2"/>
<connect gate="A" pin="R1" pad="6"/>
<connect gate="A" pin="R2" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="N" package="DIP06N">
<connects>
<connect gate="A" pin="A" pad="1"/>
<connect gate="A" pin="C" pad="2"/>
<connect gate="A" pin="R1" pad="6"/>
<connect gate="A" pin="R2" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R" package="DIP06R">
<connects>
<connect gate="A" pin="A" pad="1"/>
<connect gate="A" pin="C" pad="2"/>
<connect gate="A" pin="R1" pad="6"/>
<connect gate="A" pin="R2" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="signals">
<description>&lt;table width="100%" cellpadding="5" cellspacing="0"  bgcolor="#E0E0E0"&gt;&lt;tr&gt;&lt;td&gt;
&lt;h3&gt;Signal/supply symbols&lt;/h3&gt;
Power supply voltages, signal labels, arrows, ...&lt;br&gt;
&lt;author&gt;&lt;b&gt;Update:&lt;/b&gt; 2014-07-23 Andreas Weidner&lt;/author&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;
&lt;br&gt;&lt;br&gt;

&lt;b&gt;Symbol prefixes&lt;/b&gt;&lt;br&gt;
All symbols have a dedicated prefix, sometimes followed by a signed number, which signify the symbol type and its size or value. The following symbols are available (excerpt):&lt;p&gt;
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;
  &lt;td&gt;&lt;tt&gt;V[U]&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Analog power supply voltage [signed volts]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
  &lt;td&gt;&lt;tt&gt;VD[U]&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Digital power supply voltages [signed volts]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
  &lt;td&gt;&lt;tt&gt;VG&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Ground voltage (GND)&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;hr&gt;&lt;b&gt;Symbol examples&lt;/b&gt;&lt;br&gt;
The following examples show symbols that can be inserted into EAGLE schematics using
the &lt;b&gt;add&lt;/b&gt; command:&lt;p&gt;

&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;
  &lt;td&gt;&lt;tt&gt;V-20V&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;-20V analog power supply symbol&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
  &lt;td&gt;&lt;tt&gt;VD+5V&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;+5V digital power supply symbol&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
  &lt;td&gt;&lt;tt&gt;VG&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Analog ground symbol&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;

&lt;hr&gt;
&lt;b&gt;Usage hints&lt;/b&gt;&lt;br&gt;
Keep the following information in mind when adding symbols to a schematic:
&lt;ul&gt;
&lt;li&gt;All power supply symbols are defined as &lt;tt&gt;SUP&lt;/tt&gt; pins, so nets
connected to a symbol are automatically renamed to the proper power supply signal name.&lt;/li&gt;
&lt;/ul&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VG">
<wire x1="-1.27" y1="-1.27" x2="0" y2="-1.27" width="0.4064" layer="94"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="-1.27" width="0.4064" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-1.27" width="0.1524" layer="94"/>
<pin name="GND" x="0" y="0" visible="off" length="point" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VG" prefix="$">
<description>&lt;b&gt;Analog ground&lt;/b&gt; symbol&lt;br&gt;
Nets connected to this symbol are automatically renamed with 'GND'</description>
<gates>
<gate name="A" symbol="VG" x="0" y="0"/>
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
</devicesets>
</library>
<library name="ics">
<description>&lt;table width="100%" cellpadding="5" cellspacing="0"  bgcolor="#E0E0E0"&gt;&lt;tr&gt;&lt;td&gt;
&lt;h3&gt;Special ICs&lt;/h3&gt;
Voltage regulators, analog switches, interface drivers, multiplexers, mixers, phase shifters, DC/DC converters, ...&lt;br&gt;
&lt;author&gt;&lt;b&gt;Update:&lt;/b&gt; 2014-07-23 Andreas Weidner&lt;/author&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;
&lt;br&gt;&lt;br&gt;

&lt;b&gt;IC suffixes&lt;/b&gt;&lt;br&gt;
Most ICs offer different suffixes to directly specify the package type. In general, these are
&lt;b&gt;not&lt;/b&gt; the manufacturer's suffixes (they vary greatly), but one of the following (note that not all ICs offer all types of packages):&lt;p&gt;
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;(none)&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Default IC package (currently DIP with long pads, if available)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;N&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;DIP package with normal pads (easily solderable)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;L&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;DIP package with long pads (easily solderable, through-pin-routing possible)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;R&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;DIP package with reduced pads (small, through-pin-routing possible)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;S&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;SMD package&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;IC examples&lt;/b&gt;&lt;br&gt;
The following examples show devices that can be inserted into EAGLE schematics using
the &lt;b&gt;add&lt;/b&gt; command:&lt;p&gt; 
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;AD587&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;10V voltage reference in default package (currently DIP-8 with long pads)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;NE555R&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Timer in DIP-8 package with reduced pads&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;ADG451S&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Quad analog switch in SO-16 SMD package&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;Board layers&lt;/b&gt;&lt;br&gt;
The board packages make special use of the following layers:&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td width="1%"&gt;&lt;tt&gt;tDocu,&lt;br&gt;&amp;nbsp;&amp;nbsp;tNames,&lt;br&gt;&amp;nbsp;&amp;nbsp;tValues&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Placeplan including device names and values for printed documentation. Should
    &lt;b&gt;not&lt;/b&gt; be used for the board imprint due to complexity. Names and values occupy
    the &lt;b&gt;same&lt;/b&gt; board space, so two separate printouts are advisable&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;tPlace&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Less sophisticated, but concise placeplan &lt;b&gt;including&lt;/b&gt; device names and values for the board imprint (&lt;b&gt;no&lt;/b&gt; other layers should be used for the print)&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;</description>
<packages>
<package name="DIP08N">
<description>&lt;b&gt;DIP-8&lt;/b&gt;&lt;br&gt;
IC package, 8 pins, 0.3" width</description>
<wire x1="-5.08" y1="2.54" x2="-3.81" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="2.54" x2="-1.27" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.4064" layer="51"/>
<wire x1="1.27" y1="2.54" x2="3.81" y2="2.54" width="0.4064" layer="51"/>
<wire x1="3.81" y1="2.54" x2="5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="5.08" y1="-2.54" x2="3.81" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="1.27" y1="-2.54" x2="-1.27" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-1.27" y1="-2.54" x2="-3.81" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-2.54" x2="-5.08" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="-1.27" x2="-5.08" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.254" layer="51" curve="-180"/>
<wire x1="-3.81" y1="-3.81" x2="-3.81" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="-3.81" x2="-1.27" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="1.27" y1="-3.81" x2="1.27" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-3.81" x2="3.81" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="3.81" width="0.1524" layer="51"/>
<wire x1="1.27" y1="2.54" x2="1.27" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="2.54" x2="-3.81" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-4.6038" y1="2.2225" x2="4.6037" y2="2.2225" width="0.254" layer="21"/>
<wire x1="4.6037" y1="2.2225" x2="4.6037" y2="-2.2225" width="0.254" layer="21"/>
<wire x1="4.6037" y1="-2.2225" x2="-4.6038" y2="-2.2225" width="0.254" layer="21"/>
<wire x1="-4.6038" y1="-2.2225" x2="-4.6038" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-4.6038" y1="0.635" x2="-4.6038" y2="2.2225" width="0.254" layer="21"/>
<wire x1="-4.6038" y1="-0.635" x2="-4.6038" y2="0.635" width="0.254" layer="21" curve="180"/>
<pad name="1" x="-3.81" y="-3.81" drill="0.8128" diameter="2.032" first="yes"/>
<pad name="2" x="-1.27" y="-3.81" drill="0.8128" diameter="2.032"/>
<pad name="3" x="1.27" y="-3.81" drill="0.8128" diameter="2.032"/>
<pad name="4" x="3.81" y="-3.81" drill="0.8128" diameter="2.032"/>
<pad name="5" x="3.81" y="3.81" drill="0.8128" diameter="2.032"/>
<pad name="6" x="1.27" y="3.81" drill="0.8128" diameter="2.032"/>
<pad name="7" x="-1.27" y="3.81" drill="0.8128" diameter="2.032"/>
<pad name="8" x="-3.81" y="3.81" drill="0.8128" diameter="2.032"/>
<text x="-3.3338" y="-0.635" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.3338" y="-0.635" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.3337" y="-2.0637" size="1.016" layer="51" font="vector" ratio="16" rot="R90">1</text>
<text x="-5.08" y="-2.2225" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
</package>
<package name="DIP08L">
<description>&lt;b&gt;DIP-8&lt;/b&gt;, long pads&lt;br&gt;
IC package, 8 pins, 0.3" width</description>
<wire x1="-5.08" y1="2.54" x2="-3.81" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="2.54" x2="-1.27" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.4064" layer="51"/>
<wire x1="1.27" y1="2.54" x2="3.81" y2="2.54" width="0.4064" layer="51"/>
<wire x1="3.81" y1="2.54" x2="5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="5.08" y1="-2.54" x2="3.81" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="1.27" y1="-2.54" x2="-1.27" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-1.27" y1="-2.54" x2="-3.81" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-2.54" x2="-5.08" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="-1.27" x2="-5.08" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.254" layer="51" curve="-180"/>
<wire x1="-3.81" y1="-3.81" x2="-3.81" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="-3.81" x2="-1.27" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="1.27" y1="-3.81" x2="1.27" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-3.81" x2="3.81" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="3.81" width="0.1524" layer="51"/>
<wire x1="1.27" y1="2.54" x2="1.27" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="2.54" x2="-3.81" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-4.6038" y1="1.905" x2="4.6038" y2="1.905" width="0.254" layer="21"/>
<wire x1="4.6038" y1="1.905" x2="4.6038" y2="-1.905" width="0.254" layer="21"/>
<wire x1="4.6038" y1="-1.905" x2="-4.6038" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-4.6038" y1="-1.905" x2="-4.6038" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-4.6038" y1="0.635" x2="-4.6038" y2="1.905" width="0.254" layer="21"/>
<wire x1="-4.6038" y1="-0.635" x2="-4.6038" y2="0.635" width="0.254" layer="21" curve="180"/>
<pad name="1" x="-3.81" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90" first="yes"/>
<pad name="2" x="-1.27" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="-3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="7" x="-1.27" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="8" x="-3.81" y="3.81" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<text x="-3.3338" y="-0.635" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.3338" y="-0.635" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.3337" y="-2.0637" size="1.016" layer="51" font="vector" ratio="16" rot="R90">1</text>
<text x="-5.08" y="-1.905" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
</package>
<package name="DIP08R">
<description>&lt;b&gt;DIP-8&lt;/b&gt;, reduced pads&lt;br&gt;
IC package, 8 pins, 0.3" width</description>
<wire x1="-5.08" y1="2.54" x2="-3.81" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="2.54" x2="-1.27" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.4064" layer="51"/>
<wire x1="1.27" y1="2.54" x2="3.81" y2="2.54" width="0.4064" layer="51"/>
<wire x1="3.81" y1="2.54" x2="5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="5.08" y1="-2.54" x2="3.81" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="1.27" y1="-2.54" x2="-1.27" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-1.27" y1="-2.54" x2="-3.81" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-2.54" x2="-5.08" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="-1.27" x2="-5.08" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.254" layer="51" curve="-180"/>
<wire x1="-3.81" y1="-3.81" x2="-3.81" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="-3.81" x2="-1.27" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="1.27" y1="-3.81" x2="1.27" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-3.81" x2="3.81" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="3.81" width="0.1524" layer="51"/>
<wire x1="1.27" y1="2.54" x2="1.27" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="2.54" x2="-3.81" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-4.6037" y1="2.54" x2="4.6038" y2="2.54" width="0.254" layer="21"/>
<wire x1="4.6038" y1="2.54" x2="4.6038" y2="-2.54" width="0.254" layer="21"/>
<wire x1="4.6038" y1="-2.54" x2="-4.6038" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-4.6038" y1="-2.54" x2="-4.6038" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-4.6037" y1="0.635" x2="-4.6037" y2="2.54" width="0.254" layer="21"/>
<wire x1="-4.6038" y1="-0.635" x2="-4.6037" y2="0.635" width="0.254" layer="21" curve="180.009023"/>
<pad name="1" x="-3.81" y="-3.81" drill="0.8128" diameter="1.397" shape="square" first="yes"/>
<pad name="2" x="-1.27" y="-3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="3" x="1.27" y="-3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="4" x="3.81" y="-3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="5" x="3.81" y="3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="6" x="1.27" y="3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="7" x="-1.27" y="3.81" drill="0.8128" diameter="1.397" shape="square"/>
<pad name="8" x="-3.81" y="3.81" drill="0.8128" diameter="1.397" shape="square"/>
<text x="-3.3338" y="-0.635" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.3338" y="-0.635" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.3337" y="-2.0637" size="1.016" layer="51" font="vector" ratio="16" rot="R90">1</text>
<text x="-5.08" y="-2.54" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
</package>
<package name="SO08">
<description>&lt;b&gt;SO-8&lt;/b&gt;, SMD&lt;br&gt;
SOIC IC package, 8 pins, 0.15" width</description>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="-2.8575" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="-2.8575" x2="-0.635" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-1.905" x2="0.635" y2="-2.8575" width="0.1524" layer="51"/>
<wire x1="1.905" y1="-2.8575" x2="1.905" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="1.905" x2="-1.905" y2="2.8575" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="2.8575" x2="-0.635" y2="1.905" width="0.1524" layer="51"/>
<wire x1="0.635" y1="1.905" x2="0.635" y2="2.8575" width="0.1524" layer="51"/>
<wire x1="1.905" y1="1.905" x2="1.905" y2="2.8575" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="-0.9525" width="0.4064" layer="51"/>
<wire x1="2.54" y1="-0.9525" x2="2.54" y2="1.905" width="0.4064" layer="51"/>
<wire x1="2.54" y1="-1.905" x2="-2.54" y2="-1.905" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="1.905" x2="2.54" y2="1.905" width="0.4064" layer="51"/>
<wire x1="-0.3175" y1="-0.9525" x2="2.54" y2="-0.9525" width="0.254" layer="51"/>
<wire x1="-2.54" y1="-1.5875" x2="2.54" y2="-1.5875" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.5875" x2="2.54" y2="1.5875" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.5875" x2="-2.54" y2="1.5875" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-2.54" y2="0.635" width="0.254" layer="21" curve="180"/>
<wire x1="-2.54" y1="-1.5875" x2="-2.54" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="1.5875" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-2.54" y2="0.635" width="0.4064" layer="51" curve="180"/>
<wire x1="-2.54" y1="-0.635" x2="-2.54" y2="-1.905" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="1.905" width="0.4064" layer="51"/>
<circle x="-1.27" y="-0.9525" radius="0.4762" width="0" layer="51"/>
<smd name="1" x="-1.905" y="-2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="2" x="-0.635" y="-2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="3" x="0.635" y="-2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="4" x="1.905" y="-2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="5" x="1.905" y="2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="6" x="0.635" y="2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="7" x="-0.635" y="2.8575" dx="0.635" dy="1.778" layer="1"/>
<smd name="8" x="-1.905" y="2.8575" dx="0.635" dy="1.778" layer="1"/>
<text x="-3.175" y="-1.905" size="1.27" layer="25" font="vector" ratio="16" rot="R90">&gt;NAME</text>
<text x="-3.175" y="-1.905" size="1.27" layer="27" font="vector" ratio="16" rot="R90">&gt;VALUE</text>
<text x="-3.0163" y="-1.5875" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="SD1X2">
<wire x1="-2.2225" y1="0.4763" x2="2.2225" y2="2.2225" width="1.016" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="0" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="2.54" width="0.4064" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="0" width="0.4064" layer="94"/>
<wire x1="5.08" y1="0" x2="5.08" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="-5.08" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="3.81" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="0" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="3.81" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="94"/>
<circle x="3.175" y="0" radius="0.635" width="0.1524" layer="94"/>
<circle x="-3.175" y="0" radius="0.635" width="0.1524" layer="94"/>
<circle x="3.175" y="2.54" radius="0.635" width="0.1524" layer="94"/>
<text x="-5.08" y="7.62" size="1.524" layer="95" font="vector">&gt;NAME</text>
<text x="-5.08" y="5.715" size="1.524" layer="96" font="vector">&gt;VALUE</text>
<pin name="S1" x="-7.62" y="0" visible="pad" length="short"/>
<pin name="S2B" x="7.62" y="0" visible="pad" length="short" rot="R180"/>
<pin name="D" x="0" y="-5.08" visible="pad" length="short" direction="in" rot="R90"/>
<pin name="S2A" x="7.62" y="2.54" visible="pad" length="short" rot="R180"/>
</symbol>
<symbol name="V+-LGND">
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="2.2225" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-2.2225" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-2.2225" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="2.2225" width="0.1524" layer="94"/>
<text x="-1.905" y="0.1588" size="1.524" layer="95" font="vector">&gt;PART</text>
<text x="-1.905" y="-1.7463" size="1.524" layer="96" font="vector">&gt;VALUE</text>
<text x="-1.905" y="3.175" size="1.016" layer="95" font="vector">V+</text>
<text x="-1.905" y="-4.1275" size="1.016" layer="95" font="vector">V-</text>
<text x="3.175" y="-4.1275" size="1.016" layer="95" font="vector">GND</text>
<text x="3.175" y="3.175" size="1.016" layer="95" font="vector">VL</text>
<pin name="V+" x="-2.54" y="5.08" visible="pad" length="short" direction="pwr" rot="R270"/>
<pin name="V-" x="-2.54" y="-5.08" visible="pad" length="short" direction="pwr" rot="R90"/>
<pin name="GND" x="2.54" y="-5.08" visible="pad" length="short" direction="pwr" rot="R90"/>
<pin name="VL" x="2.54" y="5.08" visible="pad" length="short" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DG419" prefix="N">
<description>&lt;b&gt;DG419&lt;/b&gt;: SPDT analog switch (Maxim)&lt;br&gt;
&amp;plusmn;15V, 30&amp;Omega; Ron, 175ns tswitch&lt;br&gt;
TTL level inputs, separate digital supply

&lt;br&gt;
_____&lt;br&gt;
&lt;br&gt;
&lt;b&gt;References:&lt;/b&gt;&lt;br&gt;

&amp;nbsp; - &lt;a href="http://elektronik.aei.uni-hannover.de:3000/datasheets/ics/switches-multiplexers/dg419.pdf"&gt;
PDF datasheet&lt;/a&gt; (electronics workshop server)&lt;br&gt;

&amp;nbsp; - &lt;a href="http://www.maximintegrated.com/datasheet/index.mvp/id/1005"&gt;
Manufacturer's link&lt;/a&gt; (Maxim website)&lt;br&gt;

&amp;nbsp; - &lt;a href="http://www.google.de/search?q=dg419"&gt;
Internet search&lt;/a&gt; (Google results)&lt;br&gt;</description>
<gates>
<gate name="A" symbol="SD1X2" x="0" y="0"/>
<gate name="P" symbol="V+-LGND" x="15.24" y="0" addlevel="always"/>
</gates>
<devices>
<device name="N" package="DIP08N">
<connects>
<connect gate="A" pin="D" pad="6"/>
<connect gate="A" pin="S1" pad="1"/>
<connect gate="A" pin="S2A" pad="2"/>
<connect gate="A" pin="S2B" pad="8"/>
<connect gate="P" pin="GND" pad="3"/>
<connect gate="P" pin="V+" pad="4"/>
<connect gate="P" pin="V-" pad="7"/>
<connect gate="P" pin="VL" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="VALUE" value="DG419"/>
</technology>
</technologies>
</device>
<device name="L" package="DIP08L">
<connects>
<connect gate="A" pin="D" pad="6"/>
<connect gate="A" pin="S1" pad="1"/>
<connect gate="A" pin="S2A" pad="2"/>
<connect gate="A" pin="S2B" pad="8"/>
<connect gate="P" pin="GND" pad="3"/>
<connect gate="P" pin="V+" pad="4"/>
<connect gate="P" pin="V-" pad="7"/>
<connect gate="P" pin="VL" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="VALUE" value="DG419"/>
</technology>
</technologies>
</device>
<device name="" package="DIP08L">
<connects>
<connect gate="A" pin="D" pad="6"/>
<connect gate="A" pin="S1" pad="1"/>
<connect gate="A" pin="S2A" pad="2"/>
<connect gate="A" pin="S2B" pad="8"/>
<connect gate="P" pin="GND" pad="3"/>
<connect gate="P" pin="V+" pad="4"/>
<connect gate="P" pin="V-" pad="7"/>
<connect gate="P" pin="VL" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="VALUE" value="DG419"/>
</technology>
</technologies>
</device>
<device name="R" package="DIP08R">
<connects>
<connect gate="A" pin="D" pad="6"/>
<connect gate="A" pin="S1" pad="1"/>
<connect gate="A" pin="S2A" pad="2"/>
<connect gate="A" pin="S2B" pad="8"/>
<connect gate="P" pin="GND" pad="3"/>
<connect gate="P" pin="V+" pad="4"/>
<connect gate="P" pin="V-" pad="7"/>
<connect gate="P" pin="VL" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="VALUE" value="DG419"/>
</technology>
</technologies>
</device>
<device name="S" package="SO08">
<connects>
<connect gate="A" pin="D" pad="6"/>
<connect gate="A" pin="S1" pad="1"/>
<connect gate="A" pin="S2A" pad="2"/>
<connect gate="A" pin="S2B" pad="8"/>
<connect gate="P" pin="GND" pad="3"/>
<connect gate="P" pin="V+" pad="4"/>
<connect gate="P" pin="V-" pad="7"/>
<connect gate="P" pin="VL" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="VALUE" value="DG419"/>
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
<attribute name="COMPANY" value=""/>
<attribute name="DATE" value="2016-07-18"/>
<attribute name="DESCRIPTION" value=""/>
<attribute name="DESCRIPTION2" value=""/>
<attribute name="REVISION" value="2016-07-18"/>
<attribute name="REVISIONAUTHOR1" value=""/>
<attribute name="REVISIONAUTHOR2" value=""/>
<attribute name="REVISIONAUTHOR3" value=""/>
<attribute name="REVISIONAUTHOR4" value=""/>
<attribute name="REVISIONAUTHOR5" value=""/>
<attribute name="REVISIONDATE1" value=""/>
<attribute name="REVISIONDATE2" value=""/>
<attribute name="REVISIONDATE3" value=""/>
<attribute name="REVISIONDATE4" value=""/>
<attribute name="REVISIONDATE5" value=""/>
<attribute name="TITLE" value="60-AMPLIFIER-"/>
<attribute name="TITLE2" value="DIGITAL-SWITCHING"/>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="N1" library="digitals" deviceset="*04" device="" technology="74AC" value=""/>
<part name="T1" library="transistors" deviceset="BC547" device="" value="BC547"/>
<part name="R1" library="symbols" deviceset="R" device=""/>
<part name="R2" library="symbols" deviceset="R" device=""/>
<part name="D1" library="diodes" deviceset="DZ" device=""/>
<part name="N3" library="optos" deviceset="H11F1" device=""/>
<part name="X1" library="symbols" deviceset="V+" device="" value="15V"/>
<part name="D2" library="diodes" deviceset="D" device=""/>
<part name="D3" library="diodes" deviceset="D" device=""/>
<part name="$1" library="signals" deviceset="VG" device=""/>
<part name="R3" library="symbols" deviceset="R" device=""/>
<part name="X2" library="symbols" deviceset="V+" device="" value="15V"/>
<part name="N2" library="ics" deviceset="DG419" device="" value="DG419"/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="121.92" y1="71.12" x2="121.92" y2="10.16" width="0.1524" layer="97" style="longdash"/>
<text x="76.2" y="66.04" size="2.54" layer="97" font="vector" align="center">DIGITAL OUTPUT CARD</text>
<text x="160.02" y="66.04" size="2.54" layer="97" font="vector" align="center">HV AMPLIFIER</text>
</plain>
<instances>
<instance part="N1" gate="A" x="43.18" y="35.56" smashed="yes">
<attribute name="VALUE" x="40.64" y="39.37" size="1.524" layer="96" font="vector"/>
</instance>
<instance part="T1" gate="A" x="93.98" y="27.94" smashed="yes"/>
<instance part="R1" gate="A" x="76.2" y="35.56"/>
<instance part="R2" gate="A" x="91.44" y="20.32"/>
<instance part="D1" gate="A" x="104.14" y="27.94" smashed="yes" rot="R90">
<attribute name="VALUE" x="107.6325" y="26.035" size="1.524" layer="96" font="vector" rot="R90"/>
</instance>
<instance part="N3" gate="A" x="60.96" y="38.1" smashed="yes"/>
<instance part="X1" gate="A" x="50.8" y="45.72"/>
<instance part="D2" gate="A" x="142.24" y="27.94" smashed="yes" rot="R90">
<attribute name="VALUE" x="145.7325" y="26.035" size="1.524" layer="96" font="vector" rot="R90"/>
</instance>
<instance part="D3" gate="A" x="142.24" y="43.18" smashed="yes" rot="R90">
<attribute name="VALUE" x="145.7325" y="41.275" size="1.524" layer="96" font="vector" rot="R90"/>
</instance>
<instance part="$1" gate="A" x="142.24" y="15.24"/>
<instance part="R3" gate="A" x="149.86" y="43.18" rot="R90"/>
<instance part="X2" gate="A" x="142.24" y="55.88"/>
<instance part="N2" gate="A" x="160.02" y="35.56" smashed="yes" rot="MR90"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="N1" gate="A" pin="O"/>
<wire x1="53.34" y1="35.56" x2="50.8" y2="35.56" width="0.1524" layer="91"/>
<pinref part="N3" gate="A" pin="C"/>
</segment>
</net>
<net name="DIGITAL_CONTROL" class="0">
<segment>
<pinref part="N1" gate="A" pin="I"/>
<wire x1="38.1" y1="35.56" x2="35.56" y2="35.56" width="0.1524" layer="91"/>
<label x="35.56" y="35.56" size="1.27" layer="95" font="vector" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="T1" gate="A" pin="B"/>
<pinref part="R2" gate="A" pin="N$DUMMY@1"/>
<wire x1="83.82" y1="27.94" x2="88.9" y2="27.94" width="0.1524" layer="91"/>
<wire x1="86.36" y1="20.32" x2="83.82" y2="20.32" width="0.1524" layer="91"/>
<wire x1="83.82" y1="20.32" x2="83.82" y2="27.94" width="0.1524" layer="91"/>
<wire x1="83.82" y1="27.94" x2="83.82" y2="35.56" width="0.1524" layer="91"/>
<junction x="83.82" y="27.94"/>
<pinref part="R1" gate="A" pin="N$DUMMY@2"/>
<wire x1="83.82" y1="35.56" x2="81.28" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="V_LOW" class="0">
<segment>
<pinref part="T1" gate="A" pin="E"/>
<wire x1="99.06" y1="22.86" x2="99.06" y2="20.32" width="0.1524" layer="91"/>
<pinref part="R2" gate="A" pin="N$DUMMY@2"/>
<wire x1="99.06" y1="20.32" x2="96.52" y2="20.32" width="0.1524" layer="91"/>
<pinref part="D1" gate="A" pin="A"/>
<wire x1="104.14" y1="25.4" x2="104.14" y2="20.32" width="0.1524" layer="91"/>
<wire x1="104.14" y1="20.32" x2="99.06" y2="20.32" width="0.1524" layer="91"/>
<junction x="99.06" y="20.32"/>
<wire x1="104.14" y1="20.32" x2="106.68" y2="20.32" width="0.1524" layer="91"/>
<junction x="104.14" y="20.32"/>
<label x="106.68" y="20.32" size="1.27" layer="95" font="vector" xref="yes"/>
</segment>
<segment>
<pinref part="$1" gate="A" pin="GND"/>
<pinref part="D2" gate="A" pin="A"/>
<wire x1="142.24" y1="15.24" x2="142.24" y2="20.32" width="0.1524" layer="91"/>
<wire x1="142.24" y1="20.32" x2="142.24" y2="25.4" width="0.1524" layer="91"/>
<wire x1="142.24" y1="20.32" x2="137.16" y2="20.32" width="0.1524" layer="91"/>
<junction x="142.24" y="20.32"/>
<label x="137.16" y="20.32" size="1.27" layer="95" font="vector" rot="R180" xref="yes"/>
</segment>
</net>
<net name="V_CONTROL" class="0">
<segment>
<pinref part="T1" gate="A" pin="C"/>
<wire x1="99.06" y1="33.02" x2="99.06" y2="35.56" width="0.1524" layer="91"/>
<wire x1="99.06" y1="35.56" x2="104.14" y2="35.56" width="0.1524" layer="91"/>
<pinref part="D1" gate="A" pin="C"/>
<wire x1="104.14" y1="35.56" x2="104.14" y2="30.48" width="0.1524" layer="91"/>
<wire x1="104.14" y1="35.56" x2="106.68" y2="35.56" width="0.1524" layer="91"/>
<junction x="104.14" y="35.56"/>
<label x="106.68" y="35.56" size="1.27" layer="95" font="vector" xref="yes"/>
</segment>
<segment>
<pinref part="D2" gate="A" pin="C"/>
<pinref part="D3" gate="A" pin="A"/>
<wire x1="142.24" y1="30.48" x2="142.24" y2="35.56" width="0.1524" layer="91"/>
<wire x1="142.24" y1="35.56" x2="142.24" y2="40.64" width="0.1524" layer="91"/>
<wire x1="142.24" y1="35.56" x2="137.16" y2="35.56" width="0.1524" layer="91"/>
<junction x="142.24" y="35.56"/>
<label x="137.16" y="35.56" size="1.27" layer="95" font="vector" rot="R180" xref="yes"/>
<wire x1="142.24" y1="35.56" x2="149.86" y2="35.56" width="0.1524" layer="91"/>
<pinref part="R3" gate="A" pin="N$DUMMY@1"/>
<wire x1="149.86" y1="35.56" x2="149.86" y2="38.1" width="0.1524" layer="91"/>
<pinref part="N2" gate="A" pin="D"/>
<wire x1="149.86" y1="35.56" x2="154.94" y2="35.56" width="0.1524" layer="91"/>
<junction x="149.86" y="35.56"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="N3" gate="A" pin="A"/>
<wire x1="53.34" y1="40.64" x2="50.8" y2="40.64" width="0.1524" layer="91"/>
<pinref part="X1" gate="A" pin="1"/>
<wire x1="50.8" y1="40.64" x2="50.8" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="R1" gate="A" pin="N$DUMMY@1"/>
<pinref part="N3" gate="A" pin="R2"/>
<wire x1="71.12" y1="35.56" x2="68.58" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="V_HIGH" class="0">
<segment>
<pinref part="N3" gate="A" pin="R1"/>
<wire x1="68.58" y1="40.64" x2="83.82" y2="40.64" width="0.1524" layer="91"/>
<wire x1="83.82" y1="40.64" x2="83.82" y2="50.8" width="0.1524" layer="91"/>
<wire x1="83.82" y1="50.8" x2="106.68" y2="50.8" width="0.1524" layer="91"/>
<label x="106.68" y="50.8" size="1.27" layer="95" font="vector" xref="yes"/>
</segment>
<segment>
<pinref part="D3" gate="A" pin="C"/>
<wire x1="142.24" y1="45.72" x2="142.24" y2="50.8" width="0.1524" layer="91"/>
<wire x1="142.24" y1="50.8" x2="137.16" y2="50.8" width="0.1524" layer="91"/>
<label x="137.16" y="50.8" size="1.27" layer="95" font="vector" rot="R180" xref="yes"/>
<junction x="142.24" y="50.8"/>
<pinref part="R3" gate="A" pin="N$DUMMY@2"/>
<wire x1="149.86" y1="50.8" x2="149.86" y2="48.26" width="0.1524" layer="91"/>
<junction x="149.86" y="50.8"/>
<wire x1="149.86" y1="50.8" x2="142.24" y2="50.8" width="0.1524" layer="91"/>
<pinref part="X2" gate="A" pin="1"/>
<wire x1="142.24" y1="50.8" x2="142.24" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="V_OUTPUT" class="0">
<segment>
<pinref part="N2" gate="A" pin="S1"/>
<wire x1="160.02" y1="27.94" x2="160.02" y2="20.32" width="0.1524" layer="91"/>
<wire x1="160.02" y1="20.32" x2="175.26" y2="20.32" width="0.1524" layer="91"/>
<label x="175.26" y="20.32" size="1.27" layer="95" font="vector" xref="yes"/>
</segment>
</net>
<net name="WHITENED_INPUT" class="0">
<segment>
<pinref part="N2" gate="A" pin="S2B"/>
<wire x1="160.02" y1="43.18" x2="160.02" y2="50.8" width="0.1524" layer="91"/>
<wire x1="160.02" y1="50.8" x2="175.26" y2="50.8" width="0.1524" layer="91"/>
<label x="175.26" y="50.8" size="1.27" layer="95" font="vector" xref="yes"/>
</segment>
</net>
<net name="UNWHITENED_INPUT" class="0">
<segment>
<pinref part="N2" gate="A" pin="S2A"/>
<wire x1="162.56" y1="43.18" x2="162.56" y2="48.26" width="0.1524" layer="91"/>
<wire x1="162.56" y1="48.26" x2="175.26" y2="48.26" width="0.1524" layer="91"/>
<label x="175.26" y="48.26" size="1.27" layer="95" font="vector" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
