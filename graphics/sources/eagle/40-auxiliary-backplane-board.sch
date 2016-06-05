<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.025" altunitdist="inch" altunit="inch"/>
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
<library name="con-vg">
<description>&lt;b&gt;VG Connectors (DIN 41612/DIN 41617)&lt;/b&gt;&lt;p&gt;
The library contains devices which allow to place the contacts individually or 
in one or several blocks.&lt;p&gt;
This behavior is indicated by the key words &lt;i&gt;single&lt;/i&gt; and &lt;i&gt;block&lt;/i&gt; in
the respective device descriptions.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="FAC32S">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
female, 32 pins, type D, rows AC, grid 5.08 mm</description>
<wire x1="1.27" y1="-42.545" x2="1.27" y2="-41.275" width="0.254" layer="21"/>
<wire x1="1.27" y1="-41.275" x2="3.81" y2="-41.275" width="0.254" layer="21"/>
<wire x1="3.81" y1="41.275" x2="1.27" y2="41.275" width="0.254" layer="21"/>
<wire x1="1.27" y1="41.275" x2="1.27" y2="42.545" width="0.254" layer="21"/>
<wire x1="1.27" y1="42.545" x2="-1.651" y2="42.545" width="0.254" layer="21"/>
<wire x1="2.794" y1="47.244" x2="2.794" y2="44.45" width="0.254" layer="21"/>
<wire x1="2.794" y1="47.244" x2="-3.175" y2="47.244" width="0.254" layer="21"/>
<wire x1="1.27" y1="42.545" x2="2.794" y2="44.45" width="0.254" layer="21"/>
<wire x1="-3.175" y1="47.244" x2="-3.175" y2="44.45" width="0.254" layer="21"/>
<wire x1="-3.175" y1="47.244" x2="-4.826" y2="47.244" width="0.254" layer="21"/>
<wire x1="-1.651" y1="42.545" x2="-3.175" y2="44.45" width="0.254" layer="21"/>
<wire x1="-1.651" y1="42.545" x2="-3.81" y2="42.545" width="0.254" layer="21"/>
<wire x1="2.667" y1="-47.244" x2="2.667" y2="-44.45" width="0.254" layer="21"/>
<wire x1="2.667" y1="-47.244" x2="4.826" y2="-47.244" width="0.254" layer="21"/>
<wire x1="0.889" y1="42.164" x2="-3.429" y2="42.164" width="0.254" layer="21"/>
<wire x1="0.889" y1="42.164" x2="0.889" y2="40.894" width="0.254" layer="21"/>
<wire x1="0.889" y1="40.894" x2="3.429" y2="40.894" width="0.254" layer="21"/>
<wire x1="3.429" y1="-40.894" x2="0.889" y2="-40.894" width="0.254" layer="21"/>
<wire x1="0.889" y1="-40.894" x2="0.889" y2="-42.164" width="0.254" layer="21"/>
<wire x1="0.889" y1="-42.164" x2="-3.429" y2="-42.164" width="0.254" layer="21"/>
<wire x1="4.826" y1="47.244" x2="2.794" y2="47.244" width="0.254" layer="21"/>
<wire x1="4.826" y1="47.244" x2="5.334" y2="46.736" width="0.254" layer="21" curve="-90"/>
<wire x1="-5.334" y1="46.736" x2="-4.826" y2="47.244" width="0.254" layer="21" curve="-90"/>
<wire x1="-4.826" y1="-47.244" x2="-3.429" y2="-47.244" width="0.254" layer="21"/>
<wire x1="-5.334" y1="-46.736" x2="-5.334" y2="46.736" width="0.254" layer="21"/>
<wire x1="5.334" y1="-46.736" x2="5.334" y2="46.736" width="0.254" layer="21"/>
<wire x1="-5.334" y1="-46.736" x2="-4.826" y2="-47.244" width="0.254" layer="21" curve="90"/>
<wire x1="4.826" y1="-47.244" x2="5.334" y2="-46.736" width="0.254" layer="21" curve="90"/>
<wire x1="-3.429" y1="-47.244" x2="-3.429" y2="-44.45" width="0.254" layer="21"/>
<wire x1="-3.429" y1="-47.244" x2="2.667" y2="-47.244" width="0.254" layer="21"/>
<wire x1="1.143" y1="-42.545" x2="1.27" y2="-42.545" width="0.254" layer="21"/>
<wire x1="1.143" y1="-42.545" x2="2.667" y2="-44.45" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-42.545" x2="-1.905" y2="-42.545" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-42.545" x2="1.143" y2="-42.545" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-42.545" x2="-3.429" y2="-44.45" width="0.254" layer="21"/>
<wire x1="3.429" y1="-40.894" x2="3.429" y2="-20.193" width="0.254" layer="51"/>
<wire x1="3.429" y1="-20.193" x2="3.429" y2="-20.066" width="0.254" layer="51"/>
<wire x1="3.81" y1="38.735" x2="3.81" y2="-41.275" width="0.254" layer="51"/>
<wire x1="3.81" y1="38.735" x2="3.81" y2="41.275" width="0.254" layer="21"/>
<wire x1="3.429" y1="-20.193" x2="3.429" y2="39.116" width="0.254" layer="51"/>
<wire x1="3.429" y1="39.116" x2="3.429" y2="40.894" width="0.254" layer="21"/>
<wire x1="-3.81" y1="38.735" x2="-3.81" y2="42.545" width="0.254" layer="21"/>
<wire x1="-3.429" y1="42.164" x2="-3.429" y2="39.116" width="0.254" layer="21"/>
<wire x1="-3.429" y1="39.116" x2="-3.429" y2="-42.037" width="0.254" layer="51"/>
<wire x1="-3.81" y1="38.735" x2="-3.81" y2="-42.545" width="0.254" layer="51"/>
<wire x1="-3.429" y1="-41.275" x2="-3.429" y2="-42.164" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-41.275" x2="-3.81" y2="-42.545" width="0.254" layer="21"/>
<circle x="-0.3048" y="-45.0088" radius="1.27" width="0.254" layer="21"/>
<circle x="-0.3048" y="45.0088" radius="1.27" width="0.254" layer="21"/>
<circle x="-0.3048" y="45.0088" radius="2.286" width="1.778" layer="42"/>
<circle x="-0.3048" y="45.0088" radius="2.286" width="1.778" layer="43"/>
<circle x="-0.3048" y="-45.0088" radius="2.286" width="1.778" layer="42"/>
<circle x="-0.3048" y="-45.0088" radius="2.286" width="1.778" layer="43"/>
<pad name="A2" x="-2.54" y="36.83" drill="1.016" shape="octagon"/>
<pad name="A4" x="-2.54" y="31.75" drill="1.016" shape="octagon"/>
<pad name="A6" x="-2.54" y="26.67" drill="1.016" shape="octagon"/>
<pad name="A8" x="-2.54" y="21.59" drill="1.016" shape="octagon"/>
<pad name="A10" x="-2.54" y="16.51" drill="1.016" shape="octagon"/>
<pad name="A12" x="-2.54" y="11.43" drill="1.016" shape="octagon"/>
<pad name="A14" x="-2.54" y="6.35" drill="1.016" shape="octagon"/>
<pad name="A16" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="A18" x="-2.54" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="A20" x="-2.54" y="-8.89" drill="1.016" shape="octagon"/>
<pad name="A22" x="-2.54" y="-13.97" drill="1.016" shape="octagon"/>
<pad name="A24" x="-2.54" y="-19.05" drill="1.016" shape="octagon"/>
<pad name="A26" x="-2.54" y="-24.13" drill="1.016" shape="octagon"/>
<pad name="A28" x="-2.54" y="-29.21" drill="1.016" shape="octagon"/>
<pad name="A30" x="-2.54" y="-34.29" drill="1.016" shape="octagon"/>
<pad name="A32" x="-2.54" y="-39.37" drill="1.016" shape="octagon"/>
<pad name="C2" x="2.54" y="36.83" drill="1.016" shape="octagon"/>
<pad name="C4" x="2.54" y="31.75" drill="1.016" shape="octagon"/>
<pad name="C6" x="2.54" y="26.67" drill="1.016" shape="octagon"/>
<pad name="C8" x="2.54" y="21.59" drill="1.016" shape="octagon"/>
<pad name="C10" x="2.54" y="16.51" drill="1.016" shape="octagon"/>
<pad name="C12" x="2.54" y="11.43" drill="1.016" shape="octagon"/>
<pad name="C14" x="2.54" y="6.35" drill="1.016" shape="octagon"/>
<pad name="C16" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="C18" x="2.54" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="C20" x="2.54" y="-8.89" drill="1.016" shape="octagon"/>
<pad name="C22" x="2.54" y="-13.97" drill="1.016" shape="octagon"/>
<pad name="C24" x="2.54" y="-19.05" drill="1.016" shape="octagon"/>
<pad name="C26" x="2.54" y="-24.13" drill="1.016" shape="octagon"/>
<pad name="C28" x="2.54" y="-29.21" drill="1.016" shape="octagon"/>
<pad name="C30" x="2.54" y="-34.29" drill="1.016" shape="octagon"/>
<pad name="C32" x="2.54" y="-39.37" drill="1.016" shape="octagon"/>
<text x="1.778" y="38.862" size="1.27" layer="21" ratio="10">C</text>
<text x="-5.842" y="-46.99" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-1.778" y="-41.91" size="1.27" layer="21" ratio="10">32</text>
<text x="-5.842" y="-34.29" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-2.921" y="38.862" size="1.27" layer="21" ratio="10">A</text>
<text x="-0.635" y="38.862" size="1.27" layer="21" ratio="10">2</text>
<text x="0.635" y="-27.94" size="1.27" layer="21" ratio="10" rot="R90">DIN41612 -D</text>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.905" layer="51"/>
<rectangle x1="2.159" y1="5.715" x2="2.921" y2="6.985" layer="51"/>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.905" layer="51"/>
<rectangle x1="-2.921" y1="5.715" x2="-2.159" y2="6.985" layer="51"/>
<rectangle x1="-2.921" y1="10.795" x2="-2.159" y2="12.065" layer="51"/>
<rectangle x1="-2.921" y1="15.875" x2="-2.159" y2="17.145" layer="51"/>
<rectangle x1="-2.921" y1="20.955" x2="-2.159" y2="22.225" layer="51"/>
<rectangle x1="-2.921" y1="26.035" x2="-2.159" y2="27.305" layer="51"/>
<rectangle x1="-2.921" y1="31.115" x2="-2.159" y2="32.385" layer="51"/>
<rectangle x1="-2.921" y1="36.195" x2="-2.159" y2="37.465" layer="51"/>
<rectangle x1="2.159" y1="10.795" x2="2.921" y2="12.065" layer="51"/>
<rectangle x1="2.159" y1="15.875" x2="2.921" y2="17.145" layer="51"/>
<rectangle x1="2.159" y1="20.955" x2="2.921" y2="22.225" layer="51"/>
<rectangle x1="2.159" y1="26.035" x2="2.921" y2="27.305" layer="51"/>
<rectangle x1="2.159" y1="31.115" x2="2.921" y2="32.385" layer="51"/>
<rectangle x1="2.159" y1="36.195" x2="2.921" y2="37.465" layer="51"/>
<rectangle x1="2.159" y1="-29.845" x2="2.921" y2="-28.575" layer="51"/>
<rectangle x1="2.159" y1="-24.765" x2="2.921" y2="-23.495" layer="51"/>
<rectangle x1="-2.921" y1="-29.845" x2="-2.159" y2="-28.575" layer="51"/>
<rectangle x1="-2.921" y1="-24.765" x2="-2.159" y2="-23.495" layer="51"/>
<rectangle x1="-2.921" y1="-19.685" x2="-2.159" y2="-18.415" layer="51"/>
<rectangle x1="-2.921" y1="-14.605" x2="-2.159" y2="-13.335" layer="51"/>
<rectangle x1="-2.921" y1="-9.525" x2="-2.159" y2="-8.255" layer="51"/>
<rectangle x1="-2.921" y1="-4.445" x2="-2.159" y2="-3.175" layer="51"/>
<rectangle x1="2.159" y1="-19.685" x2="2.921" y2="-18.415" layer="51"/>
<rectangle x1="2.159" y1="-14.605" x2="2.921" y2="-13.335" layer="51"/>
<rectangle x1="2.159" y1="-9.525" x2="2.921" y2="-8.255" layer="51"/>
<rectangle x1="2.159" y1="-4.445" x2="2.921" y2="-3.175" layer="51"/>
<rectangle x1="2.159" y1="-34.925" x2="2.921" y2="-33.655" layer="51"/>
<rectangle x1="-2.921" y1="-34.925" x2="-2.159" y2="-33.655" layer="51"/>
<rectangle x1="2.159" y1="-40.005" x2="2.921" y2="-38.735" layer="51"/>
<rectangle x1="-2.921" y1="-40.005" x2="-2.159" y2="-38.735" layer="51"/>
<hole x="-0.3048" y="45.0088" drill="2.794"/>
<hole x="-0.3048" y="-45.0088" drill="2.794"/>
</package>
</packages>
<symbols>
<symbol name="F32AC/2">
<wire x1="3.81" y1="-43.18" x2="-3.81" y2="-43.18" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="38.1" x2="-3.81" y2="-43.18" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="38.1" x2="3.81" y2="38.1" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-43.18" x2="3.81" y2="38.1" width="0.4064" layer="94"/>
<wire x1="-1.651" y1="-39.751" x2="-1.651" y2="-41.529" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-34.671" x2="-1.651" y2="-36.449" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-29.591" x2="-1.651" y2="-31.369" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-24.511" x2="-1.651" y2="-26.289" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-19.431" x2="-1.651" y2="-21.209" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-14.351" x2="-1.651" y2="-16.129" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-9.271" x2="-1.651" y2="-11.049" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-4.191" x2="-1.651" y2="-5.969" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="0.889" x2="-1.651" y2="-0.889" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="5.969" x2="-1.651" y2="4.191" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="11.049" x2="-1.651" y2="9.271" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="16.129" x2="-1.651" y2="14.351" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="21.209" x2="-1.651" y2="19.431" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="26.289" x2="-1.651" y2="24.511" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="31.369" x2="-1.651" y2="29.591" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="36.449" x2="-1.651" y2="34.671" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-41.529" x2="1.651" y2="-39.751" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-36.449" x2="1.651" y2="-34.671" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-31.369" x2="1.651" y2="-29.591" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-26.289" x2="1.651" y2="-24.511" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-21.209" x2="1.651" y2="-19.431" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-16.129" x2="1.651" y2="-14.351" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-11.049" x2="1.651" y2="-9.271" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-5.969" x2="1.651" y2="-4.191" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-0.889" x2="1.651" y2="0.889" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="4.191" x2="1.651" y2="5.969" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="9.271" x2="1.651" y2="11.049" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="14.351" x2="1.651" y2="16.129" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="19.431" x2="1.651" y2="21.209" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="24.511" x2="1.651" y2="26.289" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="29.591" x2="1.651" y2="31.369" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="34.671" x2="1.651" y2="36.449" width="0.254" layer="94" curve="180" cap="flat"/>
<text x="-3.81" y="-45.72" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="38.862" size="1.778" layer="95">&gt;NAME</text>
<pin name="C2" x="7.62" y="35.56" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C4" x="7.62" y="30.48" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C6" x="7.62" y="25.4" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C8" x="7.62" y="20.32" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C10" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C12" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C14" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C16" x="7.62" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C18" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C20" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C22" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C24" x="7.62" y="-20.32" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C26" x="7.62" y="-25.4" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C28" x="7.62" y="-30.48" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C30" x="7.62" y="-35.56" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C32" x="7.62" y="-40.64" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="A2" x="-7.62" y="35.56" visible="pad" length="middle" direction="pas"/>
<pin name="A4" x="-7.62" y="30.48" visible="pad" length="middle" direction="pas"/>
<pin name="A6" x="-7.62" y="25.4" visible="pad" length="middle" direction="pas"/>
<pin name="A8" x="-7.62" y="20.32" visible="pad" length="middle" direction="pas"/>
<pin name="A10" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas"/>
<pin name="A12" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas"/>
<pin name="A14" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas"/>
<pin name="A16" x="-7.62" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="A18" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="A20" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas"/>
<pin name="A22" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas"/>
<pin name="A24" x="-7.62" y="-20.32" visible="pad" length="middle" direction="pas"/>
<pin name="A26" x="-7.62" y="-25.4" visible="pad" length="middle" direction="pas"/>
<pin name="A28" x="-7.62" y="-30.48" visible="pad" length="middle" direction="pas"/>
<pin name="A30" x="-7.62" y="-35.56" visible="pad" length="middle" direction="pas"/>
<pin name="A32" x="-7.62" y="-40.64" visible="pad" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FAC32S" prefix="X">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
female, 32 pins, block, type D, rows AC, grid 5.08 mm</description>
<gates>
<gate name="G$1" symbol="F32AC/2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FAC32S">
<connects>
<connect gate="G$1" pin="A10" pad="A10"/>
<connect gate="G$1" pin="A12" pad="A12"/>
<connect gate="G$1" pin="A14" pad="A14"/>
<connect gate="G$1" pin="A16" pad="A16"/>
<connect gate="G$1" pin="A18" pad="A18"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A20" pad="A20"/>
<connect gate="G$1" pin="A22" pad="A22"/>
<connect gate="G$1" pin="A24" pad="A24"/>
<connect gate="G$1" pin="A26" pad="A26"/>
<connect gate="G$1" pin="A28" pad="A28"/>
<connect gate="G$1" pin="A30" pad="A30"/>
<connect gate="G$1" pin="A32" pad="A32"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A8" pad="A8"/>
<connect gate="G$1" pin="C10" pad="C10"/>
<connect gate="G$1" pin="C12" pad="C12"/>
<connect gate="G$1" pin="C14" pad="C14"/>
<connect gate="G$1" pin="C16" pad="C16"/>
<connect gate="G$1" pin="C18" pad="C18"/>
<connect gate="G$1" pin="C2" pad="C2"/>
<connect gate="G$1" pin="C20" pad="C20"/>
<connect gate="G$1" pin="C22" pad="C22"/>
<connect gate="G$1" pin="C24" pad="C24"/>
<connect gate="G$1" pin="C26" pad="C26"/>
<connect gate="G$1" pin="C28" pad="C28"/>
<connect gate="G$1" pin="C30" pad="C30"/>
<connect gate="G$1" pin="C32" pad="C32"/>
<connect gate="G$1" pin="C4" pad="C4"/>
<connect gate="G$1" pin="C6" pad="C6"/>
<connect gate="G$1" pin="C8" pad="C8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="connectors">
<description>&lt;table width="100%" cellpadding="5" cellspacing="0"  bgcolor="#E0E0E0"&gt;&lt;tr&gt;&lt;td&gt;
&lt;h3&gt;Connectors&lt;/h3&gt;
Connectors, screw and crimp terminals, jumpers, test points, pins, pads, ...&lt;br&gt;
&lt;author&gt;&lt;b&gt;Update:&lt;/b&gt; 2014-07-22 Andreas Weidner&lt;/author&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;
&lt;br&gt;&lt;br&gt;

&lt;b&gt;Device prefixes&lt;/b&gt;&lt;br&gt;
All devices have a dedicated prefix, sometimes followed by a 2-digit number, which signify
the connector type and its pin number. The following device types are available (excerpt):&lt;p&gt;
&lt;table cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;J[Nr]&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Jumper wire [length in 0.1"]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;JP[Nr]&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Jumper pin block [pin number]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;X[Nr]&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Connector [pin number]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;XA[Nr]&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Connector with alternating pins [pin number]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;XB[Nr]&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Backplane connector [pin number]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;XD&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Digital ground test point&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;XG&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Ground test point&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;XP&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Input/output pin&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;XS[Nr]&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Shielded connector [pin number]&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;XT&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Test point&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;XU[Nr]&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Connector with unconnected (separate) pins [pin number]&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;Device suffixes&lt;/b&gt;&lt;br&gt;
Most connectors and pins offer different suffixes to directly specify the package type. The following list gives some
examples of available suffixes (note that not all connectors offer all types of packages):&lt;br&gt;
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;(none)&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Default connector package (currently DIL with normal pads, if available)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;H&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Horizontal mounting (parallel to PCB), straight contacts&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;V&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Vertical mounting (perpendicular to PCB), angled contacts&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;L&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Long pads (easily solderable, through-pin-routing possible)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;N&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Normal pads (easily solderable)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;R&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Reduced pads (small, through-pin-routing possible)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;S&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;SMD contacts&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;&lt;hr&gt;&lt;p&gt;

&lt;b&gt;Device examples&lt;/b&gt;&lt;br&gt;
The following examples show devices that can be inserted into EAGLE schematics using
the &lt;b&gt;add&lt;/b&gt; command:&lt;p&gt; 
&lt;table border="0" cellpadding="0" cellspacing="0"&gt;
&lt;tr&gt;&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;J&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Default jumper (currently 0.2" with normal pads)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;X06&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Default 6-pin connector (currently IDC package with reduced pads)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;XA16-DIL-N&amp;nbsp;&amp;nbsp;&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Pin header with 2*8 alternating pins in DIL package with normal pads&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;XS01-4S&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Default shielded connector with 4 shield pins (currently LEMO00 angled)&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;/td&gt;
  &lt;td&gt;&lt;tt&gt;XPR&lt;/tt&gt;&lt;/td&gt;
  &lt;td&gt;Default input/output pin with reduced pads&lt;/td&gt;
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
<package name="X04-DIL-VN">
<description>&lt;b&gt;Pin header&lt;/b&gt; 2*2 pins, DIL&lt;br&gt;
___&lt;br&gt;&lt;br&gt;
&lt;font color=red&gt;Not suited for IDC connections!&lt;/font&gt;</description>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="2.54" x2="-2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-2.6193" y1="2.6193" x2="2.6193" y2="2.6193" width="0.254" layer="21"/>
<wire x1="2.6193" y1="2.6193" x2="2.6193" y2="-2.6195" width="0.254" layer="21"/>
<wire x1="2.6193" y1="-2.6195" x2="-2.6193" y2="-2.6195" width="0.254" layer="21"/>
<wire x1="-2.6193" y1="-2.6195" x2="-2.6193" y2="2.6193" width="0.254" layer="21"/>
<circle x="-1.27" y="1.27" radius="0.3175" width="0" layer="51"/>
<circle x="1.27" y="1.27" radius="0.3175" width="0" layer="51"/>
<circle x="-1.27" y="-1.27" radius="0.3175" width="0" layer="51"/>
<circle x="1.27" y="-1.27" radius="0.3175" width="0" layer="51"/>
<pad name="1" x="-1.27" y="-1.27" drill="0.889" diameter="2.032" first="yes"/>
<pad name="3" x="1.27" y="-1.27" drill="0.889" diameter="2.032"/>
<pad name="2" x="-1.27" y="1.27" drill="0.889" diameter="2.032"/>
<pad name="4" x="1.27" y="1.27" drill="0.889" diameter="2.032"/>
<text x="-2.54" y="3.175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.54" y="3.175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.81" y="-1.905" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="3.175" y="0.635" size="1.27" layer="51" font="vector" ratio="16">4</text>
<text x="-2.6988" y="3.175" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.9688" y="-1.905" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="-2.6988" y="-4.445" size="1.27" layer="21" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.81" y="0.635" size="1.27" layer="51" font="vector" ratio="16">2</text>
<text x="3.175" y="-1.905" size="1.27" layer="51" font="vector" ratio="16">3</text>
</package>
<package name="X04-DIL-VR">
<description>&lt;b&gt;Pin header&lt;/b&gt; 2*2 pins, DIL, reduced pads&lt;br&gt;
___&lt;br&gt;&lt;br&gt;
&lt;font color=red&gt;Not suited for IDC connections!&lt;/font&gt;</description>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="2.54" y1="2.54" x2="-2.54" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="2.54" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="21"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-2.54" width="0.254" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="2.54" width="0.254" layer="21"/>
<circle x="-1.27" y="1.27" radius="0.3175" width="0" layer="51"/>
<circle x="1.27" y="1.27" radius="0.3175" width="0" layer="51"/>
<circle x="-1.27" y="-1.27" radius="0.3175" width="0" layer="51"/>
<circle x="1.27" y="-1.27" radius="0.3175" width="0" layer="51"/>
<pad name="1" x="-1.27" y="-1.27" drill="0.889" diameter="1.397" shape="square" first="yes"/>
<pad name="3" x="1.27" y="-1.27" drill="0.889" diameter="1.397" shape="square"/>
<pad name="2" x="-1.27" y="1.27" drill="0.889" diameter="1.397" shape="square"/>
<pad name="4" x="1.27" y="1.27" drill="0.889" diameter="1.397" shape="square"/>
<text x="-2.54" y="3.175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-2.54" y="3.175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.81" y="-1.905" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="3.175" y="0.635" size="1.27" layer="51" font="vector" ratio="16">4</text>
<text x="-2.54" y="3.0163" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.81" y="-1.905" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="-2.54" y="-4.2863" size="1.27" layer="21" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.81" y="0.635" size="1.27" layer="51" font="vector" ratio="16">2</text>
<text x="3.175" y="-1.905" size="1.27" layer="51" font="vector" ratio="16">3</text>
</package>
<package name="X04-SIL-VL">
<description>&lt;b&gt;Pin header&lt;/b&gt; 4 pins, SIL, long pads</description>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.4064" layer="51"/>
<wire x1="5.08" y1="1.27" x2="-5.08" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="-1.27" x2="5.08" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="1.7463" x2="5.08" y2="1.7463" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.7463" x2="5.08" y2="-1.7463" width="0.254" layer="21"/>
<wire x1="5.08" y1="-1.7463" x2="-5.08" y2="-1.7463" width="0.254" layer="21"/>
<wire x1="-5.08" y1="-1.7463" x2="-5.08" y2="1.7463" width="0.254" layer="21"/>
<circle x="-1.27" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-3.81" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="1.27" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="3.81" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="2" x="-1.27" y="0" drill="0.889" diameter="1.397" shape="long" rot="R90"/>
<pad name="1" x="-3.81" y="0" drill="0.889" diameter="1.397" shape="long" rot="R90" first="yes"/>
<pad name="3" x="1.27" y="0" drill="0.889" diameter="1.397" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="0.889" diameter="1.397" shape="long" rot="R90"/>
<text x="-5.08" y="1.905" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-5.08" y="1.905" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-6.35" y="-0.635" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-5.08" y="2.2225" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-6.35" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="-5.08" y="-3.4925" size="1.27" layer="21" font="vector" ratio="16">&gt;VALUE</text>
</package>
<package name="X04-SIL-VN">
<description>&lt;b&gt;Pin header&lt;/b&gt; 4 pins, SIL</description>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.4064" layer="51"/>
<wire x1="5.08" y1="1.27" x2="-5.08" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="-1.27" x2="5.08" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-5.1595" y1="1.3494" x2="5.1594" y2="1.3494" width="0.254" layer="21"/>
<wire x1="5.1594" y1="1.3494" x2="5.1594" y2="-1.3495" width="0.254" layer="21"/>
<wire x1="5.1594" y1="-1.3495" x2="-5.1595" y2="-1.3495" width="0.254" layer="21"/>
<wire x1="-5.1595" y1="-1.3495" x2="-5.1595" y2="1.3494" width="0.254" layer="21"/>
<circle x="-1.27" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-3.81" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="1.27" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="3.81" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="2" x="-1.27" y="0" drill="0.889" diameter="2.032"/>
<pad name="1" x="-3.81" y="0" drill="0.889" diameter="2.032" first="yes"/>
<pad name="3" x="1.27" y="0" drill="0.889" diameter="2.032"/>
<pad name="4" x="3.81" y="0" drill="0.889" diameter="2.032"/>
<text x="-5.08" y="1.905" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-5.08" y="1.905" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-6.35" y="-0.635" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-5.2388" y="1.905" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-6.5088" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="-5.2388" y="-3.175" size="1.27" layer="21" font="vector" ratio="16">&gt;VALUE</text>
</package>
<package name="X04-SIL-VR">
<description>&lt;b&gt;Pin header&lt;/b&gt; 4 pins, SIL, reduced pads</description>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.4064" layer="51"/>
<wire x1="5.08" y1="1.27" x2="-5.08" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="-1.27" x2="5.08" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="1.27" x2="5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="-5.08" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-5.08" y1="-1.27" x2="-5.08" y2="1.27" width="0.254" layer="21"/>
<circle x="-1.27" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-3.81" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="1.27" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="3.81" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="2" x="-1.27" y="0" drill="0.889" diameter="1.397" shape="square"/>
<pad name="1" x="-3.81" y="0" drill="0.889" diameter="1.397" shape="square" first="yes"/>
<pad name="3" x="1.27" y="0" drill="0.889" diameter="1.397" shape="square"/>
<pad name="4" x="3.81" y="0" drill="0.889" diameter="1.397" shape="square"/>
<text x="-5.08" y="1.905" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-5.08" y="1.905" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-6.35" y="-0.635" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-5.08" y="1.7463" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-6.35" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="-5.08" y="-3.0163" size="1.27" layer="21" font="vector" ratio="16">&gt;VALUE</text>
</package>
<package name="X04-SCREW">
<description>&lt;b&gt;Screw terminal&lt;/b&gt; 4 pins, 0.2" grid</description>
<wire x1="-10.16" y1="5.08" x2="10.16" y2="5.08" width="0.4064" layer="51"/>
<wire x1="10.16" y1="5.08" x2="10.16" y2="2.54" width="0.4064" layer="51"/>
<wire x1="10.16" y1="2.54" x2="10.16" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="10.16" y1="-2.54" x2="10.16" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="8.89" y1="-5.08" x2="6.35" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="6.35" y1="-5.08" x2="3.81" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-5.08" x2="1.27" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="1.27" y1="-5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-1.27" y1="-5.08" x2="-3.81" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-5.08" x2="-6.35" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-6.35" y1="-5.08" x2="-8.89" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="-5.08" x2="-10.16" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-10.16" y1="-5.08" x2="-10.16" y2="-3.81" width="0.4064" layer="51"/>
<wire x1="-10.16" y1="-3.81" x2="-10.16" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-10.16" y1="-2.54" x2="-10.16" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-10.16" y1="2.54" x2="-10.16" y2="3.81" width="0.4064" layer="51"/>
<wire x1="-10.16" y1="3.81" x2="-10.16" y2="5.08" width="0.4064" layer="51"/>
<wire x1="-10.16" y1="2.54" x2="10.16" y2="2.54" width="0.254" layer="51"/>
<wire x1="-10.16" y1="-2.54" x2="10.16" y2="-2.54" width="0.254" layer="51"/>
<wire x1="-10.16" y1="3.81" x2="-10.795" y2="3.81" width="0.254" layer="51"/>
<wire x1="-10.795" y1="3.81" x2="-10.795" y2="2.54" width="0.254" layer="51"/>
<wire x1="-10.795" y1="2.54" x2="-10.16" y2="2.54" width="0.254" layer="51"/>
<wire x1="-10.16" y1="-2.54" x2="-10.795" y2="-2.54" width="0.254" layer="51"/>
<wire x1="-10.795" y1="-2.54" x2="-10.795" y2="-3.81" width="0.254" layer="51"/>
<wire x1="-10.795" y1="-3.81" x2="-10.16" y2="-3.81" width="0.254" layer="51"/>
<wire x1="-8.89" y1="-5.08" x2="-8.255" y2="-4.445" width="0.254" layer="51"/>
<wire x1="-8.255" y1="-4.445" x2="-6.985" y2="-4.445" width="0.254" layer="51"/>
<wire x1="-6.985" y1="-4.445" x2="-6.35" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-3.81" y1="-5.08" x2="-3.175" y2="-4.445" width="0.254" layer="51"/>
<wire x1="-3.175" y1="-4.445" x2="-1.905" y2="-4.445" width="0.254" layer="51"/>
<wire x1="-1.905" y1="-4.445" x2="-1.27" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-3.81" y1="-1.27" x2="-1.27" y2="1.27" width="0.508" layer="51"/>
<wire x1="-8.89" y1="-1.27" x2="-6.35" y2="1.27" width="0.508" layer="51"/>
<wire x1="1.27" y1="-1.27" x2="3.81" y2="1.27" width="0.508" layer="51"/>
<wire x1="1.27" y1="-5.08" x2="1.905" y2="-4.445" width="0.254" layer="51"/>
<wire x1="1.905" y1="-4.445" x2="3.175" y2="-4.445" width="0.254" layer="51"/>
<wire x1="3.175" y1="-4.445" x2="3.81" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-10.16" y1="5.08" x2="10.16" y2="5.08" width="0.254" layer="21"/>
<wire x1="10.16" y1="5.08" x2="10.16" y2="-5.08" width="0.254" layer="21"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-5.08" width="0.254" layer="21"/>
<wire x1="8.89" y1="-5.08" x2="8.255" y2="-4.445" width="0.254" layer="21"/>
<wire x1="8.255" y1="-4.445" x2="6.985" y2="-4.445" width="0.254" layer="21"/>
<wire x1="6.985" y1="-4.445" x2="6.35" y2="-5.08" width="0.254" layer="21"/>
<wire x1="6.35" y1="-5.08" x2="3.81" y2="-5.08" width="0.254" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="-1.27" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-5.08" x2="-6.35" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-8.89" y1="-5.08" x2="-10.16" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-10.16" y1="-5.08" x2="-10.16" y2="5.08" width="0.254" layer="21"/>
<wire x1="-8.89" y1="-5.08" x2="-8.255" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-8.255" y1="-4.445" x2="-6.985" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-6.985" y1="-4.445" x2="-6.35" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-5.08" x2="-3.175" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-4.445" x2="-1.905" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-4.445" x2="-1.27" y2="-5.08" width="0.254" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="1.905" y2="-4.445" width="0.254" layer="21"/>
<wire x1="1.905" y1="-4.445" x2="3.175" y2="-4.445" width="0.254" layer="21"/>
<wire x1="3.175" y1="-4.445" x2="3.81" y2="-5.08" width="0.254" layer="21"/>
<wire x1="6.35" y1="-1.27" x2="8.89" y2="1.27" width="0.508" layer="51"/>
<wire x1="6.985" y1="-4.445" x2="8.255" y2="-4.445" width="0.254" layer="51"/>
<wire x1="8.255" y1="-4.445" x2="8.89" y2="-5.08" width="0.254" layer="51"/>
<wire x1="6.35" y1="-5.08" x2="6.985" y2="-4.445" width="0.254" layer="51"/>
<circle x="-2.54" y="0" radius="1.905" width="0.254" layer="51"/>
<circle x="-7.62" y="0" radius="1.905" width="0.254" layer="51"/>
<circle x="2.54" y="0" radius="1.905" width="0.254" layer="51"/>
<circle x="7.62" y="0" radius="1.905" width="0.254" layer="51"/>
<pad name="1" x="-7.62" y="0" drill="1.2954" diameter="2.794" first="yes"/>
<pad name="2" x="-2.54" y="0" drill="1.2954" diameter="2.794"/>
<pad name="3" x="2.54" y="0" drill="1.2954" diameter="2.794"/>
<pad name="4" x="7.62" y="0" drill="1.2954" diameter="2.794"/>
<text x="-9.525" y="3.175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-9.525" y="3.175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-11.9063" y="5.08" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;NAME</text>
<text x="10.6363" y="5.08" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;VALUE</text>
</package>
<package name="X04-PC5.25">
<description>&lt;b&gt;Connector&lt;/b&gt; 4 pins, 0.2" grid&lt;br&gt;
5 1/4" floppy power supply&lt;br&gt;
&amp;nbsp; - B&amp;uuml;rklin 71 F 972</description>
<wire x1="-12.7" y1="-0.635" x2="-11.43" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="-11.43" y1="-0.635" x2="-10.16" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="-10.16" y1="-0.635" x2="-8.89" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="-8.89" y1="-0.635" x2="-7.62" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="-0.635" x2="-5.08" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="-5.08" y1="-0.635" x2="-3.81" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-0.635" x2="-2.54" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="-2.54" y1="-0.635" x2="0" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="0" y1="-0.635" x2="1.27" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="1.27" y1="-0.635" x2="2.54" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="2.54" y1="-0.635" x2="5.08" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="5.08" y1="-0.635" x2="6.35" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="6.35" y1="-0.635" x2="7.62" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="7.62" y1="-0.635" x2="10.16" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="10.16" y1="-0.635" x2="11.43" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="11.43" y1="-0.635" x2="12.7" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="12.7" y1="-0.635" x2="12.7" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="12.7" y1="-2.54" x2="11.43" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="11.43" y1="-2.54" x2="11.43" y2="-12.7" width="0.4064" layer="51"/>
<wire x1="-12.7" y1="-0.635" x2="-12.7" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-12.7" y1="-2.54" x2="-11.43" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-11.43" y1="-2.54" x2="-11.43" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-11.43" y1="-5.08" x2="-11.43" y2="-12.7" width="0.4064" layer="51"/>
<wire x1="-11.43" y1="-12.7" x2="11.43" y2="-12.7" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="7.62" y1="0" x2="7.62" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-11.43" y1="-2.54" x2="-11.43" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="11.43" y1="-2.54" x2="11.43" y2="-0.635" width="0.4064" layer="51"/>
<wire x1="10.16" y1="-0.635" x2="10.16" y2="-5.08" width="0.254" layer="51"/>
<wire x1="5.08" y1="-0.635" x2="5.08" y2="-5.08" width="0.254" layer="51"/>
<wire x1="6.35" y1="-0.635" x2="6.35" y2="-5.08" width="0.254" layer="51"/>
<wire x1="6.35" y1="-5.08" x2="10.16" y2="-5.08" width="0.254" layer="51"/>
<wire x1="0" y1="-0.635" x2="0" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-5.08" y1="-0.635" x2="-5.08" y2="-5.08" width="0.254" layer="51"/>
<wire x1="1.27" y1="-0.635" x2="1.27" y2="-5.08" width="0.254" layer="51"/>
<wire x1="1.27" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="51"/>
<wire x1="0" y1="-5.08" x2="-3.81" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-3.81" y1="-5.08" x2="-3.81" y2="-0.635" width="0.254" layer="51"/>
<wire x1="-5.08" y1="-5.08" x2="-8.89" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-8.89" y1="-5.08" x2="-8.89" y2="-0.635" width="0.254" layer="51"/>
<wire x1="-10.16" y1="-0.635" x2="-10.16" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-10.16" y1="-5.08" x2="-11.43" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-11.7475" y1="-12.7" x2="-11.7475" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-11.7475" y1="-2.54" x2="-12.7" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-12.7" y1="-2.54" x2="-12.7" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-10.16" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.16" y2="1.905" width="0.254" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="10.16" y2="1.905" width="0.254" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.16" y2="-0.635" width="0.254" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="12.7" y2="-0.635" width="0.254" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.7" y2="-2.54" width="0.254" layer="21"/>
<wire x1="12.7" y1="-2.54" x2="11.7475" y2="-2.54" width="0.254" layer="21"/>
<wire x1="11.7475" y1="-2.54" x2="11.7475" y2="-12.7" width="0.254" layer="21"/>
<wire x1="11.7475" y1="-12.7" x2="-11.7475" y2="-12.7" width="0.254" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.397" diameter="2.794" first="yes"/>
<pad name="2" x="-2.54" y="0" drill="1.397" diameter="2.794"/>
<pad name="3" x="2.54" y="0" drill="1.397" diameter="2.794"/>
<pad name="4" x="7.62" y="0" drill="1.397" diameter="2.794"/>
<text x="-10.795" y="-12.065" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-10.795" y="-12.065" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="12.2238" y="-3.0163" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;NAME</text>
<text x="-13.4938" y="-3.0163" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;VALUE</text>
<text x="-9.2075" y="0" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-10.4775" y="1.1113" size="1.27" layer="21" font="vector" ratio="16" rot="R180">1</text>
<hole x="-10.16" y="-2.54" drill="2.54"/>
<hole x="10.16" y="-2.54" drill="2.54"/>
<hole x="-5.08" y="-10.4775" drill="3.81"/>
<hole x="5.08" y="-10.4775" drill="3.81"/>
</package>
<package name="X04-2MM-HS">
<description>&lt;b&gt;Connector&lt;/b&gt; 4 pins, 2mm spacing&lt;br&gt;
SMD, horizontal mounting</description>
<wire x1="-5.2" y1="-4.5" x2="5.2" y2="-4.5" width="0.4064" layer="51"/>
<wire x1="-5.2" y1="1.5" x2="-3" y2="1.5" width="0.4064" layer="51"/>
<wire x1="-3" y1="1.5" x2="-1" y2="1.5" width="0.4064" layer="51"/>
<wire x1="-1" y1="1.5" x2="1" y2="1.5" width="0.4064" layer="51"/>
<wire x1="1" y1="1.5" x2="3" y2="1.5" width="0.4064" layer="51"/>
<wire x1="3" y1="1.5" x2="5.2" y2="1.5" width="0.4064" layer="51"/>
<wire x1="-3" y1="1.5" x2="-3" y2="4" width="0.1524" layer="51"/>
<wire x1="-1" y1="1.5" x2="-1" y2="4" width="0.1524" layer="51"/>
<wire x1="1" y1="1.5" x2="1" y2="4" width="0.1524" layer="51"/>
<wire x1="-6" y1="-3.6" x2="-6" y2="3" width="0.4064" layer="51"/>
<wire x1="-6" y1="3" x2="-5.2" y2="3" width="0.4064" layer="51"/>
<wire x1="-5.2" y1="3" x2="-5.2" y2="1.5" width="0.4064" layer="51"/>
<wire x1="6" y1="-3.6" x2="6" y2="3" width="0.4064" layer="51"/>
<wire x1="6" y1="3" x2="5.2" y2="3" width="0.4064" layer="51"/>
<wire x1="5.2" y1="3" x2="5.2" y2="1.5" width="0.4064" layer="51"/>
<wire x1="-6" y1="-3.6" x2="-5.2" y2="-3.6" width="0.4064" layer="51"/>
<wire x1="-5.2" y1="-3.6" x2="-5.2" y2="-4.5" width="0.4064" layer="51"/>
<wire x1="6" y1="-3.6" x2="5.2" y2="-3.6" width="0.4064" layer="51"/>
<wire x1="5.2" y1="-3.6" x2="5.2" y2="-4.5" width="0.4064" layer="51"/>
<wire x1="4.1" y1="5.3" x2="4.1" y2="3" width="0.254" layer="21"/>
<wire x1="4.1" y1="3" x2="6" y2="3" width="0.254" layer="21"/>
<wire x1="-4.1" y1="5.3" x2="4.1" y2="5.3" width="0.254" layer="21"/>
<wire x1="-4.1" y1="5.3" x2="-4.1" y2="3" width="0.254" layer="21"/>
<wire x1="-4.1" y1="3" x2="-6" y2="3" width="0.254" layer="21"/>
<wire x1="-6" y1="3" x2="-6" y2="-0.9" width="0.254" layer="21"/>
<wire x1="6" y1="3" x2="6" y2="-0.9" width="0.254" layer="21"/>
<wire x1="-4.5" y1="-4.5" x2="4.5" y2="-4.5" width="0.254" layer="21"/>
<wire x1="3" y1="1.5" x2="3" y2="4" width="0.1524" layer="51"/>
<smd name="1" x="-3" y="3" dx="1.2" dy="3.6" layer="1"/>
<smd name="2" x="-1" y="3" dx="1.2" dy="3.6" layer="1"/>
<smd name="3" x="1" y="3" dx="1.2" dy="3.6" layer="1"/>
<smd name="CASE2" x="5.9" y="-3.1" dx="1.8" dy="3.5" layer="1"/>
<smd name="CASE1" x="-5.9" y="-3.1" dx="1.8" dy="3.5" layer="1"/>
<smd name="4" x="3" y="3" dx="1.2" dy="3.6" layer="1"/>
<text x="-3.5" y="-0.3" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-4.445" y="-3.81" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.445" y="-3.81" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-6.5088" y="-0.7938" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
<text x="-5.4" y="3.4587" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="7.7788" y="-0.7938" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;VALUE</text>
</package>
<package name="X04-2MM-VN">
<description>&lt;b&gt;Connector&lt;/b&gt; 4 pins, 2mm spacing&lt;br&gt;
SIL through-hole, vertical mounting</description>
<wire x1="-4.9" y1="1.6" x2="-4.9" y2="-3" width="0.4064" layer="51"/>
<wire x1="-4.9" y1="1.6" x2="-0.8" y2="1.6" width="0.4064" layer="51"/>
<wire x1="-0.8" y1="1.6" x2="0.8" y2="1.6" width="0.4064" layer="51"/>
<wire x1="0.8" y1="1.6" x2="4.9" y2="1.6" width="0.4064" layer="51"/>
<wire x1="-4.9" y1="-3" x2="4.9" y2="-3" width="0.4064" layer="51"/>
<wire x1="4.9" y1="1.6" x2="4.9" y2="-3" width="0.4064" layer="51"/>
<wire x1="-0.8" y1="1.6" x2="-0.8" y2="1.1" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="1.1" x2="-4.4" y2="1.1" width="0.1524" layer="51"/>
<wire x1="-4.4" y1="1.1" x2="-4.4" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="-4.4" y1="-2.5" x2="-1.2" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="-2.5" x2="1.2" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="1.2" y1="-2.5" x2="4.4" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="4.4" y1="-2.5" x2="4.4" y2="1.1" width="0.1524" layer="51"/>
<wire x1="4.4" y1="1.1" x2="0.8" y2="1.1" width="0.1524" layer="51"/>
<wire x1="0.8" y1="1.1" x2="0.8" y2="1.6" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="-2.2" x2="-1.2" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="1.2" y1="-2.2" x2="1.2" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="-4.9" y1="1.6" x2="-3.7" y2="1.6" width="0.254" layer="21"/>
<wire x1="4.9" y1="1.6" x2="3.7" y2="1.6" width="0.254" layer="21"/>
<wire x1="-4.9" y1="1.6" x2="-4.9" y2="-3" width="0.254" layer="21"/>
<wire x1="-4.9" y1="-3" x2="4.9" y2="-3" width="0.254" layer="21"/>
<wire x1="4.9" y1="-3" x2="4.9" y2="1.6" width="0.254" layer="21"/>
<circle x="1" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-3" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-1" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="3" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="1" x="-3" y="0" drill="0.8128" diameter="1.397" shape="long" rot="R90" first="yes"/>
<pad name="2" x="-1" y="0" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="3" x="1" y="0" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="4" x="3" y="0" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<text x="-3.5" y="-1.9" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-5.1" y="2" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-5.1" y="2" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-6.6675" y="1.7463" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;NAME</text>
<text x="-4.5" y="-2.6" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="5.3975" y="1.7463" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;VALUE</text>
</package>
<package name="X04-LIGO-VN">
<wire x1="7.9375" y1="-5.08" x2="7.9375" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="7.9375" y1="-2.54" x2="7.9375" y2="5.08" width="0.4064" layer="51"/>
<wire x1="7.9375" y1="5.08" x2="-7.9375" y2="5.08" width="0.4064" layer="51"/>
<wire x1="-7.9375" y1="5.08" x2="-7.9375" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-7.9375" y1="-2.54" x2="-7.9375" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-7.9375" y1="-5.08" x2="-5.715" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-5.715" y1="-5.08" x2="5.715" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="5.715" y1="-5.08" x2="7.9375" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-7.9375" y1="5.08" x2="7.9375" y2="5.08" width="0.254" layer="21"/>
<wire x1="7.9375" y1="5.08" x2="7.9375" y2="-3.81" width="0.254" layer="21"/>
<wire x1="7.9375" y1="-3.81" x2="7.9375" y2="-5.08" width="0.254" layer="21"/>
<wire x1="7.9375" y1="-5.08" x2="-7.9375" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-7.9375" y1="-5.08" x2="-7.9375" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-7.9375" y1="-3.81" x2="-7.9375" y2="5.08" width="0.254" layer="21"/>
<wire x1="-7.9375" y1="-2.54" x2="-5.715" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-5.715" y1="-2.54" x2="5.715" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="5.715" y1="-2.54" x2="7.9375" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-5.715" y1="-2.54" x2="-5.715" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="5.715" y1="-2.54" x2="5.715" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-7.9375" y1="-3.81" x2="7.9375" y2="-3.81" width="0.254" layer="21"/>
<circle x="-2" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-6" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="2" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="6" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="2" x="-2" y="0" drill="1.778" diameter="3.048" shape="long" rot="R90"/>
<pad name="1" x="-6" y="0" drill="1.778" diameter="3.048" shape="long" rot="R90" first="yes"/>
<pad name="3" x="2" y="0" drill="1.778" diameter="3.048" shape="long" rot="R90"/>
<pad name="4" x="6" y="0" drill="1.778" diameter="3.048" shape="long" rot="R90"/>
<text x="-7.3025" y="3.175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-7.3025" y="3.175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-7.1438" y="-1.7463" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-8.255" y="-5.0801" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
<text x="-7.7788" y="-6.6675" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="9.525" y="-5.08" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;VALUE</text>
</package>
<package name="X03-SIL-VL">
<description>&lt;b&gt;Pin header&lt;/b&gt; 3 pins, SIL, long pads</description>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.4064" layer="51"/>
<wire x1="3.81" y1="1.27" x2="-3.81" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-1.27" x2="3.81" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="1.7462" x2="-3.81" y2="-1.7463" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-1.7463" x2="3.81" y2="-1.7463" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.7463" x2="3.81" y2="1.7462" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.7462" x2="-3.81" y2="1.7462" width="0.254" layer="21"/>
<circle x="0" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-2.54" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="2.54" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="2" x="0" y="0" drill="0.889" diameter="1.397" shape="long" rot="R90"/>
<pad name="1" x="-2.54" y="0" drill="0.889" diameter="1.397" shape="long" rot="R90" first="yes"/>
<pad name="3" x="2.54" y="0" drill="0.889" diameter="1.397" shape="long" rot="R90"/>
<text x="-3.81" y="1.905" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.81" y="1.905" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-5.08" y="-0.635" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-3.81" y="2.2225" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-5.08" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="-3.81" y="-3.4925" size="1.27" layer="21" font="vector" ratio="16">&gt;VALUE</text>
</package>
<package name="X03-SIL-VN">
<description>&lt;b&gt;Pin header&lt;/b&gt; 3 pins, SIL</description>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.4064" layer="51"/>
<wire x1="3.81" y1="1.27" x2="-3.81" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-1.27" x2="3.81" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.8894" y1="1.3494" x2="-3.8894" y2="-1.3495" width="0.254" layer="21"/>
<wire x1="-3.8894" y1="-1.3495" x2="3.8895" y2="-1.3495" width="0.254" layer="21"/>
<wire x1="3.8895" y1="-1.3495" x2="3.8895" y2="1.3494" width="0.254" layer="21"/>
<wire x1="3.8895" y1="1.3494" x2="-3.8894" y2="1.3494" width="0.254" layer="21"/>
<circle x="0" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-2.54" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="2.54" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="2" x="0" y="0" drill="0.889" diameter="2.032"/>
<pad name="1" x="-2.54" y="0" drill="0.889" diameter="2.032" first="yes"/>
<pad name="3" x="2.54" y="0" drill="0.889" diameter="2.032"/>
<text x="-3.81" y="1.905" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.81" y="1.905" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-5.08" y="-0.635" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-3.9688" y="1.905" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-5.2388" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="-3.9688" y="-3.175" size="1.27" layer="21" font="vector" ratio="16">&gt;VALUE</text>
</package>
<package name="X03-SIL-VR">
<description>&lt;b&gt;Pin header&lt;/b&gt; 3 pins, SIL, reduced pads</description>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.4064" layer="51"/>
<wire x1="3.81" y1="1.27" x2="-3.81" y2="1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-1.27" x2="3.81" y2="-1.27" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<circle x="0" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-2.54" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="2.54" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="2" x="0" y="0" drill="0.889" diameter="1.397" shape="square"/>
<pad name="1" x="-2.54" y="0" drill="0.889" diameter="1.397" shape="square" first="yes"/>
<pad name="3" x="2.54" y="0" drill="0.889" diameter="1.397" shape="square"/>
<text x="-3.81" y="1.905" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.81" y="1.905" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-5.08" y="-0.635" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-3.81" y="1.7463" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-5.08" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="-3.81" y="-3.0163" size="1.27" layer="21" font="vector" ratio="16">&gt;VALUE</text>
</package>
<package name="X03-SCREW">
<description>&lt;b&gt;Screw terminal&lt;/b&gt; 3 pins, 0.2" grid</description>
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.4064" layer="51"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="2.54" width="0.4064" layer="51"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="7.62" y1="-5.08" x2="6.35" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="6.35" y1="-5.08" x2="3.81" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="3.81" y1="-5.08" x2="1.27" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="1.27" y1="-5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-1.27" y1="-5.08" x2="-3.81" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-3.81" y1="-5.08" x2="-6.35" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-6.35" y1="-5.08" x2="-7.62" y2="-5.08" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="-3.81" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="-3.81" x2="-7.62" y2="-2.54" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="-2.54" x2="-7.62" y2="2.54" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="3.81" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="3.81" x2="-7.62" y2="5.08" width="0.4064" layer="51"/>
<wire x1="-7.62" y1="2.54" x2="7.62" y2="2.54" width="0.254" layer="51"/>
<wire x1="-7.62" y1="-2.54" x2="7.62" y2="-2.54" width="0.254" layer="51"/>
<wire x1="-7.62" y1="3.81" x2="-8.255" y2="3.81" width="0.254" layer="51"/>
<wire x1="-8.255" y1="3.81" x2="-8.255" y2="2.54" width="0.254" layer="51"/>
<wire x1="-8.255" y1="2.54" x2="-7.62" y2="2.54" width="0.254" layer="51"/>
<wire x1="-7.62" y1="-2.54" x2="-8.255" y2="-2.54" width="0.254" layer="51"/>
<wire x1="-8.255" y1="-2.54" x2="-8.255" y2="-3.81" width="0.254" layer="51"/>
<wire x1="-8.255" y1="-3.81" x2="-7.62" y2="-3.81" width="0.254" layer="51"/>
<wire x1="-6.35" y1="-5.08" x2="-5.715" y2="-4.445" width="0.254" layer="51"/>
<wire x1="-5.715" y1="-4.445" x2="-4.445" y2="-4.445" width="0.254" layer="51"/>
<wire x1="-4.445" y1="-4.445" x2="-3.81" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-1.27" y1="-5.08" x2="-0.635" y2="-4.445" width="0.254" layer="51"/>
<wire x1="-0.635" y1="-4.445" x2="0.635" y2="-4.445" width="0.254" layer="51"/>
<wire x1="0.635" y1="-4.445" x2="1.27" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="1.27" width="0.508" layer="51"/>
<wire x1="-6.35" y1="-1.27" x2="-3.81" y2="1.27" width="0.508" layer="51"/>
<wire x1="3.81" y1="-1.27" x2="6.35" y2="1.27" width="0.508" layer="51"/>
<wire x1="3.81" y1="-5.08" x2="4.445" y2="-4.445" width="0.254" layer="51"/>
<wire x1="4.445" y1="-4.445" x2="5.715" y2="-4.445" width="0.254" layer="51"/>
<wire x1="5.715" y1="-4.445" x2="6.35" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="21"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-5.08" width="0.254" layer="21"/>
<wire x1="7.62" y1="-5.08" x2="6.35" y2="-5.08" width="0.254" layer="21"/>
<wire x1="3.81" y1="-5.08" x2="1.27" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-5.08" x2="-3.81" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-6.35" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="5.08" width="0.254" layer="21"/>
<wire x1="-6.35" y1="-5.08" x2="-5.715" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-5.715" y1="-4.445" x2="-4.445" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-4.445" x2="-3.81" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-5.08" x2="-0.635" y2="-4.445" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-4.445" x2="0.635" y2="-4.445" width="0.254" layer="21"/>
<wire x1="0.635" y1="-4.445" x2="1.27" y2="-5.08" width="0.254" layer="21"/>
<wire x1="3.81" y1="-5.08" x2="4.445" y2="-4.445" width="0.254" layer="21"/>
<wire x1="4.445" y1="-4.445" x2="5.715" y2="-4.445" width="0.254" layer="21"/>
<wire x1="5.715" y1="-4.445" x2="6.35" y2="-5.08" width="0.254" layer="21"/>
<circle x="0" y="0" radius="1.905" width="0.254" layer="51"/>
<circle x="-5.08" y="0" radius="1.905" width="0.254" layer="51"/>
<circle x="5.08" y="0" radius="1.905" width="0.254" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.2954" diameter="2.794" first="yes"/>
<pad name="2" x="0" y="0" drill="1.2954" diameter="2.794"/>
<pad name="3" x="5.08" y="0" drill="1.2954" diameter="2.794"/>
<text x="-6.985" y="3.175" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-6.985" y="3.175" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-9.3663" y="5.08" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;NAME</text>
<text x="8.0963" y="4.9212" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;VALUE</text>
</package>
<package name="X03-BROWN-VN">
<description>&lt;b&gt;Connector&lt;/b&gt; 3 pins, SIL&lt;br&gt;
Coded, 8.0*6.0mm&lt;br&gt;
&amp;nbsp; - Brown Reichelt type</description>
<wire x1="-3.9688" y1="3.175" x2="-3.9688" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-3.9688" y1="-2.54" x2="-3.9688" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-3.9688" y1="-3.175" x2="3.9687" y2="-3.175" width="0.254" layer="21"/>
<wire x1="3.9687" y1="-3.175" x2="3.9687" y2="3.175" width="0.254" layer="21"/>
<wire x1="3.9687" y1="3.175" x2="-3.9688" y2="3.175" width="0.254" layer="21"/>
<wire x1="3.9688" y1="-3.175" x2="3.9688" y2="-1.905" width="0.4064" layer="51"/>
<wire x1="3.9688" y1="-1.905" x2="3.9688" y2="3.175" width="0.4064" layer="51"/>
<wire x1="3.9688" y1="3.175" x2="-3.9687" y2="3.175" width="0.4064" layer="51"/>
<wire x1="-3.9687" y1="3.175" x2="-3.9687" y2="-1.905" width="0.4064" layer="51"/>
<wire x1="-3.9687" y1="-1.905" x2="-3.9687" y2="-3.175" width="0.4064" layer="51"/>
<wire x1="-3.9687" y1="-3.175" x2="3.9688" y2="-3.175" width="0.4064" layer="51"/>
<wire x1="-3.9687" y1="-1.905" x2="-1.27" y2="-1.905" width="0.254" layer="51"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="-2.54" width="0.254" layer="51"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.254" layer="51"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="-1.905" width="0.254" layer="51"/>
<wire x1="1.27" y1="-1.905" x2="3.9688" y2="-1.905" width="0.254" layer="51"/>
<wire x1="-3.9688" y1="-2.54" x2="3.9688" y2="-2.54" width="0.254" layer="21"/>
<circle x="2.54" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-2.54" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="0" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="2" x="0" y="0" drill="0.889" diameter="2.032"/>
<pad name="1" x="-2.54" y="0" drill="0.889" diameter="2.032" first="yes"/>
<pad name="3" x="2.54" y="0" drill="0.889" diameter="2.032"/>
<text x="-3.9688" y="3.4925" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-5.2388" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="-3.9688" y="-4.7625" size="1.27" layer="21" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.9688" y="3.6514" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.9688" y="3.6514" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-5.2387" y="-0.635" size="1.27" layer="51" font="vector" ratio="16">1</text>
</package>
<package name="X03-BROWN-VL">
<description>&lt;b&gt;Connector&lt;/b&gt; 3 pins, SIL, long pads&lt;br&gt;
Coded, 8.0*6.0mm&lt;br&gt;
&amp;nbsp; - Brown Reichelt type</description>
<wire x1="-3.9688" y1="3.175" x2="-3.9688" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-3.9688" y1="-2.54" x2="-3.9688" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-3.9688" y1="-3.175" x2="3.9687" y2="-3.175" width="0.254" layer="21"/>
<wire x1="3.9687" y1="-3.175" x2="3.9687" y2="3.175" width="0.254" layer="21"/>
<wire x1="3.9687" y1="3.175" x2="-3.9688" y2="3.175" width="0.254" layer="21"/>
<wire x1="3.9688" y1="-3.175" x2="3.9688" y2="-1.905" width="0.4064" layer="51"/>
<wire x1="3.9688" y1="-1.905" x2="3.9688" y2="3.175" width="0.4064" layer="51"/>
<wire x1="3.9688" y1="3.175" x2="-3.9687" y2="3.175" width="0.4064" layer="51"/>
<wire x1="-3.9687" y1="3.175" x2="-3.9687" y2="-1.905" width="0.4064" layer="51"/>
<wire x1="-3.9687" y1="-1.905" x2="-3.9687" y2="-3.175" width="0.4064" layer="51"/>
<wire x1="-3.9687" y1="-3.175" x2="3.9688" y2="-3.175" width="0.4064" layer="51"/>
<wire x1="-3.9687" y1="-1.905" x2="-1.27" y2="-1.905" width="0.254" layer="51"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="-2.54" width="0.254" layer="51"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.254" layer="51"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="-1.905" width="0.254" layer="51"/>
<wire x1="1.27" y1="-1.905" x2="3.9688" y2="-1.905" width="0.254" layer="51"/>
<wire x1="-3.9688" y1="-2.54" x2="3.9688" y2="-2.54" width="0.254" layer="21"/>
<circle x="2.54" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-2.54" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="0" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="2" x="0" y="0" drill="0.889" diameter="2.032" shape="long" rot="R90"/>
<pad name="1" x="-2.54" y="0" drill="0.889" diameter="2.032" shape="long" rot="R90" first="yes"/>
<pad name="3" x="2.54" y="0" drill="0.889" diameter="2.032" shape="long" rot="R90"/>
<text x="-3.9688" y="3.4925" size="1.27" layer="21" font="vector" ratio="16">&gt;NAME</text>
<text x="-5.2388" y="-0.635" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="-3.9688" y="-4.7625" size="1.27" layer="21" font="vector" ratio="16">&gt;VALUE</text>
<text x="-3.9688" y="3.6514" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-3.9688" y="3.6514" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-5.2387" y="-0.635" size="1.27" layer="51" font="vector" ratio="16">1</text>
</package>
<package name="X03-2MM-HS">
<description>&lt;b&gt;Connector&lt;/b&gt; 3 pins, 2mm spacing&lt;br&gt;
SMD, horizontal mounting</description>
<wire x1="-4.2" y1="-4.5" x2="4.2" y2="-4.5" width="0.4064" layer="51"/>
<wire x1="-4.2" y1="1.5" x2="-2" y2="1.5" width="0.4064" layer="51"/>
<wire x1="-2" y1="1.5" x2="0" y2="1.5" width="0.4064" layer="51"/>
<wire x1="0" y1="1.5" x2="2" y2="1.5" width="0.4064" layer="51"/>
<wire x1="2" y1="1.5" x2="4.2" y2="1.5" width="0.4064" layer="51"/>
<wire x1="-2" y1="1.5" x2="-2" y2="4" width="0.1524" layer="51"/>
<wire x1="0" y1="1.5" x2="0" y2="4" width="0.1524" layer="51"/>
<wire x1="2" y1="1.5" x2="2" y2="4" width="0.1524" layer="51"/>
<wire x1="-5" y1="-3.6" x2="-5" y2="3" width="0.4064" layer="51"/>
<wire x1="-5" y1="3" x2="-4.2" y2="3" width="0.4064" layer="51"/>
<wire x1="-4.2" y1="3" x2="-4.2" y2="1.5" width="0.4064" layer="51"/>
<wire x1="5" y1="-3.6" x2="5" y2="3" width="0.4064" layer="51"/>
<wire x1="5" y1="3" x2="4.2" y2="3" width="0.4064" layer="51"/>
<wire x1="4.2" y1="3" x2="4.2" y2="1.5" width="0.4064" layer="51"/>
<wire x1="-5" y1="-3.6" x2="-4.2" y2="-3.6" width="0.4064" layer="51"/>
<wire x1="-4.2" y1="-3.6" x2="-4.2" y2="-4.5" width="0.4064" layer="51"/>
<wire x1="5" y1="-3.6" x2="4.2" y2="-3.6" width="0.4064" layer="51"/>
<wire x1="4.2" y1="-3.6" x2="4.2" y2="-4.5" width="0.4064" layer="51"/>
<wire x1="3.1" y1="5.3" x2="3.1" y2="3" width="0.254" layer="21"/>
<wire x1="3.1" y1="3" x2="5" y2="3" width="0.254" layer="21"/>
<wire x1="-3.1" y1="5.3" x2="3.1" y2="5.3" width="0.254" layer="21"/>
<wire x1="-3.1" y1="5.3" x2="-3.1" y2="3" width="0.254" layer="21"/>
<wire x1="-3.1" y1="3" x2="-5" y2="3" width="0.254" layer="21"/>
<wire x1="-5" y1="3" x2="-5" y2="-0.9" width="0.254" layer="21"/>
<wire x1="5" y1="3" x2="5" y2="-0.9" width="0.254" layer="21"/>
<wire x1="-3.5" y1="-4.5" x2="3.5" y2="-4.5" width="0.254" layer="21"/>
<smd name="1" x="-2" y="3" dx="1.2" dy="3.6" layer="1"/>
<smd name="2" x="0" y="3" dx="1.2" dy="3.6" layer="1"/>
<smd name="3" x="2" y="3" dx="1.2" dy="3.6" layer="1"/>
<smd name="CASE2" x="4.9" y="-3.1" dx="1.8" dy="3.5" layer="1"/>
<smd name="CASE1" x="-4.9" y="-3.1" dx="1.8" dy="3.5" layer="1"/>
<text x="-2.5" y="-0.3" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-5.2" y="4.3" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-5.2" y="4.3" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-5.5563" y="-0.7938" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;NAME</text>
<text x="-4.4" y="3.3" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="6.8263" y="-0.7938" size="1.27" layer="21" font="vector" ratio="16" rot="R90">&gt;VALUE</text>
</package>
<package name="X03-2MM-VN">
<description>&lt;b&gt;Connector&lt;/b&gt; 3 pins, 2mm spacing&lt;br&gt;
SIL through-hole, vertical mounting</description>
<wire x1="-3.9" y1="1.6" x2="-3.9" y2="-3" width="0.4064" layer="51"/>
<wire x1="-3.9" y1="1.6" x2="-0.8" y2="1.6" width="0.4064" layer="51"/>
<wire x1="-0.8" y1="1.6" x2="0.8" y2="1.6" width="0.4064" layer="51"/>
<wire x1="0.8" y1="1.6" x2="3.9" y2="1.6" width="0.4064" layer="51"/>
<wire x1="-3.9" y1="-3" x2="3.9" y2="-3" width="0.4064" layer="51"/>
<wire x1="3.9" y1="1.6" x2="3.9" y2="-3" width="0.4064" layer="51"/>
<wire x1="-0.8" y1="1.6" x2="-0.8" y2="1.1" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="1.1" x2="-3.4" y2="1.1" width="0.1524" layer="51"/>
<wire x1="-3.4" y1="1.1" x2="-3.4" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="-3.4" y1="-2.5" x2="-1.2" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="-2.5" x2="1.2" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="1.2" y1="-2.5" x2="3.4" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="3.4" y1="-2.5" x2="3.4" y2="1.1" width="0.1524" layer="51"/>
<wire x1="3.4" y1="1.1" x2="0.8" y2="1.1" width="0.1524" layer="51"/>
<wire x1="0.8" y1="1.1" x2="0.8" y2="1.6" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="-2.2" x2="-1.2" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="1.2" y1="-2.2" x2="1.2" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="-3.9" y1="1.6" x2="-2.7" y2="1.6" width="0.254" layer="21"/>
<wire x1="3.9" y1="1.6" x2="2.7" y2="1.6" width="0.254" layer="21"/>
<wire x1="-3.9" y1="1.6" x2="-3.9" y2="-3" width="0.254" layer="21"/>
<wire x1="-3.9" y1="-3" x2="3.9" y2="-3" width="0.254" layer="21"/>
<wire x1="3.9" y1="-3" x2="3.9" y2="1.6" width="0.254" layer="21"/>
<circle x="2" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-2" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="0" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="1" x="-2" y="0" drill="0.8128" diameter="1.397" shape="long" rot="R90" first="yes"/>
<pad name="2" x="0" y="0" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<pad name="3" x="2" y="0" drill="0.8128" diameter="1.397" shape="long" rot="R90"/>
<text x="-2.5" y="-1.9" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-4.1" y="2" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.1" y="2" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-5.715" y="1.7463" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;NAME</text>
<text x="-3.5" y="-2.6" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="4.445" y="1.7463" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;VALUE</text>
</package>
<package name="X03-2MM-VR">
<description>&lt;b&gt;Connector&lt;/b&gt; 3 pins, 2mm spacing, reduced pads&lt;br&gt;
SIL through-hole, vertical mounting</description>
<wire x1="-3.9" y1="1.6" x2="-3.9" y2="-3" width="0.4064" layer="51"/>
<wire x1="-3.9" y1="1.6" x2="-0.8" y2="1.6" width="0.4064" layer="51"/>
<wire x1="-0.8" y1="1.6" x2="0.8" y2="1.6" width="0.4064" layer="51"/>
<wire x1="0.8" y1="1.6" x2="3.9" y2="1.6" width="0.4064" layer="51"/>
<wire x1="-3.9" y1="-3" x2="3.9" y2="-3" width="0.4064" layer="51"/>
<wire x1="3.9" y1="1.6" x2="3.9" y2="-3" width="0.4064" layer="51"/>
<wire x1="-0.8" y1="1.6" x2="-0.8" y2="1.1" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="1.1" x2="-3.4" y2="1.1" width="0.1524" layer="51"/>
<wire x1="-3.4" y1="1.1" x2="-3.4" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="-3.4" y1="-2.5" x2="-1.2" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="-2.5" x2="1.2" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="1.2" y1="-2.5" x2="3.4" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="3.4" y1="-2.5" x2="3.4" y2="1.1" width="0.1524" layer="51"/>
<wire x1="3.4" y1="1.1" x2="0.8" y2="1.1" width="0.1524" layer="51"/>
<wire x1="0.8" y1="1.1" x2="0.8" y2="1.6" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="-2.2" x2="-1.2" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="1.2" y1="-2.2" x2="1.2" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="-3.9" y1="1.6" x2="-0.7" y2="1.6" width="0.254" layer="21"/>
<wire x1="3.9" y1="1.6" x2="0.7" y2="1.6" width="0.254" layer="21"/>
<wire x1="-3.9" y1="1.6" x2="-3.9" y2="-3" width="0.254" layer="21"/>
<wire x1="-3.9" y1="-3" x2="3.9" y2="-3" width="0.254" layer="21"/>
<wire x1="3.9" y1="-3" x2="3.9" y2="1.6" width="0.254" layer="21"/>
<circle x="2" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="-2" y="0" radius="0.3175" width="0" layer="51"/>
<circle x="0" y="0" radius="0.3175" width="0" layer="51"/>
<pad name="1" x="-2" y="0" drill="0.8128" diameter="1.397" shape="square" rot="R90" first="yes"/>
<pad name="2" x="0" y="0" drill="0.8128" diameter="1.397" shape="square" rot="R90"/>
<pad name="3" x="2" y="0" drill="0.8128" diameter="1.397" shape="square" rot="R90"/>
<text x="-2.5" y="-1.9" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-4.1" y="2" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-4.1" y="2" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-5.715" y="1.7463" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;NAME</text>
<text x="-3.5" y="-2.4" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="4.445" y="1.7463" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;VALUE</text>
</package>
<package name="X03-2MM-VS">
<description>&lt;b&gt;Connector&lt;/b&gt; 3 pins, 2mm spacing&lt;br&gt;
SMD, vertical mounting</description>
<wire x1="-5" y1="3.5" x2="-5" y2="2.3" width="0.4064" layer="51"/>
<wire x1="-5" y1="2.3" x2="-5" y2="-0.3" width="0.4064" layer="51"/>
<wire x1="-5" y1="-0.3" x2="-5" y2="-1.5" width="0.4064" layer="51"/>
<wire x1="-5" y1="3.5" x2="-0.8" y2="3.5" width="0.4064" layer="51"/>
<wire x1="-0.8" y1="3.5" x2="0.8" y2="3.5" width="0.4064" layer="51"/>
<wire x1="0.8" y1="3.5" x2="5" y2="3.5" width="0.4064" layer="51"/>
<wire x1="-5" y1="-1.5" x2="-2" y2="-1.5" width="0.4064" layer="51"/>
<wire x1="-2" y1="-1.5" x2="0" y2="-1.5" width="0.4064" layer="51"/>
<wire x1="0" y1="-1.5" x2="2" y2="-1.5" width="0.4064" layer="51"/>
<wire x1="2" y1="-1.5" x2="5" y2="-1.5" width="0.4064" layer="51"/>
<wire x1="5" y1="3.5" x2="5" y2="2.3" width="0.4064" layer="51"/>
<wire x1="5" y1="2.3" x2="5" y2="-0.3" width="0.4064" layer="51"/>
<wire x1="5" y1="-0.3" x2="5" y2="-1.5" width="0.4064" layer="51"/>
<wire x1="-0.8" y1="3.5" x2="-0.8" y2="2.8" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="2.8" x2="-3.4" y2="2.8" width="0.1524" layer="51"/>
<wire x1="-3.9" y1="2.8" x2="-4.3" y2="2.8" width="0.1524" layer="51"/>
<wire x1="-4.3" y1="2.8" x2="-4.3" y2="2.3" width="0.1524" layer="51"/>
<wire x1="-4.3" y1="-0.3" x2="-4.3" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-4.3" y1="-0.8" x2="-3.9" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-3.4" y1="-0.8" x2="-1.2" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="-0.8" x2="1.2" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="1.2" y1="-0.8" x2="3.4" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="3.9" y1="-0.8" x2="4.3" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="4.3" y1="-0.8" x2="4.3" y2="-0.3" width="0.1524" layer="51"/>
<wire x1="4.3" y1="2.3" x2="4.3" y2="2.8" width="0.1524" layer="51"/>
<wire x1="4.3" y1="2.8" x2="3.9" y2="2.8" width="0.1524" layer="51"/>
<wire x1="3.4" y1="2.8" x2="0.8" y2="2.8" width="0.1524" layer="51"/>
<wire x1="0.8" y1="2.8" x2="0.8" y2="3.5" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="-0.5" x2="-1.2" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="1.2" y1="-0.5" x2="1.2" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-6.2" y1="3.5" x2="6.2" y2="3.5" width="0.254" layer="21"/>
<wire x1="-6.2" y1="3.5" x2="-6.2" y2="-1.5" width="0.254" layer="21"/>
<wire x1="-3" y1="-4.8" x2="3" y2="-4.8" width="0.254" layer="21"/>
<wire x1="6.2" y1="-1.5" x2="6.2" y2="3.5" width="0.254" layer="21"/>
<wire x1="-3.4" y1="2.8" x2="-3.4" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="3.4" y1="-0.8" x2="3.4" y2="2.8" width="0.1524" layer="51"/>
<wire x1="-5" y1="2.3" x2="-4.3" y2="2.3" width="0.1524" layer="51"/>
<wire x1="-4.3" y1="-0.3" x2="-5" y2="-0.3" width="0.1524" layer="51"/>
<wire x1="4.3" y1="2.3" x2="5" y2="2.3" width="0.1524" layer="51"/>
<wire x1="4.3" y1="-0.3" x2="5" y2="-0.3" width="0.1524" layer="51"/>
<wire x1="-3.9" y1="2.8" x2="-3.9" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="3.9" y1="2.8" x2="3.9" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2" y1="-1.5" x2="-2" y2="-3.5" width="0.1524" layer="51"/>
<wire x1="0" y1="-1.5" x2="0" y2="-3.5" width="0.1524" layer="51"/>
<wire x1="2" y1="-1.5" x2="2" y2="-3.5" width="0.1524" layer="51"/>
<wire x1="-6.2" y1="-1.5" x2="-3" y2="-1.5" width="0.254" layer="21"/>
<wire x1="-3" y1="-1.5" x2="-3" y2="-4.8" width="0.254" layer="21"/>
<wire x1="3" y1="-4.8" x2="3" y2="-1.5" width="0.254" layer="21"/>
<wire x1="3" y1="-1.5" x2="6.2" y2="-1.5" width="0.254" layer="21"/>
<circle x="2" y="1.7" radius="0.3175" width="0" layer="51"/>
<circle x="-2" y="1.7" radius="0.3175" width="0" layer="51"/>
<circle x="0" y="1.7" radius="0.3175" width="0" layer="51"/>
<smd name="1" x="-2" y="-1" dx="1.2" dy="6.8" layer="1"/>
<smd name="2" x="0" y="-1" dx="1.2" dy="6.8" layer="1"/>
<smd name="3" x="2" y="-1" dx="1.2" dy="6.8" layer="1"/>
<smd name="CASE2" x="4.9" y="1" dx="1.8" dy="2.8" layer="1"/>
<smd name="CASE1" x="-4.9" y="1" dx="1.8" dy="2.8" layer="1"/>
<text x="-2.5" y="-0.2" size="1.27" layer="51" font="vector" ratio="16">1</text>
<text x="-5.2" y="3.9" size="1.27" layer="25" font="vector" ratio="16">&gt;NAME</text>
<text x="-5.2" y="3.9" size="1.27" layer="27" font="vector" ratio="16">&gt;VALUE</text>
<text x="-7.9375" y="3.5575" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;NAME</text>
<text x="-4.3" y="-3.1" size="1.27" layer="21" font="vector" ratio="16">1</text>
<text x="6.6675" y="3.5575" size="1.27" layer="21" font="vector" ratio="16" rot="R270">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="X04">
<wire x1="0" y1="3.81" x2="1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="1.27" y1="2.54" x2="1.27" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="0" y2="-6.35" width="0.1524" layer="94"/>
<text x="2.54" y="6.35" size="1.524" layer="95" font="vector" rot="R180">&gt;NAME</text>
<text x="2.54" y="8.255" size="1.524" layer="96" font="vector" rot="R180">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pin" length="short" swaplevel="1"/>
<pin name="2" x="-2.54" y="0" visible="pin" length="short" swaplevel="1"/>
<pin name="3" x="-2.54" y="-2.54" visible="pin" length="short" swaplevel="1"/>
<pin name="4" x="-2.54" y="-5.08" visible="pin" length="short" swaplevel="1"/>
</symbol>
<symbol name="X03">
<wire x1="0" y1="3.81" x2="1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="1.27" y1="2.54" x2="1.27" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-3.81" width="0.1524" layer="94"/>
<text x="2.54" y="6.35" size="1.524" layer="95" font="vector" rot="R180">&gt;NAME</text>
<text x="2.54" y="8.255" size="1.524" layer="96" font="vector" rot="R180">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pin" length="short" swaplevel="1"/>
<pin name="2" x="-2.54" y="0" visible="pin" length="short" swaplevel="1"/>
<pin name="3" x="-2.54" y="-2.54" visible="pin" length="short" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="X04" prefix="X" uservalue="yes">
<description>&lt;b&gt;Connector&lt;/b&gt; 4 pins</description>
<gates>
<gate name="A" symbol="X04" x="0" y="0"/>
</gates>
<devices>
<device name="-DIL-VN" package="X04-DIL-VN">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-DIL-VR" package="X04-DIL-VR">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-SIL-VL" package="X04-SIL-VL">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
<attribute name="TYPE" value="X04"/>
</technology>
</technologies>
</device>
<device name="-SIL-VN" package="X04-SIL-VN">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-SIL-VR" package="X04-SIL-VR">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-SCREW" package="X04-SCREW">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-PC5.25" package="X04-PC5.25">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-2MM-HS" package="X04-2MM-HS">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-2MM-VN" package="X04-2MM-VN">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="" package="X04-SIL-VL">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
<attribute name="TYPE" value="X04"/>
</technology>
</technologies>
</device>
<device name="L" package="X04-SIL-VL">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
<attribute name="TYPE" value="X04"/>
</technology>
</technologies>
</device>
<device name="N" package="X04-SIL-VN">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="R" package="X04-SIL-VR">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-LIGO-VN" package="X04-LIGO-VN">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="X03" prefix="X" uservalue="yes">
<description>&lt;b&gt;Connector&lt;/b&gt; 3 pins</description>
<gates>
<gate name="A" symbol="X03" x="0" y="0"/>
</gates>
<devices>
<device name="-SIL-VL" package="X03-SIL-VL">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-SIL-VN" package="X03-SIL-VN">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-SIL-VR" package="X03-SIL-VR">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-SCREW" package="X03-SCREW">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-BROWN-VN" package="X03-BROWN-VN">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-BROWN-VL" package="X03-BROWN-VL">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-2MM-HS" package="X03-2MM-HS">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-2MM-VN" package="X03-2MM-VN">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-2MM-VR" package="X03-2MM-VR">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="-2MM-VS" package="X03-2MM-VS">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="" package="X03-SIL-VL">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="L" package="X03-SIL-VL">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="N" package="X03-SIL-VN">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
</technologies>
</device>
<device name="R" package="X03-SIL-VR">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="IGNOREVALUE" value="1"/>
<attribute name="SPICE" value="&lt;ignore&gt;"/>
</technology>
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
</libraries>
<attributes>
<attribute name="AUTHOR" value="Sean Leavey"/>
<attribute name="COMPANY" value="ERC Speedmeter"/>
<attribute name="DATE" value="2015-03-19"/>
<attribute name="DESCRIPTION" value=""/>
<attribute name="DESCRIPTION2" value=""/>
<attribute name="REVISION" value="2015-04-30"/>
<attribute name="REVISIONAUTHOR1" value="Sean Leavey"/>
<attribute name="REVISIONAUTHOR2" value="Sean Leavey"/>
<attribute name="REVISIONAUTHOR3" value=""/>
<attribute name="REVISIONAUTHOR4" value=""/>
<attribute name="REVISIONAUTHOR5" value=""/>
<attribute name="REVISIONDATE1" value="2015-03-30"/>
<attribute name="REVISIONDATE2" value="2015-04-30"/>
<attribute name="REVISIONDATE3" value=""/>
<attribute name="REVISIONDATE4" value=""/>
<attribute name="REVISIONDATE5" value=""/>
<attribute name="TITLE" value="AUXILIARY COIL"/>
<attribute name="TITLE2" value="DRIVER RACK BACKPLANE BOARD"/>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="con-vg" deviceset="FAC32S" device=""/>
<part name="X2" library="con-vg" deviceset="FAC32S" device=""/>
<part name="X3" library="con-vg" deviceset="FAC32S" device=""/>
<part name="X4" library="con-vg" deviceset="FAC32S" device=""/>
<part name="X5" library="con-vg" deviceset="FAC32S" device=""/>
<part name="X6" library="con-vg" deviceset="FAC32S" device=""/>
<part name="X7" library="con-vg" deviceset="FAC32S" device=""/>
<part name="X10" library="connectors" deviceset="X04" device="-SCREW"/>
<part name="X12" library="connectors" deviceset="X04" device="-SCREW"/>
<part name="X14" library="connectors" deviceset="X04" device="-SCREW"/>
<part name="X16" library="connectors" deviceset="X04" device="-SCREW"/>
<part name="X18" library="connectors" deviceset="X04" device="-SCREW"/>
<part name="X20" library="connectors" deviceset="X04" device="-SCREW"/>
<part name="X22" library="connectors" deviceset="X04" device="-SCREW"/>
<part name="$1" library="signals" deviceset="VG" device=""/>
<part name="$4" library="signals" deviceset="VG" device=""/>
<part name="$5" library="signals" deviceset="VG" device=""/>
<part name="$6" library="signals" deviceset="VG" device=""/>
<part name="$7" library="signals" deviceset="VG" device=""/>
<part name="$8" library="signals" deviceset="VG" device=""/>
<part name="$9" library="signals" deviceset="VG" device=""/>
<part name="X24" library="connectors" deviceset="X03" device="-SCREW"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="144.78" y="228.6" size="1.524" layer="97" font="vector">+19V</text>
<text x="144.78" y="226.06" size="1.524" layer="97" font="vector">GND</text>
<text x="144.78" y="223.52" size="1.524" layer="97" font="vector">-19V</text>
</plain>
<instances>
<instance part="X1" gate="G$1" x="101.6" y="170.18"/>
<instance part="X2" gate="G$1" x="134.62" y="170.18"/>
<instance part="X3" gate="G$1" x="167.64" y="170.18"/>
<instance part="X4" gate="G$1" x="200.66" y="170.18"/>
<instance part="X5" gate="G$1" x="233.68" y="170.18"/>
<instance part="X6" gate="G$1" x="266.7" y="170.18"/>
<instance part="X7" gate="G$1" x="299.72" y="170.18"/>
<instance part="X10" gate="A" x="83.82" y="109.22" rot="R270"/>
<instance part="X12" gate="A" x="116.84" y="109.22" rot="R270"/>
<instance part="X14" gate="A" x="149.86" y="109.22" rot="R270"/>
<instance part="X16" gate="A" x="182.88" y="109.22" rot="R270"/>
<instance part="X18" gate="A" x="215.9" y="109.22" rot="R270"/>
<instance part="X20" gate="A" x="248.92" y="109.22" rot="R270"/>
<instance part="X22" gate="A" x="281.94" y="109.22" rot="R270"/>
<instance part="$1" gate="A" x="91.44" y="119.38"/>
<instance part="$4" gate="A" x="124.46" y="119.38"/>
<instance part="$5" gate="A" x="157.48" y="119.38"/>
<instance part="$6" gate="A" x="190.5" y="119.38"/>
<instance part="$7" gate="A" x="223.52" y="119.38"/>
<instance part="$8" gate="A" x="256.54" y="119.38"/>
<instance part="$9" gate="A" x="289.56" y="119.38"/>
<instance part="X24" gate="A" x="139.7" y="226.06"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A6"/>
<wire x1="93.98" y1="195.58" x2="88.9" y2="195.58" width="0.1524" layer="91"/>
<wire x1="88.9" y1="195.58" x2="88.9" y2="213.36" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="A6"/>
<wire x1="127" y1="195.58" x2="121.92" y2="195.58" width="0.1524" layer="91"/>
<wire x1="121.92" y1="195.58" x2="121.92" y2="213.36" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="A6"/>
<wire x1="121.92" y1="213.36" x2="88.9" y2="213.36" width="0.1524" layer="91"/>
<wire x1="160.02" y1="195.58" x2="154.94" y2="195.58" width="0.1524" layer="91"/>
<wire x1="154.94" y1="195.58" x2="154.94" y2="213.36" width="0.1524" layer="91"/>
<wire x1="154.94" y1="213.36" x2="132.08" y2="213.36" width="0.1524" layer="91"/>
<junction x="121.92" y="213.36"/>
<pinref part="X4" gate="G$1" pin="A6"/>
<wire x1="132.08" y1="213.36" x2="121.92" y2="213.36" width="0.1524" layer="91"/>
<wire x1="193.04" y1="195.58" x2="187.96" y2="195.58" width="0.1524" layer="91"/>
<wire x1="187.96" y1="195.58" x2="187.96" y2="213.36" width="0.1524" layer="91"/>
<wire x1="187.96" y1="213.36" x2="154.94" y2="213.36" width="0.1524" layer="91"/>
<junction x="154.94" y="213.36"/>
<pinref part="X5" gate="G$1" pin="A6"/>
<wire x1="226.06" y1="195.58" x2="220.98" y2="195.58" width="0.1524" layer="91"/>
<wire x1="220.98" y1="195.58" x2="220.98" y2="213.36" width="0.1524" layer="91"/>
<wire x1="220.98" y1="213.36" x2="187.96" y2="213.36" width="0.1524" layer="91"/>
<junction x="187.96" y="213.36"/>
<pinref part="X6" gate="G$1" pin="A6"/>
<wire x1="259.08" y1="195.58" x2="254" y2="195.58" width="0.1524" layer="91"/>
<wire x1="254" y1="195.58" x2="254" y2="213.36" width="0.1524" layer="91"/>
<wire x1="254" y1="213.36" x2="220.98" y2="213.36" width="0.1524" layer="91"/>
<junction x="220.98" y="213.36"/>
<pinref part="X7" gate="G$1" pin="A6"/>
<wire x1="292.1" y1="195.58" x2="287.02" y2="195.58" width="0.1524" layer="91"/>
<wire x1="287.02" y1="195.58" x2="287.02" y2="213.36" width="0.1524" layer="91"/>
<wire x1="287.02" y1="213.36" x2="254" y2="213.36" width="0.1524" layer="91"/>
<junction x="254" y="213.36"/>
<pinref part="X24" gate="A" pin="1"/>
<wire x1="132.08" y1="213.36" x2="132.08" y2="228.6" width="0.1524" layer="91"/>
<wire x1="132.08" y1="228.6" x2="137.16" y2="228.6" width="0.1524" layer="91"/>
<junction x="132.08" y="213.36"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A8"/>
<wire x1="93.98" y1="190.5" x2="91.44" y2="190.5" width="0.1524" layer="91"/>
<wire x1="91.44" y1="190.5" x2="91.44" y2="215.9" width="0.1524" layer="91"/>
<wire x1="91.44" y1="215.9" x2="111.76" y2="215.9" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="A8"/>
<wire x1="127" y1="190.5" x2="124.46" y2="190.5" width="0.1524" layer="91"/>
<wire x1="124.46" y1="190.5" x2="124.46" y2="215.9" width="0.1524" layer="91"/>
<wire x1="124.46" y1="215.9" x2="111.76" y2="215.9" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="A8"/>
<wire x1="160.02" y1="190.5" x2="157.48" y2="190.5" width="0.1524" layer="91"/>
<wire x1="157.48" y1="190.5" x2="157.48" y2="215.9" width="0.1524" layer="91"/>
<wire x1="157.48" y1="215.9" x2="144.78" y2="215.9" width="0.1524" layer="91"/>
<junction x="124.46" y="215.9"/>
<pinref part="X4" gate="G$1" pin="A8"/>
<wire x1="144.78" y1="215.9" x2="137.16" y2="215.9" width="0.1524" layer="91"/>
<wire x1="137.16" y1="215.9" x2="124.46" y2="215.9" width="0.1524" layer="91"/>
<wire x1="193.04" y1="190.5" x2="190.5" y2="190.5" width="0.1524" layer="91"/>
<wire x1="190.5" y1="190.5" x2="190.5" y2="215.9" width="0.1524" layer="91"/>
<wire x1="190.5" y1="215.9" x2="177.8" y2="215.9" width="0.1524" layer="91"/>
<junction x="157.48" y="215.9"/>
<pinref part="X5" gate="G$1" pin="A8"/>
<wire x1="177.8" y1="215.9" x2="157.48" y2="215.9" width="0.1524" layer="91"/>
<wire x1="226.06" y1="190.5" x2="223.52" y2="190.5" width="0.1524" layer="91"/>
<wire x1="223.52" y1="190.5" x2="223.52" y2="215.9" width="0.1524" layer="91"/>
<wire x1="223.52" y1="215.9" x2="210.82" y2="215.9" width="0.1524" layer="91"/>
<junction x="190.5" y="215.9"/>
<pinref part="X6" gate="G$1" pin="A8"/>
<wire x1="210.82" y1="215.9" x2="190.5" y2="215.9" width="0.1524" layer="91"/>
<wire x1="259.08" y1="190.5" x2="256.54" y2="190.5" width="0.1524" layer="91"/>
<wire x1="256.54" y1="190.5" x2="256.54" y2="215.9" width="0.1524" layer="91"/>
<wire x1="256.54" y1="215.9" x2="243.84" y2="215.9" width="0.1524" layer="91"/>
<junction x="223.52" y="215.9"/>
<pinref part="X7" gate="G$1" pin="A8"/>
<wire x1="243.84" y1="215.9" x2="223.52" y2="215.9" width="0.1524" layer="91"/>
<wire x1="292.1" y1="190.5" x2="289.56" y2="190.5" width="0.1524" layer="91"/>
<wire x1="289.56" y1="190.5" x2="289.56" y2="215.9" width="0.1524" layer="91"/>
<wire x1="289.56" y1="215.9" x2="276.86" y2="215.9" width="0.1524" layer="91"/>
<junction x="256.54" y="215.9"/>
<pinref part="X1" gate="G$1" pin="C8"/>
<wire x1="276.86" y1="215.9" x2="256.54" y2="215.9" width="0.1524" layer="91"/>
<wire x1="109.22" y1="190.5" x2="111.76" y2="190.5" width="0.1524" layer="91"/>
<wire x1="111.76" y1="190.5" x2="111.76" y2="215.9" width="0.1524" layer="91"/>
<junction x="111.76" y="215.9"/>
<pinref part="X2" gate="G$1" pin="C8"/>
<wire x1="142.24" y1="190.5" x2="144.78" y2="190.5" width="0.1524" layer="91"/>
<wire x1="144.78" y1="190.5" x2="144.78" y2="215.9" width="0.1524" layer="91"/>
<junction x="144.78" y="215.9"/>
<pinref part="X3" gate="G$1" pin="C8"/>
<wire x1="175.26" y1="190.5" x2="177.8" y2="190.5" width="0.1524" layer="91"/>
<wire x1="177.8" y1="190.5" x2="177.8" y2="215.9" width="0.1524" layer="91"/>
<junction x="177.8" y="215.9"/>
<pinref part="X4" gate="G$1" pin="C8"/>
<wire x1="208.28" y1="190.5" x2="210.82" y2="190.5" width="0.1524" layer="91"/>
<wire x1="210.82" y1="190.5" x2="210.82" y2="215.9" width="0.1524" layer="91"/>
<junction x="210.82" y="215.9"/>
<pinref part="X5" gate="G$1" pin="C8"/>
<wire x1="241.3" y1="190.5" x2="243.84" y2="190.5" width="0.1524" layer="91"/>
<wire x1="243.84" y1="190.5" x2="243.84" y2="215.9" width="0.1524" layer="91"/>
<junction x="243.84" y="215.9"/>
<pinref part="X6" gate="G$1" pin="C8"/>
<wire x1="274.32" y1="190.5" x2="276.86" y2="190.5" width="0.1524" layer="91"/>
<wire x1="276.86" y1="190.5" x2="276.86" y2="215.9" width="0.1524" layer="91"/>
<junction x="276.86" y="215.9"/>
<pinref part="X7" gate="G$1" pin="C8"/>
<wire x1="307.34" y1="190.5" x2="309.88" y2="190.5" width="0.1524" layer="91"/>
<wire x1="309.88" y1="190.5" x2="309.88" y2="215.9" width="0.1524" layer="91"/>
<wire x1="309.88" y1="215.9" x2="289.56" y2="215.9" width="0.1524" layer="91"/>
<junction x="289.56" y="215.9"/>
<pinref part="X24" gate="A" pin="3"/>
<wire x1="137.16" y1="223.52" x2="137.16" y2="215.9" width="0.1524" layer="91"/>
<junction x="137.16" y="215.9"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A20"/>
<junction x="93.98" y="160.02"/>
<pinref part="X1" gate="G$1" pin="C20"/>
<wire x1="109.22" y1="160.02" x2="109.22" y2="157.48" width="0.1524" layer="91"/>
<wire x1="109.22" y1="157.48" x2="93.98" y2="157.48" width="0.1524" layer="91"/>
<wire x1="93.98" y1="157.48" x2="93.98" y2="160.02" width="0.1524" layer="91"/>
<pinref part="X10" gate="A" pin="4"/>
<wire x1="93.98" y1="160.02" x2="78.74" y2="160.02" width="0.1524" layer="91"/>
<wire x1="78.74" y1="160.02" x2="78.74" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A24"/>
<junction x="93.98" y="149.86"/>
<wire x1="93.98" y1="147.32" x2="93.98" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="C24"/>
<wire x1="109.22" y1="149.86" x2="109.22" y2="147.32" width="0.1524" layer="91"/>
<wire x1="109.22" y1="147.32" x2="93.98" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X10" gate="A" pin="3"/>
<wire x1="93.98" y1="149.86" x2="81.28" y2="149.86" width="0.1524" layer="91"/>
<wire x1="81.28" y1="149.86" x2="81.28" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A28"/>
<pinref part="X1" gate="G$1" pin="C28"/>
<wire x1="109.22" y1="139.7" x2="109.22" y2="137.16" width="0.1524" layer="91"/>
<wire x1="109.22" y1="137.16" x2="93.98" y2="137.16" width="0.1524" layer="91"/>
<wire x1="93.98" y1="137.16" x2="93.98" y2="139.7" width="0.1524" layer="91"/>
<junction x="93.98" y="139.7"/>
<pinref part="X10" gate="A" pin="2"/>
<wire x1="93.98" y1="139.7" x2="83.82" y2="139.7" width="0.1524" layer="91"/>
<wire x1="83.82" y1="139.7" x2="83.82" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A32"/>
<pinref part="X1" gate="G$1" pin="C32"/>
<wire x1="109.22" y1="129.54" x2="109.22" y2="127" width="0.1524" layer="91"/>
<wire x1="109.22" y1="127" x2="93.98" y2="127" width="0.1524" layer="91"/>
<wire x1="93.98" y1="127" x2="93.98" y2="129.54" width="0.1524" layer="91"/>
<junction x="93.98" y="129.54"/>
<pinref part="X10" gate="A" pin="1"/>
<wire x1="93.98" y1="129.54" x2="86.36" y2="129.54" width="0.1524" layer="91"/>
<wire x1="86.36" y1="129.54" x2="86.36" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="C20"/>
<wire x1="142.24" y1="157.48" x2="142.24" y2="160.02" width="0.1524" layer="91"/>
<wire x1="127" y1="157.48" x2="142.24" y2="157.48" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="A20"/>
<wire x1="127" y1="160.02" x2="127" y2="157.48" width="0.1524" layer="91"/>
<junction x="127" y="160.02"/>
<wire x1="127" y1="160.02" x2="111.76" y2="160.02" width="0.1524" layer="91"/>
<pinref part="X12" gate="A" pin="4"/>
<wire x1="111.76" y1="160.02" x2="111.76" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="C24"/>
<wire x1="142.24" y1="147.32" x2="142.24" y2="149.86" width="0.1524" layer="91"/>
<wire x1="127" y1="147.32" x2="142.24" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="A24"/>
<wire x1="127" y1="149.86" x2="127" y2="147.32" width="0.1524" layer="91"/>
<junction x="127" y="149.86"/>
<wire x1="127" y1="149.86" x2="114.3" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X12" gate="A" pin="3"/>
<wire x1="114.3" y1="149.86" x2="114.3" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="C28"/>
<wire x1="142.24" y1="137.16" x2="142.24" y2="139.7" width="0.1524" layer="91"/>
<wire x1="127" y1="137.16" x2="142.24" y2="137.16" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="A28"/>
<wire x1="127" y1="139.7" x2="127" y2="137.16" width="0.1524" layer="91"/>
<junction x="127" y="139.7"/>
<wire x1="127" y1="139.7" x2="116.84" y2="139.7" width="0.1524" layer="91"/>
<pinref part="X12" gate="A" pin="2"/>
<wire x1="116.84" y1="139.7" x2="116.84" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="A32"/>
<pinref part="X2" gate="G$1" pin="C32"/>
<wire x1="142.24" y1="129.54" x2="142.24" y2="127" width="0.1524" layer="91"/>
<wire x1="142.24" y1="127" x2="127" y2="127" width="0.1524" layer="91"/>
<wire x1="127" y1="127" x2="127" y2="129.54" width="0.1524" layer="91"/>
<junction x="127" y="129.54"/>
<wire x1="127" y1="129.54" x2="119.38" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X12" gate="A" pin="1"/>
<wire x1="119.38" y1="129.54" x2="119.38" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="C20"/>
<wire x1="175.26" y1="157.48" x2="175.26" y2="160.02" width="0.1524" layer="91"/>
<wire x1="160.02" y1="157.48" x2="175.26" y2="157.48" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="A20"/>
<wire x1="160.02" y1="160.02" x2="160.02" y2="157.48" width="0.1524" layer="91"/>
<junction x="160.02" y="160.02"/>
<wire x1="160.02" y1="160.02" x2="144.78" y2="160.02" width="0.1524" layer="91"/>
<pinref part="X14" gate="A" pin="4"/>
<wire x1="144.78" y1="160.02" x2="144.78" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="C24"/>
<wire x1="175.26" y1="147.32" x2="175.26" y2="149.86" width="0.1524" layer="91"/>
<wire x1="160.02" y1="147.32" x2="175.26" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="A24"/>
<wire x1="160.02" y1="149.86" x2="160.02" y2="147.32" width="0.1524" layer="91"/>
<junction x="160.02" y="149.86"/>
<wire x1="160.02" y1="149.86" x2="147.32" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X14" gate="A" pin="3"/>
<wire x1="147.32" y1="149.86" x2="147.32" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="C28"/>
<wire x1="175.26" y1="137.16" x2="175.26" y2="139.7" width="0.1524" layer="91"/>
<wire x1="160.02" y1="137.16" x2="175.26" y2="137.16" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="A28"/>
<wire x1="160.02" y1="139.7" x2="160.02" y2="137.16" width="0.1524" layer="91"/>
<junction x="160.02" y="139.7"/>
<wire x1="160.02" y1="139.7" x2="149.86" y2="139.7" width="0.1524" layer="91"/>
<pinref part="X14" gate="A" pin="2"/>
<wire x1="149.86" y1="139.7" x2="149.86" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="C32"/>
<wire x1="175.26" y1="127" x2="175.26" y2="129.54" width="0.1524" layer="91"/>
<wire x1="160.02" y1="127" x2="175.26" y2="127" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="A32"/>
<wire x1="160.02" y1="129.54" x2="160.02" y2="127" width="0.1524" layer="91"/>
<junction x="160.02" y="129.54"/>
<wire x1="160.02" y1="129.54" x2="152.4" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X14" gate="A" pin="1"/>
<wire x1="152.4" y1="129.54" x2="152.4" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="C20"/>
<wire x1="208.28" y1="157.48" x2="208.28" y2="160.02" width="0.1524" layer="91"/>
<wire x1="193.04" y1="157.48" x2="208.28" y2="157.48" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="A20"/>
<wire x1="193.04" y1="160.02" x2="193.04" y2="157.48" width="0.1524" layer="91"/>
<junction x="193.04" y="160.02"/>
<wire x1="193.04" y1="160.02" x2="177.8" y2="160.02" width="0.1524" layer="91"/>
<pinref part="X16" gate="A" pin="4"/>
<wire x1="177.8" y1="160.02" x2="177.8" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="C24"/>
<wire x1="208.28" y1="147.32" x2="208.28" y2="149.86" width="0.1524" layer="91"/>
<wire x1="193.04" y1="147.32" x2="208.28" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="A24"/>
<wire x1="193.04" y1="149.86" x2="193.04" y2="147.32" width="0.1524" layer="91"/>
<junction x="193.04" y="149.86"/>
<wire x1="193.04" y1="149.86" x2="180.34" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X16" gate="A" pin="3"/>
<wire x1="180.34" y1="149.86" x2="180.34" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="C28"/>
<wire x1="208.28" y1="137.16" x2="208.28" y2="139.7" width="0.1524" layer="91"/>
<wire x1="193.04" y1="137.16" x2="208.28" y2="137.16" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="A28"/>
<wire x1="193.04" y1="139.7" x2="193.04" y2="137.16" width="0.1524" layer="91"/>
<junction x="193.04" y="139.7"/>
<wire x1="193.04" y1="139.7" x2="182.88" y2="139.7" width="0.1524" layer="91"/>
<pinref part="X16" gate="A" pin="2"/>
<wire x1="182.88" y1="139.7" x2="182.88" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="C32"/>
<wire x1="208.28" y1="127" x2="208.28" y2="129.54" width="0.1524" layer="91"/>
<wire x1="193.04" y1="127" x2="208.28" y2="127" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="A32"/>
<wire x1="193.04" y1="129.54" x2="193.04" y2="127" width="0.1524" layer="91"/>
<junction x="193.04" y="129.54"/>
<pinref part="X16" gate="A" pin="1"/>
<wire x1="193.04" y1="129.54" x2="185.42" y2="129.54" width="0.1524" layer="91"/>
<wire x1="185.42" y1="129.54" x2="185.42" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="C20"/>
<wire x1="241.3" y1="157.48" x2="241.3" y2="160.02" width="0.1524" layer="91"/>
<wire x1="226.06" y1="157.48" x2="241.3" y2="157.48" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="A20"/>
<wire x1="226.06" y1="160.02" x2="226.06" y2="157.48" width="0.1524" layer="91"/>
<junction x="226.06" y="160.02"/>
<wire x1="226.06" y1="160.02" x2="210.82" y2="160.02" width="0.1524" layer="91"/>
<pinref part="X18" gate="A" pin="4"/>
<wire x1="210.82" y1="160.02" x2="210.82" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A24"/>
<pinref part="X5" gate="G$1" pin="C24"/>
<wire x1="241.3" y1="149.86" x2="241.3" y2="147.32" width="0.1524" layer="91"/>
<wire x1="241.3" y1="147.32" x2="226.06" y2="147.32" width="0.1524" layer="91"/>
<wire x1="226.06" y1="147.32" x2="226.06" y2="149.86" width="0.1524" layer="91"/>
<junction x="226.06" y="149.86"/>
<wire x1="226.06" y1="149.86" x2="213.36" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X18" gate="A" pin="3"/>
<wire x1="213.36" y1="149.86" x2="213.36" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="C28"/>
<wire x1="241.3" y1="137.16" x2="241.3" y2="139.7" width="0.1524" layer="91"/>
<wire x1="226.06" y1="137.16" x2="241.3" y2="137.16" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="A28"/>
<wire x1="226.06" y1="139.7" x2="226.06" y2="137.16" width="0.1524" layer="91"/>
<junction x="226.06" y="139.7"/>
<wire x1="226.06" y1="139.7" x2="215.9" y2="139.7" width="0.1524" layer="91"/>
<pinref part="X18" gate="A" pin="2"/>
<wire x1="215.9" y1="139.7" x2="215.9" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A32"/>
<pinref part="X5" gate="G$1" pin="C32"/>
<wire x1="241.3" y1="129.54" x2="241.3" y2="127" width="0.1524" layer="91"/>
<wire x1="241.3" y1="127" x2="226.06" y2="127" width="0.1524" layer="91"/>
<wire x1="226.06" y1="127" x2="226.06" y2="129.54" width="0.1524" layer="91"/>
<junction x="226.06" y="129.54"/>
<wire x1="226.06" y1="129.54" x2="218.44" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X18" gate="A" pin="1"/>
<wire x1="218.44" y1="129.54" x2="218.44" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A20"/>
<pinref part="X6" gate="G$1" pin="C20"/>
<wire x1="274.32" y1="157.48" x2="274.32" y2="160.02" width="0.1524" layer="91"/>
<wire x1="259.08" y1="157.48" x2="274.32" y2="157.48" width="0.1524" layer="91"/>
<wire x1="259.08" y1="157.48" x2="259.08" y2="160.02" width="0.1524" layer="91"/>
<junction x="259.08" y="160.02"/>
<wire x1="259.08" y1="160.02" x2="243.84" y2="160.02" width="0.1524" layer="91"/>
<pinref part="X20" gate="A" pin="4"/>
<wire x1="243.84" y1="160.02" x2="243.84" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="C24"/>
<wire x1="274.32" y1="147.32" x2="274.32" y2="149.86" width="0.1524" layer="91"/>
<wire x1="259.08" y1="147.32" x2="274.32" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="A24"/>
<wire x1="259.08" y1="149.86" x2="259.08" y2="147.32" width="0.1524" layer="91"/>
<junction x="259.08" y="149.86"/>
<wire x1="259.08" y1="149.86" x2="246.38" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X20" gate="A" pin="3"/>
<wire x1="246.38" y1="149.86" x2="246.38" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="C28"/>
<wire x1="274.32" y1="137.16" x2="274.32" y2="139.7" width="0.1524" layer="91"/>
<wire x1="259.08" y1="137.16" x2="274.32" y2="137.16" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="A28"/>
<wire x1="259.08" y1="139.7" x2="259.08" y2="137.16" width="0.1524" layer="91"/>
<junction x="259.08" y="139.7"/>
<wire x1="259.08" y1="139.7" x2="248.92" y2="139.7" width="0.1524" layer="91"/>
<pinref part="X20" gate="A" pin="2"/>
<wire x1="248.92" y1="139.7" x2="248.92" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="C32"/>
<wire x1="274.32" y1="127" x2="274.32" y2="129.54" width="0.1524" layer="91"/>
<wire x1="259.08" y1="127" x2="274.32" y2="127" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="A32"/>
<wire x1="259.08" y1="129.54" x2="259.08" y2="127" width="0.1524" layer="91"/>
<junction x="259.08" y="129.54"/>
<wire x1="259.08" y1="129.54" x2="251.46" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X20" gate="A" pin="1"/>
<wire x1="251.46" y1="129.54" x2="251.46" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C32"/>
<wire x1="307.34" y1="127" x2="307.34" y2="129.54" width="0.1524" layer="91"/>
<wire x1="292.1" y1="127" x2="307.34" y2="127" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="A32"/>
<wire x1="292.1" y1="129.54" x2="292.1" y2="127" width="0.1524" layer="91"/>
<junction x="292.1" y="129.54"/>
<wire x1="292.1" y1="129.54" x2="284.48" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X22" gate="A" pin="1"/>
<wire x1="284.48" y1="129.54" x2="284.48" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C28"/>
<wire x1="307.34" y1="137.16" x2="307.34" y2="139.7" width="0.1524" layer="91"/>
<wire x1="292.1" y1="137.16" x2="307.34" y2="137.16" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="A28"/>
<wire x1="292.1" y1="139.7" x2="292.1" y2="137.16" width="0.1524" layer="91"/>
<junction x="292.1" y="139.7"/>
<wire x1="292.1" y1="139.7" x2="281.94" y2="139.7" width="0.1524" layer="91"/>
<pinref part="X22" gate="A" pin="2"/>
<wire x1="281.94" y1="139.7" x2="281.94" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C24"/>
<wire x1="307.34" y1="147.32" x2="307.34" y2="149.86" width="0.1524" layer="91"/>
<wire x1="292.1" y1="147.32" x2="307.34" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="A24"/>
<wire x1="292.1" y1="149.86" x2="292.1" y2="147.32" width="0.1524" layer="91"/>
<junction x="292.1" y="149.86"/>
<wire x1="292.1" y1="149.86" x2="279.4" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X22" gate="A" pin="3"/>
<wire x1="279.4" y1="149.86" x2="279.4" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C20"/>
<wire x1="307.34" y1="157.48" x2="307.34" y2="160.02" width="0.1524" layer="91"/>
<wire x1="292.1" y1="157.48" x2="307.34" y2="157.48" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="A20"/>
<wire x1="292.1" y1="160.02" x2="292.1" y2="157.48" width="0.1524" layer="91"/>
<junction x="292.1" y="160.02"/>
<wire x1="292.1" y1="160.02" x2="276.86" y2="160.02" width="0.1524" layer="91"/>
<pinref part="X22" gate="A" pin="4"/>
<wire x1="276.86" y1="160.02" x2="276.86" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A30"/>
<pinref part="X1" gate="G$1" pin="A26"/>
<pinref part="X1" gate="G$1" pin="A22"/>
<wire x1="93.98" y1="154.94" x2="91.44" y2="154.94" width="0.1524" layer="91"/>
<wire x1="91.44" y1="154.94" x2="91.44" y2="144.78" width="0.1524" layer="91"/>
<wire x1="91.44" y1="144.78" x2="93.98" y2="144.78" width="0.1524" layer="91"/>
<junction x="91.44" y="144.78"/>
<wire x1="91.44" y1="144.78" x2="91.44" y2="134.62" width="0.1524" layer="91"/>
<wire x1="91.44" y1="134.62" x2="93.98" y2="134.62" width="0.1524" layer="91"/>
<pinref part="$1" gate="A" pin="GND"/>
<wire x1="91.44" y1="134.62" x2="91.44" y2="119.38" width="0.1524" layer="91"/>
<junction x="91.44" y="134.62"/>
</segment>
<segment>
<pinref part="X2" gate="G$1" pin="A22"/>
<wire x1="124.46" y1="154.94" x2="127" y2="154.94" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="A26"/>
<wire x1="124.46" y1="144.78" x2="127" y2="144.78" width="0.1524" layer="91"/>
<wire x1="124.46" y1="144.78" x2="124.46" y2="154.94" width="0.1524" layer="91"/>
<junction x="124.46" y="144.78"/>
<pinref part="X2" gate="G$1" pin="A30"/>
<wire x1="127" y1="134.62" x2="124.46" y2="134.62" width="0.1524" layer="91"/>
<wire x1="124.46" y1="134.62" x2="124.46" y2="144.78" width="0.1524" layer="91"/>
<pinref part="$4" gate="A" pin="GND"/>
<wire x1="124.46" y1="134.62" x2="124.46" y2="119.38" width="0.1524" layer="91"/>
<junction x="124.46" y="134.62"/>
</segment>
<segment>
<pinref part="X3" gate="G$1" pin="A30"/>
<pinref part="X3" gate="G$1" pin="A26"/>
<pinref part="X3" gate="G$1" pin="A22"/>
<wire x1="160.02" y1="154.94" x2="157.48" y2="154.94" width="0.1524" layer="91"/>
<wire x1="157.48" y1="154.94" x2="157.48" y2="144.78" width="0.1524" layer="91"/>
<wire x1="157.48" y1="144.78" x2="160.02" y2="144.78" width="0.1524" layer="91"/>
<junction x="157.48" y="144.78"/>
<wire x1="157.48" y1="144.78" x2="157.48" y2="134.62" width="0.1524" layer="91"/>
<wire x1="157.48" y1="134.62" x2="160.02" y2="134.62" width="0.1524" layer="91"/>
<pinref part="$5" gate="A" pin="GND"/>
<wire x1="157.48" y1="134.62" x2="157.48" y2="119.38" width="0.1524" layer="91"/>
<junction x="157.48" y="134.62"/>
</segment>
<segment>
<pinref part="X4" gate="G$1" pin="A30"/>
<pinref part="X4" gate="G$1" pin="A26"/>
<pinref part="X4" gate="G$1" pin="A22"/>
<wire x1="193.04" y1="154.94" x2="190.5" y2="154.94" width="0.1524" layer="91"/>
<wire x1="190.5" y1="154.94" x2="190.5" y2="144.78" width="0.1524" layer="91"/>
<wire x1="190.5" y1="144.78" x2="193.04" y2="144.78" width="0.1524" layer="91"/>
<junction x="190.5" y="144.78"/>
<wire x1="190.5" y1="144.78" x2="190.5" y2="134.62" width="0.1524" layer="91"/>
<wire x1="190.5" y1="134.62" x2="193.04" y2="134.62" width="0.1524" layer="91"/>
<pinref part="$6" gate="A" pin="GND"/>
<wire x1="190.5" y1="119.38" x2="190.5" y2="134.62" width="0.1524" layer="91"/>
<junction x="190.5" y="134.62"/>
</segment>
<segment>
<pinref part="X5" gate="G$1" pin="A30"/>
<pinref part="X5" gate="G$1" pin="A26"/>
<pinref part="X5" gate="G$1" pin="A22"/>
<wire x1="226.06" y1="154.94" x2="223.52" y2="154.94" width="0.1524" layer="91"/>
<wire x1="223.52" y1="154.94" x2="223.52" y2="144.78" width="0.1524" layer="91"/>
<wire x1="223.52" y1="144.78" x2="226.06" y2="144.78" width="0.1524" layer="91"/>
<junction x="223.52" y="144.78"/>
<wire x1="223.52" y1="144.78" x2="223.52" y2="134.62" width="0.1524" layer="91"/>
<wire x1="223.52" y1="134.62" x2="226.06" y2="134.62" width="0.1524" layer="91"/>
<pinref part="$7" gate="A" pin="GND"/>
<wire x1="223.52" y1="119.38" x2="223.52" y2="134.62" width="0.1524" layer="91"/>
<junction x="223.52" y="134.62"/>
</segment>
<segment>
<pinref part="X6" gate="G$1" pin="A30"/>
<pinref part="X6" gate="G$1" pin="A26"/>
<pinref part="X6" gate="G$1" pin="A22"/>
<wire x1="259.08" y1="154.94" x2="256.54" y2="154.94" width="0.1524" layer="91"/>
<wire x1="256.54" y1="154.94" x2="256.54" y2="144.78" width="0.1524" layer="91"/>
<wire x1="256.54" y1="144.78" x2="259.08" y2="144.78" width="0.1524" layer="91"/>
<junction x="256.54" y="144.78"/>
<wire x1="256.54" y1="144.78" x2="256.54" y2="134.62" width="0.1524" layer="91"/>
<wire x1="256.54" y1="134.62" x2="259.08" y2="134.62" width="0.1524" layer="91"/>
<pinref part="$8" gate="A" pin="GND"/>
<wire x1="256.54" y1="119.38" x2="256.54" y2="134.62" width="0.1524" layer="91"/>
<junction x="256.54" y="134.62"/>
</segment>
<segment>
<pinref part="X7" gate="G$1" pin="A30"/>
<pinref part="X7" gate="G$1" pin="A26"/>
<pinref part="X7" gate="G$1" pin="A22"/>
<wire x1="292.1" y1="154.94" x2="289.56" y2="154.94" width="0.1524" layer="91"/>
<wire x1="289.56" y1="154.94" x2="289.56" y2="144.78" width="0.1524" layer="91"/>
<wire x1="289.56" y1="144.78" x2="292.1" y2="144.78" width="0.1524" layer="91"/>
<junction x="289.56" y="144.78"/>
<wire x1="289.56" y1="144.78" x2="289.56" y2="134.62" width="0.1524" layer="91"/>
<wire x1="289.56" y1="134.62" x2="292.1" y2="134.62" width="0.1524" layer="91"/>
<pinref part="$9" gate="A" pin="GND"/>
<wire x1="289.56" y1="119.38" x2="289.56" y2="134.62" width="0.1524" layer="91"/>
<junction x="289.56" y="134.62"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="X24" gate="A" pin="2"/>
<wire x1="134.62" y1="226.06" x2="137.16" y2="226.06" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="C6"/>
<wire x1="109.22" y1="195.58" x2="114.3" y2="195.58" width="0.1524" layer="91"/>
<wire x1="114.3" y1="195.58" x2="114.3" y2="218.44" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C6"/>
<wire x1="142.24" y1="195.58" x2="147.32" y2="195.58" width="0.1524" layer="91"/>
<wire x1="147.32" y1="195.58" x2="147.32" y2="218.44" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C6"/>
<wire x1="175.26" y1="195.58" x2="180.34" y2="195.58" width="0.1524" layer="91"/>
<wire x1="180.34" y1="195.58" x2="180.34" y2="218.44" width="0.1524" layer="91"/>
<wire x1="180.34" y1="218.44" x2="147.32" y2="218.44" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C6"/>
<wire x1="208.28" y1="195.58" x2="213.36" y2="195.58" width="0.1524" layer="91"/>
<wire x1="213.36" y1="195.58" x2="213.36" y2="218.44" width="0.1524" layer="91"/>
<wire x1="213.36" y1="218.44" x2="180.34" y2="218.44" width="0.1524" layer="91"/>
<junction x="180.34" y="218.44"/>
<pinref part="X5" gate="G$1" pin="C6"/>
<wire x1="241.3" y1="195.58" x2="246.38" y2="195.58" width="0.1524" layer="91"/>
<wire x1="246.38" y1="195.58" x2="246.38" y2="218.44" width="0.1524" layer="91"/>
<wire x1="246.38" y1="218.44" x2="213.36" y2="218.44" width="0.1524" layer="91"/>
<junction x="213.36" y="218.44"/>
<pinref part="X6" gate="G$1" pin="C6"/>
<wire x1="274.32" y1="195.58" x2="279.4" y2="195.58" width="0.1524" layer="91"/>
<wire x1="279.4" y1="195.58" x2="279.4" y2="218.44" width="0.1524" layer="91"/>
<wire x1="279.4" y1="218.44" x2="246.38" y2="218.44" width="0.1524" layer="91"/>
<junction x="246.38" y="218.44"/>
<pinref part="X7" gate="G$1" pin="C6"/>
<wire x1="307.34" y1="195.58" x2="312.42" y2="195.58" width="0.1524" layer="91"/>
<wire x1="312.42" y1="195.58" x2="312.42" y2="218.44" width="0.1524" layer="91"/>
<wire x1="312.42" y1="218.44" x2="279.4" y2="218.44" width="0.1524" layer="91"/>
<junction x="279.4" y="218.44"/>
<junction x="147.32" y="218.44"/>
<wire x1="114.3" y1="218.44" x2="134.62" y2="218.44" width="0.1524" layer="91"/>
<wire x1="134.62" y1="218.44" x2="147.32" y2="218.44" width="0.1524" layer="91"/>
<wire x1="134.62" y1="226.06" x2="134.62" y2="218.44" width="0.1524" layer="91"/>
<junction x="134.62" y="218.44"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
