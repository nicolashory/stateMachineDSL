<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6106a2a5-7942-4cdf-b370-4f8fc59179d4(ArduinoML.sandbox2)">
  <persistence version="9" />
  <languages>
    <use id="5edee0cf-46e1-49f9-971e-6b9e2e5cae16" name="ArduinoML" version="0" />
  </languages>
  <imports />
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
        <reference id="568827680999327737" name="initial_state" index="vIMoU" />
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
  <node concept="3T3p6P" id="5z8jtNmnXT7">
    <property role="TrG5h" value="MissileLauncher" />
    <ref role="vIMoU" node="5z8jtNmnYj3" resolve="state1" />
    <node concept="3T3p6N" id="6xOriGl$qdo" role="3T3nKE">
      <property role="TrG5h" value="redlight" />
      <property role="3T3nKM" value="12" />
    </node>
    <node concept="3uOfik" id="5z8jtNmnYj3" role="3uOfKp">
      <property role="TrG5h" value="state1" />
      <node concept="3uOfMU" id="5z8jtNmnYj4" role="3uOfKq">
        <property role="TrG5h" value="trans1" />
        <ref role="3uPXf9" node="5z8jtNmnYjl" resolve="state2" />
        <node concept="2K9RZJ" id="6xOriGl$wf7" role="10aWve">
          <property role="2K9RwJ" value="procedure enclenchee" />
        </node>
        <node concept="2K9RZj" id="6xOriGl_fFZ" role="10aWve">
          <property role="2K9RwL" value="true" />
          <ref role="2K9RwR" node="6xOriGl$qdo" resolve="redlight" />
        </node>
        <node concept="2zFGQ6" id="5z8jtNmnYj9" role="2zFGRZ">
          <property role="2K9RwE" value="missile procedure start" />
        </node>
        <node concept="2K9RZj" id="6xOriGl$ear" role="10aWve">
          <property role="2K9RwL" value="false" />
          <ref role="2K9RwR" node="5z8jtNmnYiF" resolve="greenLight" />
        </node>
      </node>
    </node>
    <node concept="3uOfik" id="5z8jtNmnYjl" role="3uOfKp">
      <property role="TrG5h" value="state2" />
      <node concept="3uOfMU" id="5z8jtNmnYjm" role="3uOfKq">
        <property role="TrG5h" value="trans2" />
        <ref role="3uPXf9" node="5z8jtNmnYj3" resolve="state1" />
        <node concept="2K9RZj" id="6xOriGl_xLs" role="10aWve">
          <property role="2K9RwL" value="true" />
          <ref role="2K9RwR" node="5z8jtNmnYiF" resolve="greenLight" />
        </node>
        <node concept="2K9RZj" id="6xOriGl_xL$" role="10aWve">
          <property role="2K9RwL" value="false" />
          <ref role="2K9RwR" node="6xOriGl$qdo" resolve="redlight" />
        </node>
        <node concept="2K9RZJ" id="6xOriGl_9Dn" role="10aWve">
          <property role="2K9RwJ" value="missile envoye" />
        </node>
        <node concept="2zFGQ5" id="5z8jtNmnYjC" role="2zFGRZ">
          <property role="2K9mBO" value="true" />
          <ref role="2K8y$v" node="5z8jtNmnYiN" resolve="redButton" />
        </node>
      </node>
      <node concept="3uOfMU" id="5z8jtNmnYjG" role="3uOfKq">
        <property role="TrG5h" value="trans3" />
        <ref role="3uPXf9" node="5z8jtNmnYj3" resolve="state1" />
        <node concept="2K9RZJ" id="6xOriGl_3AA" role="10aWve">
          <property role="2K9RwJ" value="aborted launch" />
        </node>
        <node concept="2zFGQ6" id="5z8jtNmnYjU" role="2zFGRZ">
          <property role="2K9RwE" value="stop" />
        </node>
        <node concept="2K9RZj" id="6xOriGl$qdx" role="10aWve">
          <property role="2K9RwL" value="false" />
          <ref role="2K9RwR" node="6xOriGl$qdo" resolve="redlight" />
        </node>
        <node concept="2K9RZj" id="5z8jtNmnYka" role="10aWve">
          <property role="2K9RwL" value="false" />
          <ref role="2K9RwR" node="5z8jtNmnYiF" resolve="greenLight" />
        </node>
      </node>
    </node>
    <node concept="3PJUp1" id="5z8jtNmnYi$" role="1_4667">
      <property role="1_3wBA" value="2, 3, 4, 5, 6, 7, 8" />
    </node>
    <node concept="3T3p6N" id="5z8jtNmnYiF" role="3T3nKE">
      <property role="TrG5h" value="greenLight" />
      <property role="3T3nKM" value="11" />
    </node>
    <node concept="3T334G" id="5z8jtNmnYiN" role="3T3nKE">
      <property role="TrG5h" value="redButton" />
      <property role="3T3nKM" value="9" />
    </node>
  </node>
</model>

