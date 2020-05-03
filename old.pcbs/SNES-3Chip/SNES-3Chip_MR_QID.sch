<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
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
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="74xx-eu">
<description>&lt;b&gt;TTL Devices, 74xx Series with European Symbols&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Texas Instruments &lt;i&gt;TTL Data Book&lt;/i&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;Volume 1, 1996.
&lt;li&gt;TTL Data Book, Volume 2 , 1993
&lt;li&gt;National Seminconductor Databook 1990, ALS/LS Logic
&lt;li&gt;ttl 74er digital data dictionary, ECA Electronic + Acustic GmbH, ISBN 3-88109-032-0
&lt;li&gt;http://icmaster.com/ViewCompare.asp
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL14">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="8.89" y1="2.921" x2="-8.89" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="8.89" y1="2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="2.921" x2="-8.89" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="-8.89" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.016" x2="-8.89" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-9.271" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-6.731" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO14">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.064" y1="1.9558" x2="-4.064" y2="1.9558" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-1.9558" x2="4.445" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.445" y1="1.5748" x2="-4.064" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.064" y1="1.9558" x2="4.445" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.445" y1="-1.5748" x2="-4.064" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.064" y1="-1.9558" x2="4.064" y2="-1.9558" width="0.1524" layer="51"/>
<wire x1="4.445" y1="-1.5748" x2="4.445" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.5748" x2="-4.445" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-0.508" x2="-4.445" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-4.445" y1="-1.6002" x2="4.445" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="-1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="0" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="0" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.175" y="-0.762" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.826" y="-1.905" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.254" y1="1.9558" x2="0.254" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="-3.0988" x2="-3.556" y2="-1.9558" layer="51"/>
<rectangle x1="-2.794" y1="-3.0988" x2="-2.286" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="-3.0734" x2="-1.016" y2="-1.9304" layer="51"/>
<rectangle x1="-0.254" y1="-3.0988" x2="0.254" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="1.9558" x2="-1.016" y2="3.0988" layer="51"/>
<rectangle x1="-2.794" y1="1.9558" x2="-2.286" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="1.9558" x2="-3.556" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="1.9558" x2="1.524" y2="3.0988" layer="51"/>
<rectangle x1="2.286" y1="1.9558" x2="2.794" y2="3.0988" layer="51"/>
<rectangle x1="3.556" y1="1.9558" x2="4.064" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="-3.0988" x2="1.524" y2="-1.9558" layer="51"/>
<rectangle x1="2.286" y1="-3.0988" x2="2.794" y2="-1.9558" layer="51"/>
<rectangle x1="3.556" y1="-3.0988" x2="4.064" y2="-1.9558" layer="51"/>
</package>
<package name="LCC20">
<description>&lt;b&gt;Leadless Chip Carrier&lt;/b&gt;&lt;p&gt; Ceramic Package</description>
<wire x1="-0.4001" y1="4.4" x2="-0.87" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="4.3985" x2="0.4001" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.3985" x2="-0.8699" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="2.14" x2="-4.3985" y2="2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="-2.9401" y1="4.4" x2="-3.3" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.4" x2="0.4001" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.3985" x2="1.67" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="3.3" x2="-4.4" y2="2.9401" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="2.14" x2="-4.4" y2="1.6701" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="0.87" x2="-4.3985" y2="1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-0.4001" x2="-4.3985" y2="0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-1.6701" x2="-4.3985" y2="-0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="0.87" x2="-4.4" y2="0.4001" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-0.4001" x2="-4.4" y2="-0.87" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-2.9401" x2="-4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-4.4" y2="-4.4099" width="0.2032" layer="51"/>
<wire x1="2.14" y1="4.3985" x2="2.94" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="2.14" y1="4.4" x2="1.6701" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="4.4" x2="2.9401" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.4001" y1="-4.4" x2="0.87" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="-4.3985" x2="0.4001" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="0.87" y1="-4.3985" x2="1.67" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="2.9401" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.87" y1="-4.4" x2="-0.4001" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-1.6701" y1="-4.3985" x2="-0.8699" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.9401" y1="-4.3985" x2="-2.1399" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.14" y1="-4.4" x2="-1.6701" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-2.9401" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="0.4001" x2="4.4" y2="0.87" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="0.4001" x2="4.3985" y2="-0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="1.6701" x2="4.3985" y2="0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="2.9401" x2="4.4" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-0.87" x2="4.4" y2="-0.4001" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="-0.87" x2="4.3985" y2="-1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="-2.14" x2="4.3985" y2="-2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="-2.14" x2="4.4" y2="-1.6701" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-2.9401" width="0.2032" layer="51"/>
<wire x1="-2.9401" y1="4.3985" x2="-2.1399" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.4" x2="-2.14" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="-2.9401" x2="-4.3985" y2="-2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="-1.6701" x2="-4.4" y2="-2.14" width="0.2032" layer="51"/>
<wire x1="1.6701" y1="-4.4" x2="2.14" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="2.14" y1="-4.3985" x2="2.94" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="4.3985" y1="2.9401" x2="4.3985" y2="2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="1.6701" x2="4.4" y2="2.14" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="-3.1941" x2="-4.4" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="-4.4" x2="-3.1941" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="3.1941" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-3.1941" width="0.2032" layer="21"/>
<wire x1="4.4" y1="3.1941" x2="4.4" y2="4.4" width="0.2032" layer="21"/>
<wire x1="4.4" y1="4.4" x2="3.1941" y2="4.4" width="0.2032" layer="21"/>
<smd name="2" x="-1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="1" x="0" y="3.8001" dx="0.8" dy="3.4" layer="1"/>
<smd name="3" x="-2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="4" x="-4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="5" x="-4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="6" x="-4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="7" x="-4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="8" x="-4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="9" x="-2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="10" x="-1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="11" x="0" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="12" x="1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="13" x="2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="14" x="4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="15" x="4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="16" x="4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="17" x="4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="18" x="4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="19" x="2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="20" x="1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<text x="-4.0051" y="6.065" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.9751" y="-7.5601" size="1.778" layer="27">&gt;VALUE</text>
</package>
<package name="SSOP14">
<description>&lt;b&gt;plastic shrink small outline package; 14 leads; body width 5.3 mm&lt;/b&gt;&lt;p&gt;
SOT337-1&lt;br&gt;
Source: http://www.nxp.com/documents/data_sheet/74ABT125.pdf</description>
<wire x1="-3.1" y1="2.6" x2="3.1" y2="2.6" width="0.2032" layer="21"/>
<wire x1="3.1" y1="2.6" x2="3.1" y2="-2.6" width="0.2032" layer="21"/>
<wire x1="3.1" y1="-2.6" x2="-3.1" y2="-2.6" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-2.6" x2="-3.1" y2="2.6" width="0.2032" layer="21"/>
<circle x="-2.3" y="-1.8" radius="0.4596" width="0" layer="21"/>
<smd name="1" x="-1.95" y="-3.475" dx="0.4" dy="1.1" layer="1" stop="no"/>
<smd name="2" x="-1.3" y="-3.475" dx="0.4" dy="1.1" layer="1" stop="no"/>
<smd name="3" x="-0.65" y="-3.475" dx="0.4" dy="1.1" layer="1" stop="no"/>
<smd name="4" x="0" y="-3.475" dx="0.4" dy="1.1" layer="1" stop="no"/>
<smd name="5" x="0.65" y="-3.475" dx="0.4" dy="1.1" layer="1" stop="no"/>
<smd name="6" x="1.3" y="-3.475" dx="0.4" dy="1.1" layer="1" stop="no"/>
<smd name="7" x="1.95" y="-3.475" dx="0.4" dy="1.1" layer="1" stop="no"/>
<smd name="8" x="1.95" y="3.475" dx="0.4" dy="1.1" layer="1" rot="R180" stop="no"/>
<smd name="9" x="1.3" y="3.475" dx="0.4" dy="1.1" layer="1" rot="R180" stop="no"/>
<smd name="10" x="0.65" y="3.475" dx="0.4" dy="1.1" layer="1" rot="R180" stop="no"/>
<smd name="11" x="0" y="3.475" dx="0.4" dy="1.1" layer="1" rot="R180" stop="no"/>
<smd name="12" x="-0.65" y="3.475" dx="0.4" dy="1.1" layer="1" rot="R180" stop="no"/>
<smd name="13" x="-1.3" y="3.475" dx="0.4" dy="1.1" layer="1" rot="R180" stop="no"/>
<smd name="14" x="-1.95" y="3.475" dx="0.4" dy="1.1" layer="1" rot="R180" stop="no"/>
<text x="-3.81" y="-3.175" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-2.54" y="-0.635" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.125" y1="-3.95" x2="-1.775" y2="-2.7" layer="51"/>
<rectangle x1="-1.475" y1="-3.95" x2="-1.125" y2="-2.7" layer="51"/>
<rectangle x1="-0.825" y1="-3.95" x2="-0.475" y2="-2.7" layer="51"/>
<rectangle x1="-0.175" y1="-3.95" x2="0.175" y2="-2.7" layer="51"/>
<rectangle x1="0.475" y1="-3.95" x2="0.825" y2="-2.7" layer="51"/>
<rectangle x1="1.125" y1="-3.95" x2="1.475" y2="-2.7" layer="51"/>
<rectangle x1="1.775" y1="-3.95" x2="2.125" y2="-2.7" layer="51"/>
<rectangle x1="1.775" y1="2.7" x2="2.125" y2="3.95" layer="51" rot="R180"/>
<rectangle x1="1.125" y1="2.7" x2="1.475" y2="3.95" layer="51" rot="R180"/>
<rectangle x1="0.475" y1="2.7" x2="0.825" y2="3.95" layer="51" rot="R180"/>
<rectangle x1="-0.175" y1="2.7" x2="0.175" y2="3.95" layer="51" rot="R180"/>
<rectangle x1="-0.825" y1="2.7" x2="-0.475" y2="3.95" layer="51" rot="R180"/>
<rectangle x1="-1.475" y1="2.7" x2="-1.125" y2="3.95" layer="51" rot="R180"/>
<rectangle x1="-2.125" y1="2.7" x2="-1.775" y2="3.95" layer="51" rot="R180"/>
<rectangle x1="-2.2" y1="-4.075" x2="-1.7" y2="-2.875" layer="29"/>
<rectangle x1="-1.55" y1="-4.075" x2="-1.05" y2="-2.875" layer="29"/>
<rectangle x1="-0.9" y1="-4.075" x2="-0.4" y2="-2.875" layer="29"/>
<rectangle x1="-0.25" y1="-4.075" x2="0.25" y2="-2.875" layer="29"/>
<rectangle x1="0.4" y1="-4.075" x2="0.9" y2="-2.875" layer="29"/>
<rectangle x1="1.05" y1="-4.075" x2="1.55" y2="-2.875" layer="29"/>
<rectangle x1="1.7" y1="-4.075" x2="2.2" y2="-2.875" layer="29"/>
<rectangle x1="1.7" y1="2.875" x2="2.2" y2="4.075" layer="29" rot="R180"/>
<rectangle x1="1.05" y1="2.875" x2="1.55" y2="4.075" layer="29" rot="R180"/>
<rectangle x1="0.4" y1="2.875" x2="0.9" y2="4.075" layer="29" rot="R180"/>
<rectangle x1="-0.25" y1="2.875" x2="0.25" y2="4.075" layer="29" rot="R180"/>
<rectangle x1="-0.9" y1="2.875" x2="-0.4" y2="4.075" layer="29" rot="R180"/>
<rectangle x1="-1.55" y1="2.875" x2="-1.05" y2="4.075" layer="29" rot="R180"/>
<rectangle x1="-2.2" y1="2.875" x2="-1.7" y2="4.075" layer="29" rot="R180"/>
</package>
<package name="TSSOP14">
<description>&lt;b&gt;plastic thin shrink small outline package; 14 leads; body width 4.4 mm&lt;/b&gt;&lt;p&gt;
SOT402-1&lt;br&gt;
Source: http://www.nxp.com/documents/data_sheet/74ABT125.pdf</description>
<wire x1="-2.45" y1="2.15" x2="2.45" y2="2.15" width="0.2032" layer="21"/>
<wire x1="2.45" y1="2.15" x2="2.45" y2="-2.15" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-2.15" x2="-2.45" y2="-2.15" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="-2.15" x2="-2.45" y2="2.15" width="0.2032" layer="21"/>
<circle x="-1.625" y="-1.3" radius="0.4596" width="0" layer="21"/>
<smd name="1" x="-1.95" y="-2.925" dx="0.35" dy="0.9" layer="1" stop="no"/>
<smd name="2" x="-1.3" y="-2.925" dx="0.35" dy="0.9" layer="1" stop="no"/>
<smd name="3" x="-0.65" y="-2.925" dx="0.35" dy="0.9" layer="1" stop="no"/>
<smd name="4" x="0" y="-2.925" dx="0.35" dy="0.9" layer="1" stop="no"/>
<smd name="5" x="0.65" y="-2.925" dx="0.35" dy="0.9" layer="1" stop="no"/>
<smd name="6" x="1.3" y="-2.925" dx="0.35" dy="0.9" layer="1" stop="no"/>
<smd name="7" x="1.95" y="-2.925" dx="0.35" dy="0.9" layer="1" stop="no"/>
<smd name="8" x="1.95" y="2.925" dx="0.35" dy="0.9" layer="1" rot="R180" stop="no"/>
<smd name="9" x="1.3" y="2.925" dx="0.35" dy="0.9" layer="1" rot="R180" stop="no"/>
<smd name="10" x="0.65" y="2.925" dx="0.35" dy="0.9" layer="1" rot="R180" stop="no"/>
<smd name="11" x="0" y="2.925" dx="0.35" dy="0.9" layer="1" rot="R180" stop="no"/>
<smd name="12" x="-0.65" y="2.925" dx="0.35" dy="0.9" layer="1" rot="R180" stop="no"/>
<smd name="13" x="-1.3" y="2.925" dx="0.35" dy="0.9" layer="1" rot="R180" stop="no"/>
<smd name="14" x="-1.95" y="2.925" dx="0.35" dy="0.9" layer="1" rot="R180" stop="no"/>
<text x="-2.925" y="-2.925" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.225" y="-2.925" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1" y1="-3.3" x2="-1.8" y2="-2.225" layer="51"/>
<rectangle x1="-1.45" y1="-3.3" x2="-1.15" y2="-2.225" layer="51"/>
<rectangle x1="-0.8" y1="-3.3" x2="-0.5" y2="-2.225" layer="51"/>
<rectangle x1="-0.15" y1="-3.3" x2="0.15" y2="-2.225" layer="51"/>
<rectangle x1="0.5" y1="-3.3" x2="0.8" y2="-2.225" layer="51"/>
<rectangle x1="1.15" y1="-3.3" x2="1.45" y2="-2.225" layer="51"/>
<rectangle x1="1.8" y1="-3.3" x2="2.1" y2="-2.225" layer="51"/>
<rectangle x1="1.8" y1="2.225" x2="2.1" y2="3.3" layer="51" rot="R180"/>
<rectangle x1="1.15" y1="2.225" x2="1.45" y2="3.3" layer="51" rot="R180"/>
<rectangle x1="0.5" y1="2.225" x2="0.8" y2="3.3" layer="51" rot="R180"/>
<rectangle x1="-0.15" y1="2.225" x2="0.15" y2="3.3" layer="51" rot="R180"/>
<rectangle x1="-0.8" y1="2.225" x2="-0.5" y2="3.3" layer="51" rot="R180"/>
<rectangle x1="-1.45" y1="2.225" x2="-1.15" y2="3.3" layer="51" rot="R180"/>
<rectangle x1="-2.1" y1="2.225" x2="-1.8" y2="3.3" layer="51" rot="R180"/>
<rectangle x1="-2.175" y1="-3.425" x2="-1.725" y2="-2.425" layer="29"/>
<rectangle x1="-1.525" y1="-3.425" x2="-1.075" y2="-2.425" layer="29"/>
<rectangle x1="-0.875" y1="-3.425" x2="-0.425" y2="-2.425" layer="29"/>
<rectangle x1="-0.225" y1="-3.425" x2="0.225" y2="-2.425" layer="29"/>
<rectangle x1="0.425" y1="-3.425" x2="0.875" y2="-2.425" layer="29"/>
<rectangle x1="1.075" y1="-3.425" x2="1.525" y2="-2.425" layer="29"/>
<rectangle x1="1.725" y1="-3.425" x2="2.175" y2="-2.425" layer="29"/>
<rectangle x1="1.725" y1="2.425" x2="2.175" y2="3.425" layer="29" rot="R180"/>
<rectangle x1="1.075" y1="2.425" x2="1.525" y2="3.425" layer="29" rot="R180"/>
<rectangle x1="0.425" y1="2.425" x2="0.875" y2="3.425" layer="29" rot="R180"/>
<rectangle x1="-0.225" y1="2.425" x2="0.225" y2="3.425" layer="29" rot="R180"/>
<rectangle x1="-0.875" y1="2.425" x2="-0.425" y2="3.425" layer="29" rot="R180"/>
<rectangle x1="-1.525" y1="2.425" x2="-1.075" y2="3.425" layer="29" rot="R180"/>
<rectangle x1="-2.175" y1="2.425" x2="-1.725" y2="3.425" layer="29" rot="R180"/>
</package>
<package name="DHVQFN14">
<description>&lt;b&gt;plastic dual in-line compatible thermal enhanced very thin quad flat package; no leads; 14 terminals; body 2.5 x 3 x 0.85 mm&lt;/b&gt;&lt;p&gt;
Source: http://www.nxp.com/documents/data_sheet/74ABT125.pdf</description>
<wire x1="-1.45" y1="1.2" x2="1.45" y2="1.2" width="0.2032" layer="51"/>
<wire x1="1.45" y1="1.2" x2="1.45" y2="-1.2" width="0.2032" layer="51"/>
<wire x1="-1.45" y1="-1.2" x2="-1.45" y2="1.2" width="0.2032" layer="51"/>
<wire x1="-1.2" y1="-0.25" x2="-1.65" y2="-0.25" width="0.4" layer="29"/>
<wire x1="-1" y1="-0.95" x2="-1" y2="-1.4" width="0.4" layer="29"/>
<wire x1="-0.5" y1="-0.95" x2="-0.5" y2="-1.4" width="0.4" layer="29"/>
<wire x1="0" y1="-0.95" x2="0" y2="-1.4" width="0.4" layer="29"/>
<wire x1="0.5" y1="-0.95" x2="0.5" y2="-1.4" width="0.4" layer="29"/>
<wire x1="1" y1="-0.95" x2="1" y2="-1.4" width="0.4" layer="29"/>
<wire x1="1.2" y1="-0.25" x2="1.65" y2="-0.25" width="0.4" layer="29"/>
<wire x1="1.2" y1="0.25" x2="1.65" y2="0.25" width="0.4" layer="29"/>
<wire x1="1" y1="0.95" x2="1" y2="1.4" width="0.4" layer="29"/>
<wire x1="0.5" y1="0.95" x2="0.5" y2="1.4" width="0.4" layer="29"/>
<wire x1="0" y1="0.95" x2="0" y2="1.4" width="0.4" layer="29"/>
<wire x1="-0.5" y1="0.95" x2="-0.5" y2="1.4" width="0.4" layer="29"/>
<wire x1="-1" y1="0.95" x2="-1" y2="1.4" width="0.4" layer="29"/>
<wire x1="-1.2" y1="0.25" x2="-1.65" y2="0.25" width="0.4" layer="29"/>
<wire x1="1.45" y1="-1.2" x2="-1.45" y2="-1.2" width="0.2032" layer="51"/>
<smd name="1" x="-1.425" y="-0.25" dx="0.35" dy="0.8" layer="1" roundness="100" rot="R270" stop="no"/>
<smd name="2" x="-1" y="-1.175" dx="0.35" dy="0.8" layer="1" roundness="100" stop="no"/>
<smd name="3" x="-0.5" y="-1.175" dx="0.35" dy="0.8" layer="1" roundness="100" stop="no"/>
<smd name="4" x="0" y="-1.175" dx="0.35" dy="0.8" layer="1" roundness="100" stop="no"/>
<smd name="5" x="0.5" y="-1.175" dx="0.35" dy="0.8" layer="1" roundness="100" stop="no"/>
<smd name="6" x="1" y="-1.175" dx="0.35" dy="0.8" layer="1" roundness="100" stop="no"/>
<smd name="7" x="1.425" y="-0.25" dx="0.35" dy="0.8" layer="1" roundness="100" rot="R90" stop="no"/>
<smd name="8" x="1.425" y="0.25" dx="0.35" dy="0.8" layer="1" roundness="100" rot="R90" stop="no"/>
<smd name="9" x="1" y="1.175" dx="0.35" dy="0.8" layer="1" roundness="100" rot="R180" stop="no"/>
<smd name="10" x="0.5" y="1.175" dx="0.35" dy="0.8" layer="1" roundness="100" rot="R180" stop="no"/>
<smd name="11" x="0" y="1.175" dx="0.35" dy="0.8" layer="1" roundness="100" rot="R180" stop="no"/>
<smd name="12" x="-0.5" y="1.175" dx="0.35" dy="0.8" layer="1" roundness="100" rot="R180" stop="no"/>
<smd name="13" x="-1" y="1.175" dx="0.35" dy="0.8" layer="1" roundness="100" rot="R180" stop="no"/>
<smd name="14" x="-1.425" y="0.25" dx="0.35" dy="0.8" layer="1" roundness="100" rot="R270" stop="no"/>
<smd name="EXP" x="0" y="0" dx="1.65" dy="1.15" layer="1" stop="no"/>
<text x="-2" y="-1.75" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.25" y="-1.75" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.4" y1="-1.15" x2="0" y2="0" layer="51"/>
<rectangle x1="-0.875" y1="-0.625" x2="0.875" y2="0.625" layer="29"/>
</package>
</packages>
<symbols>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
<symbol name="74125">
<wire x1="5.08" y1="0" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="0" y1="4.318" x2="0" y2="5.08" width="0.1524" layer="94"/>
<circle x="0" y="3.556" radius="0.762" width="0.1524" layer="94"/>
<text x="2.54" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="OE" x="0" y="7.62" visible="pad" length="short" direction="in" rot="R270"/>
<pin name="I" x="-10.16" y="0" visible="pad" length="middle" direction="in"/>
<pin name="O" x="10.16" y="0" visible="pad" length="middle" direction="hiz" rot="R180"/>
</symbol>
<symbol name="7427">
<wire x1="-2.54" y1="5.08" x2="2.54" y2="0" width="0.4064" layer="94" curve="-90" cap="flat"/>
<wire x1="-2.54" y1="-5.08" x2="2.54" y2="0" width="0.4064" layer="94" curve="90" cap="flat"/>
<wire x1="1.778" y1="2.54" x2="-2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="1.778" y1="-2.54" x2="-2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.4064" layer="94"/>
<text x="2.54" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I0" x="-7.62" y="2.54" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I1" x="-7.62" y="0" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="O" x="7.62" y="0" visible="pad" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="I2" x="-7.62" y="-2.54" visible="pad" length="middle" direction="in" swaplevel="1"/>
</symbol>
<symbol name="7430">
<wire x1="-2.54" y1="12.7" x2="-2.54" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="12.7" x2="2.54" y2="7.62" width="0.4064" layer="94" curve="-90"/>
<wire x1="-2.54" y1="-12.7" x2="2.54" y2="-7.62" width="0.4064" layer="94" curve="90"/>
<wire x1="2.54" y1="7.62" x2="2.54" y2="-7.62" width="0.4064" layer="94"/>
<text x="5.08" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I0" x="-7.62" y="10.16" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I1" x="-7.62" y="7.62" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I2" x="-7.62" y="5.08" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I3" x="-7.62" y="2.54" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I4" x="-7.62" y="-2.54" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I5" x="-7.62" y="-5.08" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="O" x="7.62" y="0" visible="pad" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="I6" x="-7.62" y="-7.62" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I7" x="-7.62" y="-10.16" visible="pad" length="middle" direction="in" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*125" prefix="IC">
<description>Quad bus &lt;b&gt;BUFFER&lt;/b&gt;, 3-state</description>
<gates>
<gate name="A" symbol="74125" x="17.78" y="0" swaplevel="1"/>
<gate name="B" symbol="74125" x="17.78" y="-17.78" swaplevel="1"/>
<gate name="C" symbol="74125" x="45.72" y="0" swaplevel="1"/>
<gate name="D" symbol="74125" x="45.72" y="-17.78" swaplevel="1"/>
<gate name="P" symbol="PWRN" x="-5.08" y="-7.62" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="A" pin="I" pad="2"/>
<connect gate="A" pin="O" pad="3"/>
<connect gate="A" pin="OE" pad="1"/>
<connect gate="B" pin="I" pad="5"/>
<connect gate="B" pin="O" pad="6"/>
<connect gate="B" pin="OE" pad="4"/>
<connect gate="C" pin="I" pad="9"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="C" pin="OE" pad="10"/>
<connect gate="D" pin="I" pad="12"/>
<connect gate="D" pin="O" pad="11"/>
<connect gate="D" pin="OE" pad="13"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name=""/>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
</technologies>
</device>
<device name="D" package="SO14">
<connects>
<connect gate="A" pin="I" pad="2"/>
<connect gate="A" pin="O" pad="3"/>
<connect gate="A" pin="OE" pad="1"/>
<connect gate="B" pin="I" pad="5"/>
<connect gate="B" pin="O" pad="6"/>
<connect gate="B" pin="OE" pad="4"/>
<connect gate="C" pin="I" pad="9"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="C" pin="OE" pad="10"/>
<connect gate="D" pin="I" pad="12"/>
<connect gate="D" pin="O" pad="11"/>
<connect gate="D" pin="OE" pad="13"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
</technologies>
</device>
<device name="DB" package="SSOP14">
<connects>
<connect gate="A" pin="I" pad="2"/>
<connect gate="A" pin="O" pad="3"/>
<connect gate="A" pin="OE" pad="1"/>
<connect gate="B" pin="I" pad="5"/>
<connect gate="B" pin="O" pad="6"/>
<connect gate="B" pin="OE" pad="4"/>
<connect gate="C" pin="I" pad="9"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="C" pin="OE" pad="10"/>
<connect gate="D" pin="I" pad="12"/>
<connect gate="D" pin="O" pad="11"/>
<connect gate="D" pin="OE" pad="13"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name="ABT"/>
</technologies>
</device>
<device name="PW" package="TSSOP14">
<connects>
<connect gate="A" pin="I" pad="2"/>
<connect gate="A" pin="O" pad="3"/>
<connect gate="A" pin="OE" pad="1"/>
<connect gate="B" pin="I" pad="5"/>
<connect gate="B" pin="O" pad="6"/>
<connect gate="B" pin="OE" pad="4"/>
<connect gate="C" pin="I" pad="9"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="C" pin="OE" pad="10"/>
<connect gate="D" pin="I" pad="12"/>
<connect gate="D" pin="O" pad="11"/>
<connect gate="D" pin="OE" pad="13"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name="ABT"/>
</technologies>
</device>
<device name="BQ" package="DHVQFN14">
<connects>
<connect gate="A" pin="I" pad="2"/>
<connect gate="A" pin="O" pad="3"/>
<connect gate="A" pin="OE" pad="1"/>
<connect gate="B" pin="I" pad="5"/>
<connect gate="B" pin="O" pad="6"/>
<connect gate="B" pin="OE" pad="4"/>
<connect gate="C" pin="I" pad="9"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="C" pin="OE" pad="10"/>
<connect gate="D" pin="I" pad="12"/>
<connect gate="D" pin="O" pad="11"/>
<connect gate="D" pin="OE" pad="13"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name="ABT"/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="74*27" prefix="IC">
<description>Triple 3-input &lt;b&gt;NOR&lt;/b&gt; gate</description>
<gates>
<gate name="A" symbol="7427" x="20.32" y="0" swaplevel="1"/>
<gate name="B" symbol="7427" x="20.32" y="-12.7" swaplevel="1"/>
<gate name="C" symbol="7427" x="43.18" y="0" swaplevel="1"/>
<gate name="P" symbol="PWRN" x="0" y="-7.62" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="A" pin="I0" pad="1"/>
<connect gate="A" pin="I1" pad="2"/>
<connect gate="A" pin="I2" pad="13"/>
<connect gate="A" pin="O" pad="12"/>
<connect gate="B" pin="I0" pad="3"/>
<connect gate="B" pin="I1" pad="4"/>
<connect gate="B" pin="I2" pad="5"/>
<connect gate="B" pin="O" pad="6"/>
<connect gate="C" pin="I0" pad="9"/>
<connect gate="C" pin="I1" pad="10"/>
<connect gate="C" pin="I2" pad="11"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="ALS"/>
<technology name="AS"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
</technologies>
</device>
<device name="D" package="SO14">
<connects>
<connect gate="A" pin="I0" pad="1"/>
<connect gate="A" pin="I1" pad="2"/>
<connect gate="A" pin="I2" pad="13"/>
<connect gate="A" pin="O" pad="12"/>
<connect gate="B" pin="I0" pad="3"/>
<connect gate="B" pin="I1" pad="4"/>
<connect gate="B" pin="I2" pad="5"/>
<connect gate="B" pin="O" pad="6"/>
<connect gate="C" pin="I0" pad="9"/>
<connect gate="C" pin="I1" pad="10"/>
<connect gate="C" pin="I2" pad="11"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="ALS"/>
<technology name="AS"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="I0" pad="2"/>
<connect gate="A" pin="I1" pad="3"/>
<connect gate="A" pin="I2" pad="19"/>
<connect gate="A" pin="O" pad="18"/>
<connect gate="B" pin="I0" pad="4"/>
<connect gate="B" pin="I1" pad="6"/>
<connect gate="B" pin="I2" pad="8"/>
<connect gate="B" pin="O" pad="9"/>
<connect gate="C" pin="I0" pad="13"/>
<connect gate="C" pin="I1" pad="14"/>
<connect gate="C" pin="I2" pad="16"/>
<connect gate="C" pin="O" pad="12"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="ALS"/>
<technology name="AS"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="74*30" prefix="IC">
<description>8-input &lt;b&gt;NAND&lt;/b&gt; gate</description>
<gates>
<gate name="A" symbol="7430" x="12.7" y="0"/>
<gate name="P" symbol="PWRN" x="-5.08" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="A" pin="I0" pad="1"/>
<connect gate="A" pin="I1" pad="2"/>
<connect gate="A" pin="I2" pad="3"/>
<connect gate="A" pin="I3" pad="4"/>
<connect gate="A" pin="I4" pad="5"/>
<connect gate="A" pin="I5" pad="6"/>
<connect gate="A" pin="I6" pad="11"/>
<connect gate="A" pin="I7" pad="12"/>
<connect gate="A" pin="O" pad="8"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name=""/>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="ALS"/>
<technology name="AS"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
<device name="D" package="SO14">
<connects>
<connect gate="A" pin="I0" pad="1"/>
<connect gate="A" pin="I1" pad="2"/>
<connect gate="A" pin="I2" pad="3"/>
<connect gate="A" pin="I3" pad="4"/>
<connect gate="A" pin="I4" pad="5"/>
<connect gate="A" pin="I5" pad="6"/>
<connect gate="A" pin="I6" pad="11"/>
<connect gate="A" pin="I7" pad="12"/>
<connect gate="A" pin="O" pad="8"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name=""/>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="ALS"/>
<technology name="AS"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="I0" pad="2"/>
<connect gate="A" pin="I1" pad="3"/>
<connect gate="A" pin="I2" pad="4"/>
<connect gate="A" pin="I3" pad="6"/>
<connect gate="A" pin="I4" pad="8"/>
<connect gate="A" pin="I5" pad="9"/>
<connect gate="A" pin="I6" pad="16"/>
<connect gate="A" pin="I7" pad="18"/>
<connect gate="A" pin="O" pad="12"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="ALS"/>
<technology name="AS"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="snescart">
<packages>
<package name="PIC16F630">
<wire x1="4.064" y1="1.9558" x2="-4.064" y2="1.9558" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-1.9558" x2="4.445" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.445" y1="1.5748" x2="-4.064" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.064" y1="1.9558" x2="4.445" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.445" y1="-1.5748" x2="-4.064" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.064" y1="-1.9558" x2="4.064" y2="-1.9558" width="0.1524" layer="51"/>
<wire x1="4.445" y1="-1.5748" x2="4.445" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.5748" x2="-4.445" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-0.508" x2="-4.445" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-4.445" y1="-1.6002" x2="4.445" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="-1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="0" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="0" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.175" y="-0.762" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.826" y="-1.905" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.254" y1="1.9558" x2="0.254" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="-3.0988" x2="-3.556" y2="-1.9558" layer="51"/>
<rectangle x1="-2.794" y1="-3.0988" x2="-2.286" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="-3.0734" x2="-1.016" y2="-1.9304" layer="51"/>
<rectangle x1="-0.254" y1="-3.0988" x2="0.254" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="1.9558" x2="-1.016" y2="3.0988" layer="51"/>
<rectangle x1="-2.794" y1="1.9558" x2="-2.286" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="1.9558" x2="-3.556" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="1.9558" x2="1.524" y2="3.0988" layer="51"/>
<rectangle x1="2.286" y1="1.9558" x2="2.794" y2="3.0988" layer="51"/>
<rectangle x1="3.556" y1="1.9558" x2="4.064" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="-3.0988" x2="1.524" y2="-1.9558" layer="51"/>
<rectangle x1="2.286" y1="-3.0988" x2="2.794" y2="-1.9558" layer="51"/>
<rectangle x1="3.556" y1="-3.0988" x2="4.064" y2="-1.9558" layer="51"/>
</package>
<package name="Z0805">
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-1.905" y1="-0.790575" x2="-1.905" y2="0.790575" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0.790575" x2="-1.5875" y2="1.108075" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.5875" y1="1.108075" x2="1.5875" y2="1.108075" width="0.1524" layer="21"/>
<wire x1="1.5875" y1="1.108075" x2="1.905" y2="0.790575" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.905" y1="0.790575" x2="1.905" y2="-0.790575" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-0.790575" x2="1.5875" y2="-1.108075" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.5875" y1="-1.108075" x2="-1.5875" y2="-1.108075" width="0.1524" layer="21"/>
<wire x1="-1.5875" y1="-1.108075" x2="-1.905" y2="-0.790575" width="0.1524" layer="21" curve="-90"/>
</package>
<package name="MYJUMP">
<text x="-2.76225" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<polygon width="0.1524" layer="1">
<vertex x="-0.635" y="-1.11125"/>
<vertex x="0.47625" y="0"/>
<vertex x="-0.635" y="1.11125"/>
<vertex x="1.11125" y="1.11125"/>
<vertex x="1.11125" y="-1.11125"/>
</polygon>
<polygon width="0.1524" layer="1">
<vertex x="-1.11125" y="-1.11125"/>
<vertex x="-1.11125" y="1.11125"/>
<vertex x="0" y="0"/>
</polygon>
<wire x1="-1.42875" y1="-1.11125" x2="-1.42875" y2="1.11125" width="0.1524" layer="21"/>
<wire x1="-1.42875" y1="1.11125" x2="-1.11125" y2="1.42875" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.11125" y1="1.42875" x2="1.11125" y2="1.42875" width="0.1524" layer="21"/>
<wire x1="1.11125" y1="1.42875" x2="1.42875" y2="1.11125" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.42875" y1="1.11125" x2="1.42875" y2="-1.11125" width="0.1524" layer="21"/>
<wire x1="1.42875" y1="-1.11125" x2="1.11125" y2="-1.42875" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.11125" y1="-1.42875" x2="-1.11125" y2="-1.42875" width="0.1524" layer="21"/>
<wire x1="-1.11125" y1="-1.42875" x2="-1.42875" y2="-1.11125" width="0.1524" layer="21" curve="-90"/>
<smd name="P$1" x="-0.635" y="0" dx="0.4064" dy="0.4064" layer="1"/>
<smd name="P$2" x="0.765175" y="0" dx="0.4064" dy="0.4064" layer="1" rot="R270"/>
<polygon width="0.254" layer="29">
<vertex x="-1.089025" y="1.089025"/>
<vertex x="-1.089025" y="-1.089025"/>
<vertex x="0" y="0"/>
</polygon>
<polygon width="0.254" layer="29">
<vertex x="-0.6223" y="1.089025"/>
<vertex x="1.089025" y="1.089025"/>
<vertex x="1.089025" y="-1.089025"/>
<vertex x="-0.6223" y="-1.089025"/>
<vertex x="0.466725" y="0"/>
</polygon>
<polygon width="0.127" layer="31">
<vertex x="-1.089025" y="1.089025"/>
<vertex x="-1.089025" y="-1.089025"/>
<vertex x="0" y="0"/>
</polygon>
<polygon width="0.127" layer="31">
<vertex x="-0.6223" y="1.089025"/>
<vertex x="0.466725" y="0"/>
<vertex x="-0.6223" y="-1.089025"/>
<vertex x="1.089025" y="-1.089025"/>
<vertex x="1.089025" y="1.089025"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="PIC16F630_SIMPLE">
<pin name="A5" x="-12.7" y="7.62" length="middle"/>
<pin name="A4" x="-12.7" y="5.08" length="middle"/>
<pin name="A3" x="-12.7" y="2.54" length="middle"/>
<pin name="C5" x="-12.7" y="-2.54" length="middle"/>
<pin name="C4" x="-12.7" y="-5.08" length="middle"/>
<pin name="C3" x="-12.7" y="-7.62" length="middle"/>
<pin name="A0" x="12.7" y="7.62" length="middle" rot="R180"/>
<pin name="A1" x="12.7" y="5.08" length="middle" rot="R180"/>
<pin name="A2" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="C0" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="C1" x="12.7" y="-5.08" length="middle" rot="R180"/>
<pin name="C2" x="12.7" y="-7.62" length="middle" rot="R180"/>
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
</symbol>
<symbol name="PWR">
<pin name="VCC@1" x="0" y="12.7" length="middle" rot="R270"/>
<pin name="GND" x="0" y="-12.7" length="middle" rot="R90"/>
</symbol>
<symbol name="CAPACITOR">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="MYJUMP">
<wire x1="0.381" y1="0.635" x2="0.381" y2="-0.635" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="-0.381" y1="-0.635" x2="-0.381" y2="0.635" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="2.54" y1="0" x2="1.651" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.651" y2="0" width="0.1524" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PIC16F630_SIMPLE">
<gates>
<gate name="G$1" symbol="PIC16F630_SIMPLE" x="0" y="0"/>
<gate name="G$2" symbol="PWR" x="20.32" y="0"/>
</gates>
<devices>
<device name="" package="PIC16F630">
<connects>
<connect gate="G$1" pin="A0" pad="13"/>
<connect gate="G$1" pin="A1" pad="12"/>
<connect gate="G$1" pin="A2" pad="11"/>
<connect gate="G$1" pin="A3" pad="4"/>
<connect gate="G$1" pin="A4" pad="3"/>
<connect gate="G$1" pin="A5" pad="2"/>
<connect gate="G$1" pin="C0" pad="10"/>
<connect gate="G$1" pin="C1" pad="9"/>
<connect gate="G$1" pin="C2" pad="8"/>
<connect gate="G$1" pin="C3" pad="7"/>
<connect gate="G$1" pin="C4" pad="6"/>
<connect gate="G$1" pin="C5" pad="5"/>
<connect gate="G$2" pin="GND" pad="14"/>
<connect gate="G$2" pin="VCC@1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C0805">
<gates>
<gate name="G$1" symbol="CAPACITOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="Z0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R0805">
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="Z0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MY_JUMPER">
<gates>
<gate name="G$1" symbol="MYJUMP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MYJUMP">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="wirepad">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SMD1,27-2,54">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<smd name="1" x="0" y="0" dx="1.27" dy="2.54" layer="1"/>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-0.8" y="-2.4" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="PAD">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SMD2" prefix="PAD" uservalue="yes">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SMD1,27-2,54">
<connects>
<connect gate="1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="snes_div">
<packages>
<package name="SNESCART_CONN_SPARSE">
<pad name="24" x="-3.6" y="20" drill="1" shape="square"/>
<pad name="25" x="-3.6" y="22.5" drill="1" shape="square"/>
<pad name="5" x="-3.6" y="-27.5" drill="1" shape="square"/>
<pad name="27" x="-3.6" y="27.5" drill="1" shape="square"/>
<pad name="28" x="-3.6" y="35" drill="1" shape="square"/>
<pad name="29" x="-3.6" y="37.5" drill="1" shape="square"/>
<pad name="30" x="-3.6" y="40" drill="1" shape="square"/>
<pad name="4" x="-3.6" y="-35" drill="1" shape="square"/>
<pad name="3" x="-3.6" y="-37.5" drill="1" shape="square"/>
<pad name="50" x="3.6" y="7.5" drill="1" shape="square" rot="R180"/>
<pad name="55" x="3.6" y="20" drill="1" shape="square" rot="R180"/>
<pad name="56" x="3.6" y="22.5" drill="1" shape="square" rot="R180"/>
<pad name="58" x="3.6" y="27.5" drill="1" shape="square" rot="R180"/>
<pad name="36" x="3.6" y="-27.5" drill="1" shape="square" rot="R180"/>
<pad name="34" x="3.6" y="-37.5" drill="1" shape="square" rot="R180"/>
<pad name="59" x="3.6" y="35" drill="1" shape="square" rot="R180"/>
<pad name="60" x="3.6" y="37.5" drill="1" shape="square" rot="R180"/>
<pad name="61" x="3.6" y="40" drill="1" shape="square" rot="R180"/>
<text x="-2.5" y="43.4375" size="1.016" layer="21" font="vector" ratio="12" rot="R270">31</text>
<text x="2.5" y="41.5625" size="1.016" layer="21" font="vector" ratio="12" rot="R90">62</text>
<text x="-2.5" y="35.9375" size="1.016" layer="21" font="vector" ratio="12" rot="R270">28</text>
<text x="2.5" y="34.0625" size="1.016" layer="21" font="vector" ratio="12" rot="R90">59</text>
<text x="-2.5" y="28.4375" size="1.016" layer="21" font="vector" ratio="12" rot="R270">27</text>
<text x="2.5" y="26.5625" size="1.016" layer="21" font="vector" ratio="12" rot="R90">58</text>
<text x="-2.5" y="23.4375" size="1.016" layer="21" font="vector" ratio="12" rot="R270">25</text>
<text x="-2.5" y="10.9375" size="1.016" layer="21" font="vector" ratio="15" rot="R270">20</text>
<text x="-2.5" y="-1.5625" size="1.016" layer="21" font="vector" ratio="12" rot="R270">15</text>
<text x="-2.5" y="-14.0625" size="1.016" layer="21" font="vector" ratio="12" rot="R270">10</text>
<text x="-2.5" y="-26.8875" size="1.016" layer="21" font="vector" ratio="12" rot="R270">5</text>
<text x="-2.5" y="-34.3875" size="1.016" layer="21" font="vector" ratio="12" rot="R270">4</text>
<text x="-2.5" y="-41.8625" size="1.016" layer="21" font="vector" ratio="12" rot="R270">1</text>
<text x="2.5" y="-43.4375" size="1.016" layer="21" font="vector" ratio="12" rot="R90">32</text>
<text x="2.5" y="-35.9375" size="1.016" layer="21" font="vector" ratio="12" rot="R90">35</text>
<text x="2.5" y="-28.4375" size="1.016" layer="21" font="vector" ratio="12" rot="R90">36</text>
<text x="2.5" y="-18.4375" size="1.016" layer="21" font="vector" ratio="12" rot="R90">40</text>
<text x="2.5" y="-5.9375" size="1.016" layer="21" font="vector" ratio="12" rot="R90">45</text>
<text x="2.5" y="6.5625" size="1.016" layer="21" font="vector" ratio="15" rot="R90">50</text>
<text x="2.5" y="19.0625" size="1.016" layer="21" font="vector" ratio="12" rot="R90">55</text>
<text x="-5" y="45" size="1.27" layer="25" font="vector" ratio="10">&gt;NAME</text>
<text x="0.6625" y="1.25" size="1.27" layer="27" font="vector" ratio="10" rot="R90">&gt;VALUE</text>
<wire x1="-4.375" y1="43.593875" x2="4.375" y2="43.593875" width="0.127" layer="21"/>
<wire x1="4.375" y1="-43.593875" x2="-4.375" y2="-43.593875" width="0.127" layer="21"/>
<wire x1="-4.375" y1="43.593875" x2="-4.6875" y2="43.281375" width="0.127" layer="21" curve="90"/>
<wire x1="-4.6875" y1="43.281375" x2="-4.6875" y2="-43.281375" width="0.127" layer="21"/>
<wire x1="-4.6875" y1="-43.281375" x2="-4.375" y2="-43.593875" width="0.127" layer="21" curve="90"/>
<wire x1="4.375" y1="-43.593875" x2="4.6875" y2="-43.281375" width="0.127" layer="21" curve="90"/>
<wire x1="4.6875" y1="-43.281375" x2="4.6875" y2="43.281375" width="0.127" layer="21"/>
<wire x1="4.6875" y1="43.281375" x2="4.375" y2="43.593875" width="0.127" layer="21" curve="90"/>
<hole x="-3.6" y="-42.5" drill="1"/>
<hole x="-3.6" y="-40" drill="1"/>
<hole x="-3.6" y="-25" drill="1"/>
<hole x="-3.6" y="-22.5" drill="1"/>
<hole x="-3.6" y="-20" drill="1"/>
<hole x="-3.6" y="-17.5" drill="1"/>
<hole x="-3.6" y="-15" drill="1"/>
<hole x="-3.6" y="-12.5" drill="1"/>
<hole x="-3.6" y="-10" drill="1"/>
<hole x="-3.6" y="-7.5" drill="1"/>
<hole x="-3.6" y="-5" drill="1"/>
<hole x="-3.6" y="-2.5" drill="1"/>
<hole x="-3.6" y="0" drill="1"/>
<hole x="-3.6" y="2.5" drill="1"/>
<hole x="-3.6" y="5" drill="1"/>
<hole x="-3.6" y="7.5" drill="1"/>
<hole x="-3.6" y="10" drill="1"/>
<hole x="-3.6" y="12.5" drill="1"/>
<hole x="-3.6" y="15" drill="1"/>
<hole x="-3.6" y="17.5" drill="1"/>
<hole x="-3.6" y="25" drill="1"/>
<hole x="-3.6" y="42.5" drill="1"/>
<hole x="3.6" y="42.5" drill="1"/>
<hole x="3.6" y="25" drill="1"/>
<hole x="3.6" y="17.5" drill="1"/>
<hole x="3.6" y="15" drill="1"/>
<hole x="3.6" y="12.5" drill="1"/>
<hole x="3.6" y="10" drill="1"/>
<hole x="3.6" y="5" drill="1"/>
<hole x="3.6" y="2.5" drill="1"/>
<hole x="3.6" y="0" drill="1"/>
<hole x="3.6" y="-2.5" drill="1"/>
<hole x="3.6" y="-5" drill="1"/>
<hole x="3.6" y="-7.5" drill="1"/>
<hole x="3.6" y="-10" drill="1"/>
<hole x="3.6" y="-12.5" drill="1"/>
<hole x="3.6" y="-15" drill="1"/>
<hole x="3.6" y="-17.5" drill="1"/>
<hole x="3.6" y="-20" drill="1"/>
<hole x="3.6" y="-22.5" drill="1"/>
<hole x="3.6" y="-25" drill="1"/>
<hole x="3.6" y="-35" drill="1"/>
<hole x="3.6" y="-40" drill="1"/>
<hole x="3.6" y="-42.5" drill="1"/>
</package>
</packages>
<symbols>
<symbol name="SNESCART_CONN_SPARSE">
<wire x1="-12.7" y1="38.1" x2="-12.7" y2="-45.72" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-45.72" x2="17.78" y2="-45.72" width="0.254" layer="94"/>
<wire x1="17.78" y1="-45.72" x2="17.78" y2="38.1" width="0.254" layer="94"/>
<wire x1="17.78" y1="38.1" x2="-12.7" y2="38.1" width="0.254" layer="94"/>
<text x="-12.7" y="40.64" size="1.778" layer="95">&gt;NAME</text>
<text x="0" y="0" size="1.778" layer="96">&gt;VALUE</text>
<pin name="D4" x="22.86" y="25.4" length="middle" rot="R180"/>
<pin name="PA0" x="22.86" y="12.7" length="middle" rot="R180"/>
<pin name="PA2" x="22.86" y="7.62" length="middle" rot="R180"/>
<pin name="PA3" x="22.86" y="5.08" length="middle" rot="R180"/>
<pin name="PA4" x="22.86" y="2.54" length="middle" rot="R180"/>
<pin name="PA5" x="22.86" y="0" length="middle" rot="R180"/>
<pin name="PA6" x="22.86" y="-2.54" length="middle" rot="R180"/>
<pin name="PA7" x="22.86" y="-5.08" length="middle" rot="R180"/>
<pin name="/PARD" x="22.86" y="-10.16" length="middle" rot="R180"/>
<pin name="CIC_P2" x="22.86" y="-30.48" length="middle" rot="R180"/>
<pin name="CIC_P6" x="22.86" y="-33.02" length="middle" rot="R180"/>
<pin name="CIC_P7" x="22.86" y="-35.56" length="middle" rot="R180"/>
<pin name="PA1" x="22.86" y="10.16" length="middle" rot="R180"/>
<pin name="CIC_P1" x="22.86" y="-27.94" length="middle" rot="R180"/>
</symbol>
<symbol name="PWR">
<pin name="VCC" x="0" y="12.7" length="middle" rot="R270"/>
<pin name="GND" x="0" y="-12.7" length="middle" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SNESCART_CONN_SPARSE">
<gates>
<gate name="G$1" symbol="SNESCART_CONN_SPARSE" x="0" y="0"/>
<gate name="G$2" symbol="PWR" x="-20.32" y="0"/>
<gate name="G$3" symbol="PWR" x="-27.94" y="0"/>
</gates>
<devices>
<device name="" package="SNESCART_CONN_SPARSE">
<connects>
<connect gate="G$1" pin="/PARD" pad="4"/>
<connect gate="G$1" pin="CIC_P1" pad="24"/>
<connect gate="G$1" pin="CIC_P2" pad="55"/>
<connect gate="G$1" pin="CIC_P6" pad="56"/>
<connect gate="G$1" pin="CIC_P7" pad="25"/>
<connect gate="G$1" pin="D4" pad="50"/>
<connect gate="G$1" pin="PA0" pad="28"/>
<connect gate="G$1" pin="PA1" pad="59"/>
<connect gate="G$1" pin="PA2" pad="29"/>
<connect gate="G$1" pin="PA3" pad="60"/>
<connect gate="G$1" pin="PA4" pad="30"/>
<connect gate="G$1" pin="PA5" pad="61"/>
<connect gate="G$1" pin="PA6" pad="3"/>
<connect gate="G$1" pin="PA7" pad="34"/>
<connect gate="G$2" pin="GND" pad="5"/>
<connect gate="G$2" pin="VCC" pad="27"/>
<connect gate="G$3" pin="GND" pad="36"/>
<connect gate="G$3" pin="VCC" pad="58"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="74HC(T)125" library="74xx-eu" deviceset="74*125" device="D" technology="HC" value="74HC125D"/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="R1" library="snescart" deviceset="R0805" device="" value="R10k"/>
<part name="R2" library="snescart" deviceset="R0805" device="" value="R220"/>
<part name="R3" library="snescart" deviceset="R0805" device="" value="R220"/>
<part name="C1" library="snescart" deviceset="C0805" device="" value="C100n"/>
<part name="VCC5" library="supply1" deviceset="+5V" device="" value=""/>
<part name="VCC" library="supply1" deviceset="+5V" device="" value=""/>
<part name="U$2" library="snescart" deviceset="PIC16F630_SIMPLE" device=""/>
<part name="U$3" library="snescart" deviceset="PIC16F630_SIMPLE" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="U$4" library="snescart" deviceset="MY_JUMPER" device=""/>
<part name="U$5" library="snescart" deviceset="MY_JUMPER" device=""/>
<part name="C2" library="snescart" deviceset="C0805" device="" value="C100n"/>
<part name="C5" library="snescart" deviceset="C0805" device="" value="C100n"/>
<part name="C6" library="snescart" deviceset="C0805" device="" value="C100n"/>
<part name="C7" library="snescart" deviceset="C0805" device="" value="C100n"/>
<part name="L50" library="wirepad" deviceset="SMD2" device=""/>
<part name="L60" library="wirepad" deviceset="SMD2" device=""/>
<part name="RES-IN" library="wirepad" deviceset="SMD2" device=""/>
<part name="RES-OUT" library="wirepad" deviceset="SMD2" device=""/>
<part name="CTRL4" library="wirepad" deviceset="SMD2" device=""/>
<part name="CTRL3" library="wirepad" deviceset="SMD2" device=""/>
<part name="CTRL2" library="wirepad" deviceset="SMD2" device=""/>
<part name="MODE" library="wirepad" deviceset="SMD2" device=""/>
<part name="U$6" library="snes_div" deviceset="SNESCART_CONN_SPARSE" device=""/>
<part name="CTRL1" library="wirepad" deviceset="SMD2" device=""/>
<part name="U$1" library="snescart" deviceset="MY_JUMPER" device=""/>
<part name="IC1" library="74xx-eu" deviceset="74*27" device="D" technology="HC"/>
<part name="IC2" library="74xx-eu" deviceset="74*30" device="D" technology="HC"/>
<part name="MODE1" library="wirepad" deviceset="SMD2" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="12.7" y="83.82" size="1.778" layer="91">D4</text>
</plain>
<instances>
<instance part="74HC(T)125" gate="A" x="15.24" y="99.06" rot="R180"/>
<instance part="74HC(T)125" gate="B" x="15.24" y="119.38" rot="R180"/>
<instance part="74HC(T)125" gate="C" x="48.26" y="99.06" rot="R180"/>
<instance part="74HC(T)125" gate="D" x="48.26" y="119.38" rot="R180"/>
<instance part="GND2" gate="1" x="124.46" y="-17.78"/>
<instance part="R1" gate="G$1" x="-10.16" y="-17.78" rot="R90"/>
<instance part="R2" gate="G$1" x="-81.28" y="-27.94" rot="R180"/>
<instance part="R3" gate="G$1" x="-81.28" y="-35.56" rot="R180"/>
<instance part="C1" gate="G$1" x="99.06" y="5.08"/>
<instance part="VCC5" gate="1" x="99.06" y="17.78"/>
<instance part="VCC" gate="1" x="12.7" y="-35.56" rot="R180"/>
<instance part="U$2" gate="G$1" x="0" y="0"/>
<instance part="U$3" gate="G$1" x="-53.34" y="-25.4"/>
<instance part="GND1" gate="1" x="-15.24" y="-35.56"/>
<instance part="U$2" gate="G$2" x="88.9" y="0"/>
<instance part="U$3" gate="G$2" x="91.44" y="0"/>
<instance part="U$4" gate="G$1" x="12.7" y="-27.94" rot="R90"/>
<instance part="U$5" gate="G$1" x="2.54" y="-27.94" rot="R90"/>
<instance part="C2" gate="G$1" x="104.14" y="5.08"/>
<instance part="C5" gate="G$1" x="68.58" y="5.08"/>
<instance part="C6" gate="G$1" x="63.5" y="5.08"/>
<instance part="C7" gate="G$1" x="58.42" y="5.08"/>
<instance part="L50" gate="1" x="-88.9" y="-27.94"/>
<instance part="L60" gate="1" x="-88.9" y="-35.56"/>
<instance part="RES-IN" gate="1" x="33.02" y="7.62" rot="R180"/>
<instance part="RES-OUT" gate="1" x="33.02" y="2.54" rot="R180"/>
<instance part="CTRL4" gate="1" x="-27.94" y="-12.7" rot="R180"/>
<instance part="CTRL3" gate="1" x="-27.94" y="-17.78" rot="R180"/>
<instance part="CTRL2" gate="1" x="-27.94" y="-22.86" rot="R180"/>
<instance part="MODE" gate="1" x="-73.66" y="-20.32"/>
<instance part="U$6" gate="G$1" x="-111.76" y="48.26"/>
<instance part="U$6" gate="G$2" x="86.36" y="0"/>
<instance part="U$6" gate="G$3" x="83.82" y="0"/>
<instance part="CTRL1" gate="1" x="-38.1" y="7.62"/>
<instance part="U$1" gate="G$1" x="-45.72" y="5.08" rot="R270"/>
<instance part="IC1" gate="C" x="55.88" y="-43.18"/>
<instance part="IC1" gate="B" x="-5.08" y="43.18"/>
<instance part="IC1" gate="A" x="132.08" y="2.54"/>
<instance part="IC1" gate="P" x="76.2" y="5.08"/>
<instance part="IC2" gate="A" x="53.34" y="53.34"/>
<instance part="IC2" gate="P" x="78.74" y="5.08"/>
<instance part="74HC(T)125" gate="P" x="81.28" y="5.08"/>
<instance part="MODE1" gate="1" x="-71.12" y="-17.78" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$42" class="0">
<segment>
<wire x1="5.08" y1="83.82" x2="38.1" y2="83.82" width="0.1524" layer="91"/>
<pinref part="74HC(T)125" gate="C" pin="O"/>
<wire x1="38.1" y1="99.06" x2="38.1" y2="83.82" width="0.1524" layer="91"/>
<pinref part="74HC(T)125" gate="D" pin="O"/>
<wire x1="38.1" y1="119.38" x2="38.1" y2="99.06" width="0.1524" layer="91"/>
<junction x="38.1" y="99.06"/>
<pinref part="74HC(T)125" gate="A" pin="O"/>
<wire x1="5.08" y1="99.06" x2="5.08" y2="83.82" width="0.1524" layer="91"/>
<pinref part="74HC(T)125" gate="B" pin="O"/>
<wire x1="5.08" y1="119.38" x2="5.08" y2="99.06" width="0.1524" layer="91"/>
<junction x="5.08" y="99.06"/>
<junction x="5.08" y="83.82"/>
<wire x1="-30.48" y1="83.82" x2="5.08" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="73.66" x2="-30.48" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="D4"/>
<wire x1="-88.9" y1="73.66" x2="-30.48" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="-15.24" y1="-22.86" x2="-15.24" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="-10.16" y1="-22.86" x2="-15.24" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-15.24" y="-22.86"/>
<wire x1="-15.24" y1="2.54" x2="-15.24" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="A3"/>
<wire x1="-12.7" y1="2.54" x2="-15.24" y2="2.54" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="1"/>
<wire x1="-15.24" y1="-33.02" x2="2.54" y2="-33.02" width="0.1524" layer="91"/>
<junction x="-15.24" y="-33.02"/>
</segment>
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="124.46" y1="-15.24" x2="124.46" y2="-5.08" width="0.1524" layer="91"/>
<junction x="124.46" y="-5.08"/>
<wire x1="124.46" y1="5.08" x2="124.46" y2="2.54" width="0.1524" layer="91"/>
<wire x1="124.46" y1="2.54" x2="124.46" y2="0" width="0.1524" layer="91"/>
<wire x1="124.46" y1="0" x2="124.46" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="83.82" y1="-12.7" x2="83.82" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-15.24" x2="86.36" y2="-15.24" width="0.1524" layer="91"/>
<junction x="124.46" y="-15.24"/>
<wire x1="86.36" y1="-15.24" x2="88.9" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-15.24" x2="91.44" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-15.24" x2="124.46" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-12.7" x2="86.36" y2="-15.24" width="0.1524" layer="91"/>
<junction x="86.36" y="-15.24"/>
<wire x1="76.2" y1="-2.54" x2="76.2" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-5.08" x2="78.74" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-2.54" x2="78.74" y2="-5.08" width="0.1524" layer="91"/>
<junction x="78.74" y="-5.08"/>
<wire x1="78.74" y1="-5.08" x2="81.28" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-2.54" x2="81.28" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-5.08" x2="81.28" y2="-15.24" width="0.1524" layer="91"/>
<junction x="81.28" y="-5.08"/>
<wire x1="81.28" y1="-15.24" x2="83.82" y2="-15.24" width="0.1524" layer="91"/>
<junction x="83.82" y="-15.24"/>
<pinref part="U$3" gate="G$2" pin="GND"/>
<wire x1="91.44" y1="-12.7" x2="91.44" y2="-15.24" width="0.1524" layer="91"/>
<junction x="91.44" y="-15.24"/>
<pinref part="U$2" gate="G$2" pin="GND"/>
<wire x1="88.9" y1="-12.7" x2="88.9" y2="-15.24" width="0.1524" layer="91"/>
<junction x="88.9" y="-15.24"/>
<wire x1="124.46" y1="-5.08" x2="104.14" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-5.08" x2="99.06" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-5.08" x2="99.06" y2="0" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="2"/>
<wire x1="58.42" y1="0" x2="58.42" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-5.08" x2="63.5" y2="-5.08" width="0.1524" layer="91"/>
<junction x="76.2" y="-5.08"/>
<pinref part="C5" gate="G$1" pin="2"/>
<wire x1="63.5" y1="-5.08" x2="68.58" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-5.08" x2="76.2" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="68.58" y1="0" x2="68.58" y2="-5.08" width="0.1524" layer="91"/>
<junction x="68.58" y="-5.08"/>
<pinref part="C6" gate="G$1" pin="2"/>
<wire x1="63.5" y1="0" x2="63.5" y2="-5.08" width="0.1524" layer="91"/>
<junction x="63.5" y="-5.08"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="104.14" y1="0" x2="104.14" y2="-5.08" width="0.1524" layer="91"/>
<junction x="104.14" y="-5.08"/>
<pinref part="U$6" gate="G$3" pin="GND"/>
<pinref part="U$6" gate="G$2" pin="GND"/>
<pinref part="IC1" gate="A" pin="I0"/>
<pinref part="IC1" gate="A" pin="I1"/>
<junction x="124.46" y="2.54"/>
<pinref part="IC1" gate="A" pin="I2"/>
<junction x="124.46" y="0"/>
<pinref part="IC1" gate="C" pin="I1"/>
<wire x1="81.28" y1="-15.24" x2="48.26" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-15.24" x2="48.26" y2="-40.64" width="0.1524" layer="91"/>
<junction x="81.28" y="-15.24"/>
<pinref part="IC1" gate="C" pin="I0"/>
<wire x1="48.26" y1="-40.64" x2="48.26" y2="-43.18" width="0.1524" layer="91"/>
<junction x="48.26" y="-40.64"/>
<pinref part="IC1" gate="P" pin="GND"/>
<pinref part="IC2" gate="P" pin="GND"/>
<pinref part="74HC(T)125" gate="P" pin="GND"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="VCC5" gate="1" pin="+5V"/>
<wire x1="99.06" y1="15.24" x2="99.06" y2="7.62" width="0.1524" layer="91"/>
<wire x1="86.36" y1="12.7" x2="86.36" y2="15.24" width="0.1524" layer="91"/>
<wire x1="86.36" y1="15.24" x2="88.9" y2="15.24" width="0.1524" layer="91"/>
<junction x="99.06" y="15.24"/>
<pinref part="U$2" gate="G$2" pin="VCC@1"/>
<wire x1="88.9" y1="15.24" x2="91.44" y2="15.24" width="0.1524" layer="91"/>
<wire x1="91.44" y1="15.24" x2="99.06" y2="15.24" width="0.1524" layer="91"/>
<wire x1="88.9" y1="12.7" x2="88.9" y2="15.24" width="0.1524" layer="91"/>
<junction x="88.9" y="15.24"/>
<pinref part="U$3" gate="G$2" pin="VCC@1"/>
<wire x1="91.44" y1="12.7" x2="91.44" y2="15.24" width="0.1524" layer="91"/>
<junction x="91.44" y="15.24"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="104.14" y1="15.24" x2="99.06" y2="15.24" width="0.1524" layer="91"/>
<wire x1="104.14" y1="15.24" x2="104.14" y2="7.62" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$2" pin="VCC"/>
</segment>
<segment>
<pinref part="VCC" gate="1" pin="+5V"/>
<pinref part="U$4" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="74HC(T)125" gate="B" pin="OE"/>
<wire x1="30.48" y1="91.44" x2="30.48" y2="111.76" width="0.1524" layer="91"/>
<wire x1="30.48" y1="111.76" x2="15.24" y2="111.76" width="0.1524" layer="91"/>
<pinref part="74HC(T)125" gate="D" pin="OE"/>
<wire x1="30.48" y1="111.76" x2="48.26" y2="111.76" width="0.1524" layer="91"/>
<junction x="30.48" y="111.76"/>
<pinref part="74HC(T)125" gate="C" pin="OE"/>
<wire x1="48.26" y1="91.44" x2="30.48" y2="91.44" width="0.1524" layer="91"/>
<junction x="30.48" y="91.44"/>
<pinref part="74HC(T)125" gate="A" pin="OE"/>
<wire x1="15.24" y1="91.44" x2="30.48" y2="91.44" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="O"/>
<wire x1="60.96" y1="53.34" x2="63.5" y2="53.34" width="0.1524" layer="91"/>
<wire x1="63.5" y1="53.34" x2="63.5" y2="76.2" width="0.1524" layer="91"/>
<wire x1="63.5" y1="76.2" x2="30.48" y2="76.2" width="0.1524" layer="91"/>
<wire x1="30.48" y1="76.2" x2="30.48" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="UIGR" class="0">
<segment>
<pinref part="74HC(T)125" gate="C" pin="I"/>
<pinref part="74HC(T)125" gate="D" pin="I"/>
<wire x1="58.42" y1="99.06" x2="58.42" y2="106.68" width="0.1524" layer="91"/>
<wire x1="58.42" y1="106.68" x2="58.42" y2="119.38" width="0.1524" layer="91"/>
<wire x1="58.42" y1="106.68" x2="25.4" y2="106.68" width="0.1524" layer="91"/>
<junction x="58.42" y="106.68"/>
<pinref part="74HC(T)125" gate="B" pin="I"/>
<wire x1="25.4" y1="106.68" x2="25.4" y2="119.38" width="0.1524" layer="91"/>
<pinref part="74HC(T)125" gate="A" pin="I"/>
<wire x1="25.4" y1="106.68" x2="25.4" y2="99.06" width="0.1524" layer="91"/>
<junction x="25.4" y="106.68"/>
<wire x1="58.42" y1="106.68" x2="83.82" y2="106.68" width="0.1524" layer="91"/>
<wire x1="83.82" y1="106.68" x2="83.82" y2="25.4" width="0.1524" layer="91"/>
<wire x1="83.82" y1="25.4" x2="-17.78" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="25.4" x2="-17.78" y2="5.08" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="A4"/>
<wire x1="-17.78" y1="5.08" x2="-12.7" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="5.08" x2="-25.4" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="5.08" x2="-25.4" y2="-5.08" width="0.1524" layer="91"/>
<junction x="-17.78" y="5.08"/>
<wire x1="-25.4" y1="-5.08" x2="-78.74" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="-5.08" x2="-78.74" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="A3"/>
<wire x1="-78.74" y1="-22.86" x2="-66.04" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="A4"/>
<wire x1="-66.04" y1="-20.32" x2="-71.12" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="-20.32" x2="-71.12" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-45.72" x2="-71.12" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="MODE" gate="1" pin="P"/>
<junction x="-71.12" y="-20.32"/>
<pinref part="IC1" gate="C" pin="I2"/>
<pinref part="MODE1" gate="1" pin="P"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="/PARD"/>
<wire x1="-88.9" y1="38.1" x2="-15.24" y2="38.1" width="0.1524" layer="91"/>
<pinref part="IC1" gate="B" pin="I0"/>
<wire x1="-12.7" y1="45.72" x2="-15.24" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="45.72" x2="-15.24" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC_2" class="0">
<segment>
<wire x1="78.74" y1="12.7" x2="78.74" y2="15.24" width="0.1524" layer="91"/>
<junction x="78.74" y="15.24"/>
<wire x1="78.74" y1="15.24" x2="81.28" y2="15.24" width="0.1524" layer="91"/>
<wire x1="81.28" y1="15.24" x2="83.82" y2="15.24" width="0.1524" layer="91"/>
<wire x1="83.82" y1="15.24" x2="83.82" y2="12.7" width="0.1524" layer="91"/>
<wire x1="58.42" y1="15.24" x2="63.5" y2="15.24" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="63.5" y1="15.24" x2="68.58" y2="15.24" width="0.1524" layer="91"/>
<wire x1="68.58" y1="15.24" x2="76.2" y2="15.24" width="0.1524" layer="91"/>
<wire x1="76.2" y1="15.24" x2="78.74" y2="15.24" width="0.1524" layer="91"/>
<wire x1="68.58" y1="7.62" x2="68.58" y2="15.24" width="0.1524" layer="91"/>
<junction x="68.58" y="15.24"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="63.5" y1="15.24" x2="63.5" y2="7.62" width="0.1524" layer="91"/>
<junction x="63.5" y="15.24"/>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="58.42" y1="15.24" x2="58.42" y2="7.62" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$3" pin="VCC"/>
<pinref part="IC1" gate="P" pin="VCC"/>
<wire x1="76.2" y1="12.7" x2="76.2" y2="15.24" width="0.1524" layer="91"/>
<junction x="76.2" y="15.24"/>
<pinref part="IC2" gate="P" pin="VCC"/>
<pinref part="74HC(T)125" gate="P" pin="VCC"/>
<wire x1="81.28" y1="12.7" x2="81.28" y2="15.24" width="0.1524" layer="91"/>
<junction x="81.28" y="15.24"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="A5"/>
<pinref part="CTRL1" gate="1" pin="P"/>
<wire x1="-12.7" y1="7.62" x2="-33.02" y2="7.62" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="2"/>
<wire x1="-33.02" y1="7.62" x2="-35.56" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="0" x2="-45.72" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-2.54" x2="-33.02" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-2.54" x2="-33.02" y2="7.62" width="0.1524" layer="91"/>
<junction x="-33.02" y="7.62"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="C0"/>
<wire x1="12.7" y1="-2.54" x2="17.78" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-2.54" x2="17.78" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="17.78" x2="17.78" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="CIC_P2"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="C1"/>
<wire x1="12.7" y1="-5.08" x2="20.32" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="20.32" x2="20.32" y2="20.32" width="0.1524" layer="91"/>
<wire x1="20.32" y1="20.32" x2="20.32" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="CIC_P1"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="C2"/>
<wire x1="15.24" y1="-7.62" x2="12.7" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-7.62" x2="15.24" y2="12.7" width="0.1524" layer="91"/>
<wire x1="15.24" y1="12.7" x2="-88.9" y2="12.7" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="CIC_P7"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="A2"/>
<wire x1="12.7" y1="2.54" x2="30.48" y2="2.54" width="0.1524" layer="91"/>
<pinref part="RES-OUT" gate="1" pin="P"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="A0"/>
<wire x1="30.48" y1="7.62" x2="22.86" y2="7.62" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="A5"/>
<wire x1="22.86" y1="7.62" x2="12.7" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-17.78" x2="-68.58" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-17.78" x2="-68.58" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-10.16" x2="-10.16" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="-10.16" x2="-10.16" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="-12.7" x2="22.86" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-12.7" x2="22.86" y2="7.62" width="0.1524" layer="91"/>
<junction x="22.86" y="7.62"/>
<pinref part="R1" gate="G$1" pin="2"/>
<junction x="-10.16" y="-12.7"/>
<pinref part="RES-IN" gate="1" pin="P"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="C5"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="-66.04" y1="-27.94" x2="-76.2" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="-76.2" y1="-35.56" x2="-73.66" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="-35.56" x2="-73.66" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="C4"/>
<wire x1="-73.66" y1="-30.48" x2="-66.04" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="C3"/>
<wire x1="-68.58" y1="-40.64" x2="40.64" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-40.64" x2="40.64" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-33.02" x2="-68.58" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-33.02" x2="-68.58" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="I7"/>
<wire x1="45.72" y1="43.18" x2="40.64" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="C0"/>
<wire x1="-40.64" y1="-27.94" x2="-22.86" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="-27.94" x2="-22.86" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="C5"/>
<wire x1="-22.86" y1="-2.54" x2="-12.7" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="C4"/>
<wire x1="-12.7" y1="-5.08" x2="-20.32" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-5.08" x2="-20.32" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-30.48" x2="-40.64" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="C1"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="C2"/>
<wire x1="-40.64" y1="-33.02" x2="-17.78" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="-33.02" x2="-17.78" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="C3"/>
<wire x1="-17.78" y1="-17.78" x2="-17.78" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="-7.62" x2="-12.7" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-17.78" x2="7.62" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="-17.78" x2="7.62" y2="-17.78" width="0.1524" layer="91"/>
<junction x="-17.78" y="-17.78"/>
<pinref part="U$4" gate="G$1" pin="2"/>
<wire x1="7.62" y1="-22.86" x2="12.7" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="2"/>
<wire x1="2.54" y1="-22.86" x2="7.62" y2="-22.86" width="0.1524" layer="91"/>
<junction x="7.62" y="-22.86"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="A2"/>
<wire x1="-40.64" y1="-22.86" x2="-30.48" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="CTRL2" gate="1" pin="P"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<wire x1="-30.48" y1="-17.78" x2="-35.56" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="-17.78" x2="-35.56" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="A1"/>
<wire x1="-35.56" y1="-20.32" x2="-40.64" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="CTRL3" gate="1" pin="P"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="A0"/>
<wire x1="-40.64" y1="-17.78" x2="-38.1" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-17.78" x2="-38.1" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-12.7" x2="-30.48" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="CTRL4" gate="1" pin="P"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="L50" gate="1" pin="P"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="L60" gate="1" pin="P"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="CIC_P6"/>
<wire x1="-45.72" y1="15.24" x2="-88.9" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="1"/>
<wire x1="-45.72" y1="10.16" x2="-45.72" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="PA0"/>
<wire x1="-33.02" y1="60.96" x2="-88.9" y2="60.96" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="I5"/>
<wire x1="45.72" y1="48.26" x2="-33.02" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="48.26" x2="-33.02" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="PA1"/>
<wire x1="-27.94" y1="58.42" x2="-88.9" y2="58.42" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="I0"/>
<wire x1="45.72" y1="63.5" x2="-27.94" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="63.5" x2="-27.94" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="PA2"/>
<wire x1="-88.9" y1="55.88" x2="-10.16" y2="55.88" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="I4"/>
<wire x1="45.72" y1="50.8" x2="-10.16" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="50.8" x2="-10.16" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="PA3"/>
<wire x1="-25.4" y1="53.34" x2="-88.9" y2="53.34" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="I1"/>
<wire x1="45.72" y1="60.96" x2="-25.4" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="60.96" x2="-25.4" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="PA6"/>
<wire x1="-20.32" y1="43.18" x2="-20.32" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="45.72" x2="-88.9" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC1" gate="B" pin="I1"/>
<wire x1="-12.7" y1="43.18" x2="-20.32" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="PA7"/>
<wire x1="-88.9" y1="43.18" x2="-22.86" y2="43.18" width="0.1524" layer="91"/>
<pinref part="IC1" gate="B" pin="I2"/>
<wire x1="-12.7" y1="40.64" x2="-22.86" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="40.64" x2="-22.86" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="PA4"/>
<wire x1="-88.9" y1="50.8" x2="-25.4" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="50.8" x2="-25.4" y2="55.88" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="I3"/>
<wire x1="45.72" y1="55.88" x2="-25.4" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="PA5"/>
<wire x1="-88.9" y1="48.26" x2="-20.32" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="48.26" x2="-20.32" y2="58.42" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="I2"/>
<wire x1="45.72" y1="58.42" x2="-20.32" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="2.54" y1="43.18" x2="10.16" y2="43.18" width="0.1524" layer="91"/>
<wire x1="10.16" y1="43.18" x2="10.16" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="I6"/>
<wire x1="10.16" y1="45.72" x2="45.72" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC1" gate="B" pin="O"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
