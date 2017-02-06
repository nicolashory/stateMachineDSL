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
      <concept id="6722254920715924158" name="ArduinoML.structure.OutputSensor" flags="ng" index="2zFGQ5">
        <property id="2597262229270052296" name="status" index="2K9mBO" />
        <reference id="2597262229269740835" name="sensor" index="2K8y$v" />
      </concept>
      <concept id="6722254920715924157" name="ArduinoML.structure.OutputSerial" flags="ng" index="2zFGQ6">
        <property id="2597262229269916694" name="message" index="2K9RwE" />
      </concept>
      <concept id="2597262229269916655" name="ArduinoML.structure.ActionActuator" flags="ng" index="2K9RZj">
        <property id="2597262229269916685" name="status" index="2K9RwL" />
        <reference id="2597262229269916683" name="actuator" index="2K9RwR" />
      </concept>
      <concept id="2597262229269916627" name="ArduinoML.structure.ActionLCD" flags="ng" index="2K9RZJ">
        <property id="2597262229269916691" name="message" index="2K9RwJ" />
        <reference id="2597262229269916689" name="lcd" index="2K9RwH" />
      </concept>
      <concept id="6483884641801180718" name="ArduinoML.structure.State" flags="ng" index="3uOfik">
        <child id="6483884641801182880" name="transitions" index="3uOfKq" />
      </concept>
      <concept id="6483884641801182720" name="ArduinoML.structure.Transition" flags="ng" index="3uOfMU">
        <reference id="6483884641801253235" name="target" index="3uPXf9" />
        <child id="6722254920715924164" name="output" index="2zFGRZ" />
        <child id="5466885776165142632" name="actions" index="10aWve" />
      </concept>
      <concept id="3943734932618432583" name="ArduinoML.structure.LCD" flags="ng" index="3PJUp1">
        <property id="4197875816661504054" name="bus" index="1_3wBA" />
      </concept>
      <concept id="8218746718699842484" name="ArduinoML.structure.Sensor" flags="ng" index="3T334G" />
      <concept id="8218746718699866923" name="ArduinoML.structure.Actuator" flags="ng" index="3T3p6N" />
      <concept id="8218746718699866924" name="ArduinoML.structure.Brick" flags="ng" index="3T3p6O">
        <property id="8218746718699890346" name="pin" index="3T3nKM" />
      </concept>
      <concept id="8218746718699866925" name="ArduinoML.structure.App" flags="ng" index="3T3p6P">
        <child id="6483884641801182883" name="states" index="3uOfKp" />
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
    <node concept="3T334G" id="2gbl3MkbiYj" role="3T3nKE">
      <property role="TrG5h" value="button" />
      <property role="3T3nKM" value="12" />
    </node>
    <node concept="3PJUp1" id="2ZmAQRvHINb" role="1_4667">
      <property role="1_3wBA" value="2, 3, 4, 5, 6, 7, 8" />
    </node>
    <node concept="3uOfik" id="2gbl3Mkbn4F" role="3uOfKp">
      <property role="TrG5h" value="state1" />
      <node concept="3uOfMU" id="2gbl3Mkbn4G" role="3uOfKq">
        <property role="TrG5h" value="transition1" />
        <ref role="3uPXf9" node="2gbl3Mkd3Yg" resolve="state2" />
        <node concept="2K9RZJ" id="2gbl3Mkcvb0" role="10aWve">
          <property role="2K9RwJ" value="coucou" />
          <ref role="2K9RwH" node="2ZmAQRvHINb" />
        </node>
        <node concept="2zFGQ6" id="1R4EZf6snGs" role="2zFGRZ">
          <property role="2K9RwE" value="bonjour" />
        </node>
      </node>
    </node>
    <node concept="3uOfik" id="2gbl3Mkd3Yg" role="3uOfKp">
      <property role="TrG5h" value="state2" />
      <node concept="3uOfMU" id="2gbl3Mkd3Yh" role="3uOfKq">
        <property role="TrG5h" value="transition1" />
        <ref role="3uPXf9" node="2gbl3Mkbn4F" resolve="state1" />
        <node concept="2zFGQ5" id="2gbl3Mkd3Yq" role="2zFGRZ">
          <property role="2K9mBO" value="true" />
          <ref role="2K8y$v" node="2gbl3MkbiYj" resolve="button" />
        </node>
        <node concept="2K9RZj" id="2gbl3Mkd3Yt" role="10aWve">
          <property role="2K9RwL" value="false" />
          <ref role="2K9RwR" node="3kxaSLuyMfL" resolve="red_led" />
        </node>
      </node>
      <node concept="3uOfMU" id="2gbl3Mkd8Cd" role="3uOfKq">
        <property role="TrG5h" value="transition2" />
        <ref role="3uPXf9" node="2gbl3Mkbn4F" resolve="state1" />
        <node concept="2K9RZJ" id="2gbl3Mkd8Cn" role="10aWve">
          <property role="2K9RwJ" value="transition faite" />
          <ref role="2K9RwH" node="2ZmAQRvHINb" />
        </node>
        <node concept="2K9RZj" id="2gbl3Mkd8Cs" role="10aWve">
          <property role="2K9RwL" value="false" />
          <ref role="2K9RwR" node="3kxaSLuyMfL" resolve="red_led" />
        </node>
        <node concept="2zFGQ6" id="1R4EZf6snGW" role="2zFGRZ">
          <property role="2K9RwE" value="salut" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3T3p6P" id="1R4EZf6sssy">
    <property role="TrG5h" value="MissileLauncher" />
    <node concept="3PJUp1" id="1R4EZf6sssY" role="1_4667">
      <property role="1_3wBA" value="2, 3, 4, 5, 6, 7, 8" />
    </node>
    <node concept="3T334G" id="1R4EZf6sst0" role="3T3nKE">
      <property role="TrG5h" value="redButton" />
      <property role="3T3nKM" value="1" />
    </node>
    <node concept="3T3p6N" id="1R4EZf6sst5" role="3T3nKE">
      <property role="TrG5h" value="redLight" />
      <property role="3T3nKM" value="9" />
    </node>
  </node>
</model>

