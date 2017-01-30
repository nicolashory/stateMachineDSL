<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ee7059f0-5334-4193-b87b-3b710f3975bb(ArduinoML.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="5edee0cf-46e1-49f9-971e-6b9e2e5cae16" name="ArduinoML" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="-1" />
  </languages>
  <imports>
    <import index="4ucp" ref="r:ee7059f0-5334-4193-b87b-3b710f3975bb(ArduinoML.sandbox)" />
  </imports>
  <registry>
    <language id="5edee0cf-46e1-49f9-971e-6b9e2e5cae16" name="ArduinoML">
      <concept id="3943734932618432583" name="ArduinoML.structure.LCD" flags="ng" index="3PJUp1">
        <property id="4197875816661504054" name="bus" index="1_3wBA" />
      </concept>
      <concept id="8218746718699866923" name="ArduinoML.structure.Actuator" flags="ng" index="3T3p6N" />
      <concept id="8218746718699866924" name="ArduinoML.structure.Brick" flags="ng" index="3T3p6O">
        <property id="8218746718699890346" name="pin" index="3T3nKM" />
      </concept>
      <concept id="8218746718699866925" name="ArduinoML.structure.App" flags="ng" index="3T3p6P">
        <child id="4197875816661629015" name="lcd" index="1_4667" />
        <child id="8218746718699890354" name="bricks" index="3T3nKE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3T3p6P" id="78eQDyb1OBR">
    <property role="TrG5h" value="MachineEtat" />
    <node concept="3T3p6N" id="3kxaSLuyMfL" role="3T3nKE">
      <property role="TrG5h" value="red_led" />
      <property role="3T3nKM" value="11" />
    </node>
    <node concept="3T3p6N" id="3kxaSLuyMfR" role="3T3nKE">
      <property role="TrG5h" value="blabla" />
      <property role="3T3nKM" value="10" />
    </node>
    <node concept="3PJUp1" id="2ZmAQRvHINb" role="1_4667">
      <property role="1_3wBA" value="2, 3, 4, 5, 6, 7, 8" />
    </node>
  </node>
</model>

