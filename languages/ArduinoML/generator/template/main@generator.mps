<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:38e072e0-de73-4db8-bda3-de3ebf74f73e(ArduinoML.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="-1" />
    <use id="5edee0cf-46e1-49f9-971e-6b9e2e5cae16" name="ArduinoML" version="-1" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="-1" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="z0bc" ref="r:38e072e0-de73-4db8-bda3-de3ebf74f73e(ArduinoML.generator.template.main@generator)" />
    <import index="67j" ref="r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="78eQDyb0Aiv">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="78eQDyb2ZIr" role="3acgRq">
      <ref role="30HIoZ" to="67j:78eQDyb0IIO" resolve="Sensor" />
      <node concept="j$656" id="78eQDyb2ZIx" role="1lVwrX">
        <ref role="v9R2y" node="78eQDyb2ZIv" resolve="reduce_Sensor" />
      </node>
    </node>
    <node concept="3aamgX" id="78eQDyb34zg" role="3acgRq">
      <ref role="30HIoZ" to="67j:78eQDyb0OGF" resolve="Actuator" />
      <node concept="j$656" id="78eQDyb34zo" role="1lVwrX">
        <ref role="v9R2y" node="78eQDyb34zm" resolve="reduce_Actuator" />
      </node>
    </node>
    <node concept="3aamgX" id="5BVoFE7cwlW" role="3acgRq">
      <ref role="30HIoZ" to="67j:5BVoFE7aToI" resolve="State" />
      <node concept="j$656" id="5BVoFE7cx0b" role="1lVwrX">
        <ref role="v9R2y" node="5BVoFE7cx09" resolve="reduce_State" />
      </node>
    </node>
    <node concept="3aamgX" id="5BVoFE7cwm4" role="3acgRq">
      <ref role="30HIoZ" to="67j:2gbl3Mkb2Jj" resolve="ActionLCD" />
      <node concept="j$656" id="5BVoFE7cx0R" role="1lVwrX">
        <ref role="v9R2y" node="5BVoFE7cx0P" resolve="reduce_ActionLCD" />
      </node>
    </node>
    <node concept="3aamgX" id="VAA6jmtnnF" role="3acgRq">
      <ref role="30HIoZ" to="67j:2gbl3Mkb2JJ" resolve="ActionActuator" />
      <node concept="j$656" id="VAA6jmtxdV" role="1lVwrX">
        <ref role="v9R2y" node="VAA6jmtnnV" resolve="reduce_ActionActuator" />
      </node>
    </node>
    <node concept="3aamgX" id="5BVoFE7cx0D" role="3acgRq">
      <ref role="30HIoZ" to="67j:5BVoFE7aTS0" resolve="Transition" />
      <node concept="j$656" id="5BVoFE7cx1n" role="1lVwrX">
        <ref role="v9R2y" node="5BVoFE7cx1l" resolve="reduce_Transition" />
      </node>
    </node>
    <node concept="3aamgX" id="3qUXwr31GG3" role="3acgRq">
      <ref role="30HIoZ" to="67j:3qUXwr31l17" resolve="LCD" />
      <node concept="j$656" id="5C9fUwgzyZN" role="1lVwrX">
        <ref role="v9R2y" node="5C9fUwgy4WN" resolve="reduce_LCD" />
      </node>
    </node>
    <node concept="3aamgX" id="VAA6jmuvgs" role="3acgRq">
      <ref role="30HIoZ" to="67j:5PafNJYTfaX" resolve="OutputSerial" />
      <node concept="j$656" id="VAA6jmuvin" role="1lVwrX">
        <ref role="v9R2y" node="VAA6jmuvh2" resolve="reduce_OutputSerial" />
      </node>
    </node>
    <node concept="3aamgX" id="VAA6jmuvgI" role="3acgRq">
      <ref role="30HIoZ" to="67j:5PafNJYTfaY" resolve="OutputSensor" />
      <node concept="j$656" id="VAA6jmuviq" role="1lVwrX">
        <ref role="v9R2y" node="VAA6jmuvil" resolve="reduce_OutputSensor" />
      </node>
    </node>
    <node concept="3lhOvk" id="78eQDyb1XUp" role="3lj3bC">
      <ref role="30HIoZ" to="67j:78eQDyb0OGH" resolve="App" />
      <ref role="3lhOvi" node="78eQDyb1XNT" resolve="map_App" />
    </node>
  </node>
  <node concept="312cEu" id="78eQDyb1XNT">
    <property role="TrG5h" value="map_App" />
    <node concept="2tJIrI" id="78eQDyb1XUI" role="jymVt" />
    <node concept="2YIFZL" id="78eQDyb22Su" role="jymVt">
      <property role="TrG5h" value="main" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="78eQDyb22Sx" role="3clF47">
        <node concept="3clFbF" id="78eQDyb27$7" role="3cqZAp">
          <node concept="2OqwBi" id="78eQDyb2ud9" role="3clFbG">
            <node concept="10M0yZ" id="78eQDyb27$6" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="78eQDyb2uOe" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="78eQDyb2uOZ" role="37wK5m">
                <property role="Xl_RC" value="// Code Generated by ArduinoML\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VAA6jmsemn" role="3cqZAp">
          <node concept="2OqwBi" id="VAA6jmsemk" role="3clFbG">
            <node concept="10M0yZ" id="VAA6jmseml" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="VAA6jmsemm" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="VAA6jmsfJC" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;SoftwareSerial.h&gt;\n#include &lt;LiquidCrystal.h&gt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3D1Qt1vkCPW" role="3cqZAp">
          <node concept="2OqwBi" id="3D1Qt1vkDZE" role="3clFbG">
            <node concept="10M0yZ" id="3D1Qt1vkDia" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="3D1Qt1vkECV" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="3D1Qt1vkEQx" role="37wK5m">
                <property role="Xl_RC" value="// Declaration of the LCD\n" />
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="3D1Qt1vkEYM" role="lGtFl">
            <node concept="3NFfHV" id="3D1Qt1vkEYN" role="3NFExx">
              <node concept="3clFbS" id="3D1Qt1vkEYO" role="2VODD2">
                <node concept="3clFbF" id="3D1Qt1vkEYU" role="3cqZAp">
                  <node concept="2OqwBi" id="3D1Qt1vkEYP" role="3clFbG">
                    <node concept="3TrEf2" id="3D1Qt1vkEYS" role="2OqNvi">
                      <ref role="3Tt5mk" to="67j:3D1Qt1vkrxn" resolve="lcd" />
                    </node>
                    <node concept="30H73N" id="3D1Qt1vkEYT" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5BVoFE7c4yO" role="3cqZAp">
          <node concept="2OqwBi" id="5BVoFE7c5v$" role="3clFbG">
            <node concept="10M0yZ" id="5BVoFE7c4yQ" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="5BVoFE7c5Q9" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="5BVoFE7c5Ri" role="37wK5m">
                <property role="Xl_RC" value="// Structural concepts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78eQDyb2v47" role="3cqZAp">
          <node concept="2OqwBi" id="78eQDyb2v9m" role="3clFbG">
            <node concept="10M0yZ" id="78eQDyb2v4X" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="78eQDyb2vHG" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="78eQDyb2vJk" role="37wK5m">
                <property role="Xl_RC" value="void setup() {" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VAA6jmshxU" role="3cqZAp">
          <node concept="2OqwBi" id="VAA6jmshxR" role="3clFbG">
            <node concept="10M0yZ" id="VAA6jmshxS" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="VAA6jmshxT" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="VAA6jmshP5" role="37wK5m">
                <property role="Xl_RC" value="  Serial.begin(9600);\n  lcd.begin(16,2); //Initialisation du lcd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78eQDyb2xBv" role="3cqZAp">
          <node concept="2OqwBi" id="78eQDyb2xLH" role="3clFbG">
            <node concept="10M0yZ" id="78eQDyb2xBu" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="78eQDyb2y84" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="78eQDyb2y9l" role="37wK5m">
                <property role="Xl_RC" value="  //Déclarations des bricks" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="78eQDyb38dk" role="lGtFl">
            <node concept="3JmXsc" id="78eQDyb38dn" role="2P8S$">
              <node concept="3clFbS" id="78eQDyb38do" role="2VODD2">
                <node concept="3clFbF" id="78eQDyb38du" role="3cqZAp">
                  <node concept="2OqwBi" id="78eQDyb38dp" role="3clFbG">
                    <node concept="3Tsc0h" id="78eQDyb38ds" role="2OqNvi">
                      <ref role="3TtcxE" to="67j:78eQDyb0UqM" resolve="bricks" />
                    </node>
                    <node concept="30H73N" id="78eQDyb38dt" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78eQDyb2vTT" role="3cqZAp">
          <node concept="2OqwBi" id="78eQDyb2vZj" role="3clFbG">
            <node concept="10M0yZ" id="78eQDyb2vTS" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="78eQDyb2wi5" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="78eQDyb2wiQ" role="37wK5m">
                <property role="Xl_RC" value="}" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5BVoFE7c8KE" role="3cqZAp" />
        <node concept="3clFbF" id="v$SscojLc8" role="3cqZAp">
          <node concept="2OqwBi" id="v$SscojLc5" role="3clFbG">
            <node concept="10M0yZ" id="v$SscojLc6" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="v$SscojLc7" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="v$SscojLxe" role="37wK5m">
                <property role="Xl_RC" value="//States declarations" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="v$SscojMnc" role="lGtFl">
            <node concept="3JmXsc" id="v$SscojMnf" role="2P8S$">
              <node concept="3clFbS" id="v$SscojMng" role="2VODD2">
                <node concept="3clFbF" id="v$SscojMnm" role="3cqZAp">
                  <node concept="2OqwBi" id="v$SscojMnh" role="3clFbG">
                    <node concept="3Tsc0h" id="v$SscojMnk" role="2OqNvi">
                      <ref role="3TtcxE" to="67j:5BVoFE7aTUz" resolve="states" />
                    </node>
                    <node concept="30H73N" id="v$SscojMnl" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v$SscoofIb" role="3cqZAp">
          <node concept="2OqwBi" id="v$SscoofI8" role="3clFbG">
            <node concept="10M0yZ" id="v$SscoofI9" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="v$SscoofIa" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="v$SscooimN" role="37wK5m">
                <node concept="Xl_RD" id="v$SscooiGA" role="3uHU7w">
                  <property role="Xl_RC" value="(); }" />
                </node>
                <node concept="3cpWs3" id="v$Sscoohe3" role="3uHU7B">
                  <node concept="Xl_RD" id="v$Sscoog3h" role="3uHU7B">
                    <property role="Xl_RC" value="void loop() {state_" />
                  </node>
                  <node concept="Xl_RD" id="v$Sscoohri" role="3uHU7w">
                    <property role="Xl_RC" value="INITIAL_STATE" />
                    <node concept="17Uvod" id="v$Sscoojo7" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="v$Sscoojo8" role="3zH0cK">
                        <node concept="3clFbS" id="v$Sscoojo9" role="2VODD2">
                          <node concept="3clFbF" id="v$SscoojYT" role="3cqZAp">
                            <node concept="2OqwBi" id="v$SscookU_" role="3clFbG">
                              <node concept="2OqwBi" id="v$Sscookdg" role="2Oq$k0">
                                <node concept="30H73N" id="v$SscoojYS" role="2Oq$k0" />
                                <node concept="3TrEf2" id="v$Sscookuj" role="2OqNvi">
                                  <ref role="3Tt5mk" to="67j:v$SsconWvT" resolve="initial_state" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="v$SscooldT" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="78eQDyb21G_" role="1B3o_S" />
      <node concept="3cqZAl" id="78eQDyb22Sq" role="3clF45" />
      <node concept="37vLTG" id="78eQDyb24fh" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="78eQDyb26QU" role="1tU5fm">
          <node concept="17QB3L" id="78eQDyb26HU" role="10Q1$1" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="78eQDyb1XNU" role="1B3o_S" />
    <node concept="n94m4" id="78eQDyb1XNV" role="lGtFl">
      <ref role="n9lRv" to="67j:78eQDyb0OGH" resolve="App" />
    </node>
  </node>
  <node concept="13MO4I" id="78eQDyb2ZIv">
    <property role="TrG5h" value="reduce_Sensor" />
    <ref role="3gUMe" to="67j:78eQDyb0IIO" resolve="Sensor" />
    <node concept="9aQIb" id="78eQDyb2ZJi" role="13RCb5">
      <node concept="3clFbS" id="78eQDyb2ZJj" role="9aQI4">
        <node concept="3clFbF" id="78eQDyb2ZJn" role="3cqZAp">
          <node concept="2OqwBi" id="78eQDyb2ZMX" role="3clFbG">
            <node concept="10M0yZ" id="78eQDyb2ZJm" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="78eQDyb30mw" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="78eQDyb310X" role="37wK5m">
                <node concept="3cpWs3" id="78eQDyb30yL" role="3uHU7B">
                  <node concept="Xl_RD" id="78eQDyb30n3" role="3uHU7B">
                    <property role="Xl_RC" value="  pinMode(" />
                  </node>
                  <node concept="3cmrfG" id="12ryeWwqbRz" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="12ryeWwqbUH" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="12ryeWwqbUK" role="3zH0cK">
                        <node concept="3clFbS" id="12ryeWwqbUL" role="2VODD2">
                          <node concept="3clFbF" id="12ryeWwqbUR" role="3cqZAp">
                            <node concept="2OqwBi" id="12ryeWwqbUM" role="3clFbG">
                              <node concept="3TrcHB" id="12ryeWwqbUP" role="2OqNvi">
                                <ref role="3TsBF5" to="67j:78eQDyb0UqE" resolve="pin" />
                              </node>
                              <node concept="30H73N" id="12ryeWwqbUQ" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="78eQDyb31fq" role="3uHU7w">
                  <property role="Xl_RC" value=", INPUT);" />
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="78eQDyb32mm" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="78eQDyb34zm">
    <property role="TrG5h" value="reduce_Actuator" />
    <ref role="3gUMe" to="67j:78eQDyb0OGF" resolve="Actuator" />
    <node concept="9aQIb" id="78eQDyb34zQ" role="13RCb5">
      <node concept="3clFbS" id="78eQDyb34zR" role="9aQI4">
        <node concept="3clFbF" id="78eQDyb34zV" role="3cqZAp">
          <node concept="2OqwBi" id="78eQDyb34Bw" role="3clFbG">
            <node concept="10M0yZ" id="78eQDyb34zU" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="78eQDyb34Tr" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="78eQDyb35tP" role="37wK5m">
                <node concept="Xl_RD" id="78eQDyb35tS" role="3uHU7w">
                  <property role="Xl_RC" value=", OUTPUT);" />
                </node>
                <node concept="3cpWs3" id="78eQDyb354f" role="3uHU7B">
                  <node concept="Xl_RD" id="78eQDyb34TY" role="3uHU7B">
                    <property role="Xl_RC" value="  pinMode(" />
                  </node>
                  <node concept="3cmrfG" id="12ryeWwqcM9" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="12ryeWwqcPj" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="12ryeWwqcPm" role="3zH0cK">
                        <node concept="3clFbS" id="12ryeWwqcPn" role="2VODD2">
                          <node concept="3clFbF" id="12ryeWwqcPt" role="3cqZAp">
                            <node concept="2OqwBi" id="12ryeWwqcPo" role="3clFbG">
                              <node concept="3TrcHB" id="12ryeWwqcPr" role="2OqNvi">
                                <ref role="3TsBF5" to="67j:78eQDyb0UqE" resolve="pin" />
                              </node>
                              <node concept="30H73N" id="12ryeWwqcPs" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="12ryeWwpWYh" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="5BVoFE7cx09">
    <property role="TrG5h" value="reduce_State" />
    <ref role="3gUMe" to="67j:5BVoFE7aToI" resolve="State" />
    <node concept="9aQIb" id="5BVoFE7cMs1" role="13RCb5">
      <node concept="3clFbS" id="5BVoFE7cMs3" role="9aQI4">
        <node concept="3clFbF" id="5BVoFE7daFi" role="3cqZAp">
          <node concept="2OqwBi" id="5BVoFE7daKp" role="3clFbG">
            <node concept="10M0yZ" id="5BVoFE7daFh" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="5BVoFE7db2k" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="5BVoFE7dbH1" role="37wK5m">
                <node concept="Xl_RD" id="5BVoFE7dbSD" role="3uHU7w">
                  <property role="Xl_RC" value="() {" />
                </node>
                <node concept="3cpWs3" id="5BVoFE7dbi_" role="3uHU7B">
                  <node concept="Xl_RD" id="5BVoFE7db3q" role="3uHU7B">
                    <property role="Xl_RC" value="void state_" />
                  </node>
                  <node concept="Xl_RD" id="VAA6jmt9Q$" role="3uHU7w">
                    <property role="Xl_RC" value="STATE" />
                    <node concept="17Uvod" id="VAA6jmta3T" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="VAA6jmta3W" role="3zH0cK">
                        <node concept="3clFbS" id="VAA6jmta3X" role="2VODD2">
                          <node concept="3clFbF" id="VAA6jmta43" role="3cqZAp">
                            <node concept="2OqwBi" id="VAA6jmta3Y" role="3clFbG">
                              <node concept="3TrcHB" id="VAA6jmta41" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                              <node concept="30H73N" id="VAA6jmta42" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5BVoFE7cMs8" role="3cqZAp">
          <node concept="2OqwBi" id="5BVoFE7cMvH" role="3clFbG">
            <node concept="10M0yZ" id="5BVoFE7cMs7" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="5BVoFE7cN3g" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="5BVoFE7cN3F" role="37wK5m">
                <property role="Xl_RC" value="  //Déclaration des transitions" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="VAA6jmtkck" role="lGtFl">
            <node concept="3JmXsc" id="VAA6jmtkcn" role="2P8S$">
              <node concept="3clFbS" id="VAA6jmtkco" role="2VODD2">
                <node concept="3clFbF" id="VAA6jmtkcu" role="3cqZAp">
                  <node concept="2OqwBi" id="VAA6jmtkcp" role="3clFbG">
                    <node concept="3Tsc0h" id="VAA6jmtkcs" role="2OqNvi">
                      <ref role="3TtcxE" to="67j:5BVoFE7aTUw" resolve="transitions" />
                    </node>
                    <node concept="30H73N" id="VAA6jmtkct" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VAA6jmu5Rz" role="3cqZAp">
          <node concept="2OqwBi" id="VAA6jmu5Rw" role="3clFbG">
            <node concept="10M0yZ" id="VAA6jmu5Rx" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="VAA6jmu5Ry" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="VAA6jmubjh" role="37wK5m">
                <node concept="Xl_RD" id="VAA6jmubKH" role="3uHU7w">
                  <property role="Xl_RC" value="(); }" />
                </node>
                <node concept="3cpWs3" id="VAA6jmu9Zy" role="3uHU7B">
                  <node concept="Xl_RD" id="VAA6jmu6dO" role="3uHU7B">
                    <property role="Xl_RC" value="    else { state_" />
                  </node>
                  <node concept="Xl_RD" id="VAA6jmuaga" role="3uHU7w">
                    <property role="Xl_RC" value="STATE_NAME" />
                    <node concept="17Uvod" id="VAA6jmudD2" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="VAA6jmudD3" role="3zH0cK">
                        <node concept="3clFbS" id="VAA6jmudD4" role="2VODD2">
                          <node concept="3clFbF" id="VAA6jmue8H" role="3cqZAp">
                            <node concept="2OqwBi" id="VAA6jmuemb" role="3clFbG">
                              <node concept="30H73N" id="VAA6jmue8G" role="2Oq$k0" />
                              <node concept="3TrcHB" id="VAA6jmue_A" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5BVoFE7dca7" role="3cqZAp">
          <node concept="2OqwBi" id="5BVoFE7dclS" role="3clFbG">
            <node concept="10M0yZ" id="5BVoFE7dca6" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="5BVoFE7dcU8" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="5BVoFE7dcVe" role="37wK5m">
                <property role="Xl_RC" value="}\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5BVoFE7d1kj" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="5BVoFE7cx0P">
    <property role="TrG5h" value="reduce_ActionLCD" />
    <ref role="3gUMe" to="67j:2gbl3Mkb2Jj" resolve="ActionLCD" />
    <node concept="9aQIb" id="5BVoFE7cx1P" role="13RCb5">
      <node concept="3clFbS" id="5BVoFE7cx1R" role="9aQI4">
        <node concept="3clFbF" id="5BVoFE7cx1W" role="3cqZAp">
          <node concept="2OqwBi" id="5BVoFE7cx5x" role="3clFbG">
            <node concept="10M0yZ" id="5BVoFE7cx1V" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="5BVoFE7cxD4" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="VAA6jmvove" role="37wK5m">
                <node concept="Xl_RD" id="VAA6jmvoVR" role="3uHU7w">
                  <property role="Xl_RC" value="\&quot;);" />
                </node>
                <node concept="3cpWs3" id="VAA6jmtIo9" role="3uHU7B">
                  <node concept="Xl_RD" id="VAA6jmtHwM" role="3uHU7B">
                    <property role="Xl_RC" value="        displayOnScreen(\&quot;" />
                  </node>
                  <node concept="Xl_RD" id="VAA6jmtMdk" role="3uHU7w">
                    <property role="Xl_RC" value="MESSAGE" />
                    <node concept="17Uvod" id="VAA6jmtMnK" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="VAA6jmtMnN" role="3zH0cK">
                        <node concept="3clFbS" id="VAA6jmtMnO" role="2VODD2">
                          <node concept="3clFbF" id="VAA6jmtMnU" role="3cqZAp">
                            <node concept="2OqwBi" id="VAA6jmtMnP" role="3clFbG">
                              <node concept="3TrcHB" id="VAA6jmtMnS" role="2OqNvi">
                                <ref role="3TsBF5" to="67j:2gbl3Mkb2Kj" resolve="message" />
                              </node>
                              <node concept="30H73N" id="VAA6jmtMnT" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="5BVoFE7c$28" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="5BVoFE7cx1l">
    <property role="TrG5h" value="reduce_Transition" />
    <ref role="3gUMe" to="67j:5BVoFE7aTS0" resolve="Transition" />
    <node concept="9aQIb" id="5BVoFE7cGN4" role="13RCb5">
      <node concept="3clFbS" id="5BVoFE7cGN6" role="9aQI4">
        <node concept="3clFbF" id="v$SscolPvB" role="3cqZAp">
          <node concept="2OqwBi" id="v$SscolPv$" role="3clFbG">
            <node concept="10M0yZ" id="v$SscolPv_" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="v$SscolPvA" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="v$SscolTw4" role="37wK5m">
                <node concept="Xl_RD" id="v$SscolTN1" role="3uHU7w">
                  <property role="Xl_RC" value="TRANSITION_NAME" />
                  <node concept="17Uvod" id="v$SscolUpt" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="v$SscolUpw" role="3zH0cK">
                      <node concept="3clFbS" id="v$SscolUpx" role="2VODD2">
                        <node concept="3clFbF" id="v$SscolUpB" role="3cqZAp">
                          <node concept="2OqwBi" id="v$SscolUpy" role="3clFbG">
                            <node concept="3TrcHB" id="v$SscolUp_" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                            <node concept="30H73N" id="v$SscolUpA" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="v$SscolPXi" role="3uHU7B">
                  <property role="Xl_RC" value="    // Transition " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VAA6jmunuW" role="3cqZAp">
          <node concept="2OqwBi" id="VAA6jmunuT" role="3clFbG">
            <node concept="10M0yZ" id="VAA6jmunuU" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="VAA6jmunuV" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="VAA6jmunKM" role="37wK5m">
                <property role="Xl_RC" value="//Condition de la transition" />
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="VAA6jmupkb" role="lGtFl">
            <node concept="3NFfHV" id="VAA6jmupkc" role="3NFExx">
              <node concept="3clFbS" id="VAA6jmupkd" role="2VODD2">
                <node concept="3clFbF" id="VAA6jmupkj" role="3cqZAp">
                  <node concept="2OqwBi" id="VAA6jmupke" role="3clFbG">
                    <node concept="3TrEf2" id="VAA6jmupkh" role="2OqNvi">
                      <ref role="3Tt5mk" to="67j:5PafNJYTfb4" resolve="output" />
                    </node>
                    <node concept="30H73N" id="VAA6jmupki" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VAA6jmvPg2" role="3cqZAp">
          <node concept="2OqwBi" id="VAA6jmvPfZ" role="3clFbG">
            <node concept="10M0yZ" id="VAA6jmvPg0" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="VAA6jmvPg1" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="VAA6jmvPn9" role="37wK5m">
                <property role="Xl_RC" value="// Déclaration des actions à effectuer" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="VAA6jmvPK0" role="lGtFl">
            <node concept="3JmXsc" id="VAA6jmvPK3" role="2P8S$">
              <node concept="3clFbS" id="VAA6jmvPK4" role="2VODD2">
                <node concept="3clFbF" id="VAA6jmvPKa" role="3cqZAp">
                  <node concept="2OqwBi" id="VAA6jmvPK5" role="3clFbG">
                    <node concept="3Tsc0h" id="VAA6jmvPK8" role="2OqNvi">
                      <ref role="3TtcxE" to="67j:4JuhUobXo1C" resolve="actions" />
                    </node>
                    <node concept="30H73N" id="VAA6jmvPK9" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VAA6jmvQ6U" role="3cqZAp">
          <node concept="2OqwBi" id="VAA6jmvQ6R" role="3clFbG">
            <node concept="10M0yZ" id="VAA6jmvQ6S" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="VAA6jmvQ6T" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="VAA6jmvY6Z" role="37wK5m">
                <node concept="Xl_RD" id="VAA6jmvYAL" role="3uHU7w">
                  <property role="Xl_RC" value="(); }" />
                </node>
                <node concept="3cpWs3" id="VAA6jmvRmW" role="3uHU7B">
                  <node concept="Xl_RD" id="VAA6jmvQjW" role="3uHU7B">
                    <property role="Xl_RC" value="        state_" />
                  </node>
                  <node concept="Xl_RD" id="VAA6jmvRoS" role="3uHU7w">
                    <property role="Xl_RC" value="TARGET_STATE" />
                    <node concept="17Uvod" id="VAA6jmvRvO" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="VAA6jmvRvP" role="3zH0cK">
                        <node concept="3clFbS" id="VAA6jmvRvQ" role="2VODD2">
                          <node concept="3clFbF" id="VAA6jmvRHO" role="3cqZAp">
                            <node concept="2OqwBi" id="VAA6jmvS_J" role="3clFbG">
                              <node concept="2OqwBi" id="VAA6jmvRVp" role="2Oq$k0">
                                <node concept="30H73N" id="VAA6jmvRHN" role="2Oq$k0" />
                                <node concept="3TrEf2" id="VAA6jmvSb3" role="2OqNvi">
                                  <ref role="3Tt5mk" to="67j:5BVoFE7bb5N" resolve="target" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="VAA6jmvSSI" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5BVoFE7ddN$" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="5C9fUwgy4WN">
    <property role="TrG5h" value="reduce_LCD" />
    <ref role="3gUMe" to="67j:3qUXwr31l17" resolve="LCD" />
    <node concept="9aQIb" id="5C9fUwgy50u" role="13RCb5">
      <node concept="3clFbS" id="5C9fUwgy5Jf" role="9aQI4">
        <node concept="3clFbF" id="5C9fUwgydnB" role="3cqZAp">
          <node concept="2OqwBi" id="5C9fUwgydHw" role="3clFbG">
            <node concept="10M0yZ" id="5C9fUwgydnA" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="5C9fUwgye2v" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="5C9fUwgzf9t" role="37wK5m">
                <node concept="3cpWs3" id="5C9fUwgzSTH" role="3uHU7B">
                  <node concept="Xl_RD" id="5C9fUwgzfpV" role="3uHU7B">
                    <property role="Xl_RC" value="LiquidCrystal lcd(" />
                  </node>
                  <node concept="Xl_RD" id="5C9fUwg$yLW" role="3uHU7w">
                    <property role="Xl_RC" value="BUS_VALUE" />
                    <node concept="17Uvod" id="5C9fUwg$yRX" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="5C9fUwg$yRY" role="3zH0cK">
                        <node concept="3clFbS" id="5C9fUwg$yRZ" role="2VODD2">
                          <node concept="3clFbF" id="5C9fUwg$z58" role="3cqZAp">
                            <node concept="2OqwBi" id="5C9fUwg$zhV" role="3clFbG">
                              <node concept="30H73N" id="5C9fUwg$z57" role="2Oq$k0" />
                              <node concept="3TrcHB" id="5C9fUwg$zwk" role="2OqNvi">
                                <ref role="3TsBF5" to="67j:3D1Qt1vjX0Q" resolve="bus" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="5C9fUwgzGca" role="3uHU7w">
                  <property role="Xl_RC" value=");" />
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="5C9fUwgyf1z" role="lGtFl" />
        </node>
        <node concept="3clFbF" id="5C9fUwg$QEq" role="3cqZAp">
          <node concept="2OqwBi" id="5C9fUwg$R9y" role="3clFbG">
            <node concept="10M0yZ" id="5C9fUwg$QEp" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="5C9fUwg$Rux" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="5C9fUwg$RLR" role="37wK5m">
                <property role="Xl_RC" value="/*\n * Affichage d'un message sur l'écran LCD\n */\nvoid displayOnScreen (String msg) { \n  lcd.clear();//clears the LCD and positions the cursor in the upper-left corner\n  lcd.setCursor(2,1); // On place le curseur\n  lcd.print(msg);// Print a message to the LCD.\n  // Si message supérieur à la taille de l'écran\n  if (msg.length() &gt; 13) {\n    for (int positionCounter = 0; positionCounter &lt; msg.length() - 13; positionCounter++) {\n      lcd.scrollDisplayLeft();  // scroll one position left:\n      delay(300); // délai d'attente\n    }  \n  }\n}" />
              </node>
            </node>
          </node>
          <node concept="raruj" id="5C9fUwg$RRX" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="VAA6jmtnnV">
    <property role="TrG5h" value="reduce_ActionActuator" />
    <ref role="3gUMe" to="67j:2gbl3Mkb2JJ" resolve="ActionActuator" />
    <node concept="9aQIb" id="VAA6jmtnnX" role="13RCb5">
      <node concept="3clFbS" id="VAA6jmtno4" role="9aQI4">
        <node concept="3clFbF" id="VAA6jmtno2" role="3cqZAp">
          <node concept="2OqwBi" id="VAA6jmtnnZ" role="3clFbG">
            <node concept="10M0yZ" id="VAA6jmtno0" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="VAA6jmtno1" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="VAA6jmtsvd" role="37wK5m">
                <node concept="Xl_RD" id="VAA6jmtsM9" role="3uHU7w">
                  <property role="Xl_RC" value=");" />
                </node>
                <node concept="3cpWs3" id="VAA6jmtrfM" role="3uHU7B">
                  <node concept="3cpWs3" id="VAA6jmtq8_" role="3uHU7B">
                    <node concept="3cpWs3" id="VAA6jmtoJj" role="3uHU7B">
                      <node concept="Xl_RD" id="VAA6jmtnoA" role="3uHU7B">
                        <property role="Xl_RC" value="        digitalWrite(" />
                      </node>
                      <node concept="3cmrfG" id="VAA6jmtoKf" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                        <node concept="17Uvod" id="VAA6jmtxpR" role="lGtFl">
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                          <property role="2qtEX9" value="value" />
                          <node concept="3zFVjK" id="VAA6jmtxpS" role="3zH0cK">
                            <node concept="3clFbS" id="VAA6jmtxpT" role="2VODD2">
                              <node concept="3cpWs6" id="VAA6jmtxJZ" role="3cqZAp">
                                <node concept="2OqwBi" id="VAA6jmtzmu" role="3cqZAk">
                                  <node concept="2OqwBi" id="VAA6jmtyj7" role="2Oq$k0">
                                    <node concept="30H73N" id="VAA6jmty1b" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="VAA6jmtyMj" role="2OqNvi">
                                      <ref role="3Tt5mk" to="67j:2gbl3Mkb2Kb" resolve="actuator" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="VAA6jmtzNA" role="2OqNvi">
                                    <ref role="3TsBF5" to="67j:78eQDyb0UqE" resolve="pin" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="VAA6jmtqql" role="3uHU7w">
                      <property role="Xl_RC" value="," />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="VAA6jmtB38" role="3uHU7w">
                    <property role="Xl_RC" value="SIGNAL" />
                    <node concept="17Uvod" id="VAA6jmtC0J" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="VAA6jmtC0K" role="3zH0cK">
                        <node concept="3clFbS" id="VAA6jmtC0L" role="2VODD2">
                          <node concept="3clFbF" id="VAA6jmtCQx" role="3cqZAp">
                            <node concept="3K4zz7" id="VAA6jmtEzM" role="3clFbG">
                              <node concept="Xl_RD" id="VAA6jmtEIw" role="3K4E3e">
                                <property role="Xl_RC" value="HIGH" />
                              </node>
                              <node concept="Xl_RD" id="VAA6jmtF3w" role="3K4GZi">
                                <property role="Xl_RC" value="LOW" />
                              </node>
                              <node concept="2OqwBi" id="VAA6jmtD_z" role="3K4Cdx">
                                <node concept="30H73N" id="VAA6jmtCQw" role="2Oq$k0" />
                                <node concept="3TrcHB" id="VAA6jmtDKV" role="2OqNvi">
                                  <ref role="3TsBF5" to="67j:2gbl3Mkb2Kd" resolve="status" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="VAA6jmtnuO" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="VAA6jmuvh2">
    <property role="TrG5h" value="reduce_OutputSerial" />
    <ref role="3gUMe" to="67j:5PafNJYTfaX" resolve="OutputSerial" />
    <node concept="9aQIb" id="VAA6jmuvit" role="13RCb5">
      <node concept="3clFbS" id="VAA6jmuvi$" role="9aQI4">
        <node concept="3clFbF" id="VAA6jmuviy" role="3cqZAp">
          <node concept="2OqwBi" id="VAA6jmuviv" role="3clFbG">
            <node concept="10M0yZ" id="VAA6jmuviw" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="VAA6jmuvix" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="VAA6jmuvj6" role="37wK5m">
                <property role="Xl_RC" value="    String read = Serial.readString();" />
              </node>
            </node>
          </node>
          <node concept="raruj" id="VAA6jmuvqa" role="lGtFl" />
        </node>
        <node concept="3clFbF" id="6xOriGl$F3m" role="3cqZAp">
          <node concept="2OqwBi" id="6xOriGl$F3j" role="3clFbG">
            <node concept="10M0yZ" id="6xOriGl$F3k" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="6xOriGl$F3l" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6xOriGl$Hbv" role="37wK5m">
                <node concept="Xl_RD" id="6xOriGl$HbF" role="3uHU7w">
                  <property role="Xl_RC" value="\&quot;) != -1) {" />
                </node>
                <node concept="3cpWs3" id="6xOriGl$G1A" role="3uHU7B">
                  <node concept="Xl_RD" id="6xOriGl$F4k" role="3uHU7B">
                    <property role="Xl_RC" value="    if (read.indexOf(\&quot;" />
                  </node>
                  <node concept="Xl_RD" id="6xOriGl$GzV" role="3uHU7w">
                    <property role="Xl_RC" value="MESSAGE" />
                    <node concept="17Uvod" id="6xOriGl$IhJ" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="6xOriGl$IhM" role="3zH0cK">
                        <node concept="3clFbS" id="6xOriGl$IhN" role="2VODD2">
                          <node concept="3clFbF" id="6xOriGl$IhT" role="3cqZAp">
                            <node concept="2OqwBi" id="6xOriGl$IhO" role="3clFbG">
                              <node concept="3TrcHB" id="6xOriGl$IhR" role="2OqNvi">
                                <ref role="3TsBF5" to="67j:2gbl3Mkb2Km" resolve="message" />
                              </node>
                              <node concept="30H73N" id="6xOriGl$IhS" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="6xOriGl$J31" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="VAA6jmuvil">
    <property role="TrG5h" value="reduce_OutputSensor" />
    <ref role="3gUMe" to="67j:5PafNJYTfaY" resolve="OutputSensor" />
    <node concept="9aQIb" id="VAA6jmuvym" role="13RCb5">
      <node concept="3clFbS" id="VAA6jmuvyt" role="9aQI4">
        <node concept="3clFbF" id="VAA6jmuvyr" role="3cqZAp">
          <node concept="2OqwBi" id="VAA6jmuvyo" role="3clFbG">
            <node concept="10M0yZ" id="VAA6jmuvyp" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="VAA6jmuvyq" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="VAA6jmuYfG" role="37wK5m">
                <node concept="Xl_RD" id="VAA6jmuYI1" role="3uHU7w">
                  <property role="Xl_RC" value=") {" />
                </node>
                <node concept="3cpWs3" id="VAA6jmuSml" role="3uHU7B">
                  <node concept="3cpWs3" id="VAA6jmuQpJ" role="3uHU7B">
                    <node concept="3cpWs3" id="VAA6jmuP0t" role="3uHU7B">
                      <node concept="Xl_RD" id="VAA6jmuvyZ" role="3uHU7B">
                        <property role="Xl_RC" value="    if (digitalRead(" />
                      </node>
                      <node concept="3cmrfG" id="VAA6jmuP1p" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                        <node concept="17Uvod" id="1R4EZf6s9Wz" role="lGtFl">
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                          <property role="2qtEX9" value="value" />
                          <node concept="3zFVjK" id="1R4EZf6s9W$" role="3zH0cK">
                            <node concept="3clFbS" id="1R4EZf6s9W_" role="2VODD2">
                              <node concept="3clFbF" id="1R4EZf6sbc1" role="3cqZAp">
                                <node concept="2OqwBi" id="1R4EZf6scql" role="3clFbG">
                                  <node concept="2OqwBi" id="1R4EZf6sbtV" role="2Oq$k0">
                                    <node concept="30H73N" id="1R4EZf6sbc0" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="1R4EZf6sbQf" role="2OqNvi">
                                      <ref role="3Tt5mk" to="67j:2gbl3MkanOz" resolve="sensor" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="1R4EZf6scRo" role="2OqNvi">
                                    <ref role="3TsBF5" to="67j:78eQDyb0UqE" resolve="pin" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="VAA6jmuRp8" role="3uHU7w">
                      <property role="Xl_RC" value=") == " />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="VAA6jmuSFh" role="3uHU7w">
                    <property role="Xl_RC" value="SIGNAL" />
                    <node concept="17Uvod" id="VAA6jmuSLv" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="VAA6jmuSLw" role="3zH0cK">
                        <node concept="3clFbS" id="VAA6jmuSLx" role="2VODD2">
                          <node concept="3clFbF" id="VAA6jmuSYO" role="3cqZAp">
                            <node concept="3K4zz7" id="VAA6jmuUCr" role="3clFbG">
                              <node concept="Xl_RD" id="VAA6jmuUN9" role="3K4E3e">
                                <property role="Xl_RC" value="HIGH" />
                              </node>
                              <node concept="Xl_RD" id="VAA6jmuV89" role="3K4GZi">
                                <property role="Xl_RC" value="LOW" />
                              </node>
                              <node concept="2OqwBi" id="VAA6jmuTcp" role="3K4Cdx">
                                <node concept="30H73N" id="VAA6jmuSYN" role="2Oq$k0" />
                                <node concept="3TrcHB" id="VAA6jmuTs3" role="2OqNvi">
                                  <ref role="3TsBF5" to="67j:2gbl3MkbzR8" resolve="status" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="VAA6jmuvBT" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
</model>

