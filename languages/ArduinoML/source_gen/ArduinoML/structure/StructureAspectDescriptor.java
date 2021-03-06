package ArduinoML.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import java.util.Map;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import java.util.HashMap;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.concept.SConceptAdapterById;
import jetbrains.mps.smodel.adapter.structure.concept.SInterfaceConceptAdapterById;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.smodel.SNodePointer;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {
  private final Map<SConceptId, Integer> myIndexMap = new HashMap<SConceptId, Integer>(13);
  /*package*/ final ConceptDescriptor myConceptAction = createDescriptorForAction();
  /*package*/ final ConceptDescriptor myConceptActionActuator = createDescriptorForActionActuator();
  /*package*/ final ConceptDescriptor myConceptActionLCD = createDescriptorForActionLCD();
  /*package*/ final ConceptDescriptor myConceptActuator = createDescriptorForActuator();
  /*package*/ final ConceptDescriptor myConceptApp = createDescriptorForApp();
  /*package*/ final ConceptDescriptor myConceptBrick = createDescriptorForBrick();
  /*package*/ final ConceptDescriptor myConceptLCD = createDescriptorForLCD();
  /*package*/ final ConceptDescriptor myConceptOutput = createDescriptorForOutput();
  /*package*/ final ConceptDescriptor myConceptOutputSensor = createDescriptorForOutputSensor();
  /*package*/ final ConceptDescriptor myConceptOutputSerial = createDescriptorForOutputSerial();
  /*package*/ final ConceptDescriptor myConceptSensor = createDescriptorForSensor();
  /*package*/ final ConceptDescriptor myConceptState = createDescriptorForState();
  /*package*/ final ConceptDescriptor myConceptTransition = createDescriptorForTransition();

  public StructureAspectDescriptor() {
    myIndexMap.put(myConceptAction.getId(), 0);
    myIndexMap.put(myConceptActionActuator.getId(), 1);
    myIndexMap.put(myConceptActionLCD.getId(), 2);
    myIndexMap.put(myConceptActuator.getId(), 3);
    myIndexMap.put(myConceptApp.getId(), 4);
    myIndexMap.put(myConceptBrick.getId(), 5);
    myIndexMap.put(myConceptLCD.getId(), 6);
    myIndexMap.put(myConceptOutput.getId(), 7);
    myIndexMap.put(myConceptOutputSensor.getId(), 8);
    myIndexMap.put(myConceptOutputSerial.getId(), 9);
    myIndexMap.put(myConceptSensor.getId(), 10);
    myIndexMap.put(myConceptState.getId(), 11);
    myIndexMap.put(myConceptTransition.getId(), 12);
  }

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptAction, myConceptActionActuator, myConceptActionLCD, myConceptActuator, myConceptApp, myConceptBrick, myConceptLCD, myConceptOutput, myConceptOutputSensor, myConceptOutputSerial, myConceptSensor, myConceptState, myConceptTransition);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(SConceptId id) {
    Integer index = myIndexMap.get(id);
    if (index == null) {
      return null;
    }
    switch (((int) index)) {
      case 0:
        return myConceptAction;
      case 1:
        return myConceptActionActuator;
      case 2:
        return myConceptActionLCD;
      case 3:
        return myConceptActuator;
      case 4:
        return myConceptApp;
      case 5:
        return myConceptBrick;
      case 6:
        return myConceptLCD;
      case 7:
        return myConceptOutput;
      case 8:
        return myConceptOutputSensor;
      case 9:
        return myConceptOutputSerial;
      case 10:
        return myConceptSensor;
      case 11:
        return myConceptState;
      case 12:
        return myConceptTransition;
      default:
        throw new IllegalStateException();
    }
  }

  /*package*/ int internalIndex(SAbstractConcept c) {
    Integer res = null;
    if (c instanceof SConceptAdapterById) {
      res = myIndexMap.get(((SConceptAdapterById) c).getId());
    } else if (c instanceof SInterfaceConceptAdapterById) {
      res = myIndexMap.get(((SInterfaceConceptAdapterById) c).getId());
    }
    return (res == null ? -1 : res);
  }

  private static ConceptDescriptor createDescriptorForAction() {
    return new ConceptDescriptorBuilder("ArduinoML.structure.Action", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b9a1aL)).super_("jetbrains.mps.lang.core.structure.BaseConcept").version(1).super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).abstract_().sourceNode(new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "6483884641801181722")).create();
  }
  private static ConceptDescriptor createDescriptorForActionActuator() {
    return new ConceptDescriptorBuilder("ArduinoML.structure.ActionActuator", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x240b543c942c2befL)).super_("ArduinoML.structure.Action").version(1).super_(MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b9a1aL)).parents("ArduinoML.structure.Action").parentIds(MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b9a1aL)).propertyDescriptors(new ConceptDescriptorBuilder.Prop(0x240b543c942c2c0dL, "status", new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "2597262229269916685"))).properties("status").referenceDescriptors(new ConceptDescriptorBuilder.Ref(0x240b543c942c2c0bL, "actuator", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x720eda988b034b2bL), false, new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "2597262229269916683"))).references("actuator").sourceNode(new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "2597262229269916655")).create();
  }
  private static ConceptDescriptor createDescriptorForActionLCD() {
    return new ConceptDescriptorBuilder("ArduinoML.structure.ActionLCD", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x240b543c942c2bd3L)).super_("ArduinoML.structure.Action").version(1).super_(MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b9a1aL)).parents("ArduinoML.structure.Action").parentIds(MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b9a1aL)).propertyDescriptors(new ConceptDescriptorBuilder.Prop(0x240b543c942c2c13L, "message", new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "2597262229269916691"))).properties("message").sourceNode(new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "2597262229269916627")).create();
  }
  private static ConceptDescriptor createDescriptorForActuator() {
    return new ConceptDescriptorBuilder("ArduinoML.structure.Actuator", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x720eda988b034b2bL)).super_("ArduinoML.structure.Brick").version(1).super_(MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x720eda988b034b2cL)).parents("ArduinoML.structure.Brick").parentIds(MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x720eda988b034b2cL)).sourceNode(new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "8218746718699866923")).create();
  }
  private static ConceptDescriptor createDescriptorForApp() {
    return new ConceptDescriptorBuilder("ArduinoML.structure.App", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x720eda988b034b2dL)).super_("jetbrains.mps.lang.core.structure.BaseConcept").version(1).super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.execution.util.structure.IMainClass", "jetbrains.mps.lang.core.structure.INamedConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL), MetaIdFactory.conceptId(0x4caf0310491e41f5L, 0x8a9b2006b3a94898L, 0x40c1a7cb987d20d5L), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L)).referenceDescriptors(new ConceptDescriptorBuilder.Ref(0x7e4e1c3185fc7f9L, "initial_state", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b962eL), false, new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "568827680999327737"))).references("initial_state").childDescriptors(new ConceptDescriptorBuilder.Link(0x3a41d9d05f51b857L, "lcd", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x36baf606c3055047L), true, false, false, new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "4197875816661629015")), new ConceptDescriptorBuilder.Link(0x720eda988b03a6b2L, "bricks", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x720eda988b034b2cL), true, true, false, new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "8218746718699890354")), new ConceptDescriptorBuilder.Link(0x59fb62ba872b9ea3L, "states", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b962eL), true, true, false, new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "6483884641801182883"))).children(new String[]{"lcd", "bricks", "states"}, new boolean[]{false, true, true}).rootable().sourceNode(new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "8218746718699866925")).create();
  }
  private static ConceptDescriptor createDescriptorForBrick() {
    return new ConceptDescriptorBuilder("ArduinoML.structure.Brick", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x720eda988b034b2cL)).super_("jetbrains.mps.lang.core.structure.BaseConcept").version(1).super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L)).propertyDescriptors(new ConceptDescriptorBuilder.Prop(0x720eda988b03a6aaL, "pin", new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "8218746718699890346"))).properties("pin").abstract_().sourceNode(new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "8218746718699866924")).create();
  }
  private static ConceptDescriptor createDescriptorForLCD() {
    return new ConceptDescriptorBuilder("ArduinoML.structure.LCD", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x36baf606c3055047L)).super_("jetbrains.mps.lang.core.structure.BaseConcept").version(1).super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).propertyDescriptors(new ConceptDescriptorBuilder.Prop(0x3a41d9d05f4fd036L, "bus", new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "4197875816661504054"))).properties("bus").sourceNode(new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "3943734932618432583")).create();
  }
  private static ConceptDescriptor createDescriptorForOutput() {
    return new ConceptDescriptorBuilder("ArduinoML.structure.Output", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x5d4a3f3bfee4f2baL)).super_("jetbrains.mps.lang.core.structure.BaseConcept").version(1).super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).abstract_().sourceNode(new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "6722254920715924154")).create();
  }
  private static ConceptDescriptor createDescriptorForOutputSensor() {
    return new ConceptDescriptorBuilder("ArduinoML.structure.OutputSensor", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x5d4a3f3bfee4f2beL)).super_("ArduinoML.structure.Output").version(1).super_(MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x5d4a3f3bfee4f2baL)).parents("ArduinoML.structure.Output").parentIds(MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x5d4a3f3bfee4f2baL)).propertyDescriptors(new ConceptDescriptorBuilder.Prop(0x240b543c942e3dc8L, "status", new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "2597262229270052296"))).properties("status").referenceDescriptors(new ConceptDescriptorBuilder.Ref(0x240b543c94297d23L, "sensor", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x720eda988b02ebb4L), false, new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "2597262229269740835"))).references("sensor").sourceNode(new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "6722254920715924158")).create();
  }
  private static ConceptDescriptor createDescriptorForOutputSerial() {
    return new ConceptDescriptorBuilder("ArduinoML.structure.OutputSerial", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x5d4a3f3bfee4f2bdL)).super_("ArduinoML.structure.Output").version(1).super_(MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x5d4a3f3bfee4f2baL)).parents("ArduinoML.structure.Output").parentIds(MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x5d4a3f3bfee4f2baL)).propertyDescriptors(new ConceptDescriptorBuilder.Prop(0x240b543c942c2c16L, "message", new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "2597262229269916694"))).properties("message").sourceNode(new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "6722254920715924157")).create();
  }
  private static ConceptDescriptor createDescriptorForSensor() {
    return new ConceptDescriptorBuilder("ArduinoML.structure.Sensor", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x720eda988b02ebb4L)).super_("ArduinoML.structure.Brick").version(1).super_(MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x720eda988b034b2cL)).parents("ArduinoML.structure.Brick").parentIds(MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x720eda988b034b2cL)).sourceNode(new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "8218746718699842484")).create();
  }
  private static ConceptDescriptor createDescriptorForState() {
    return new ConceptDescriptorBuilder("ArduinoML.structure.State", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b962eL)).super_("jetbrains.mps.lang.core.structure.BaseConcept").version(1).super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L)).childDescriptors(new ConceptDescriptorBuilder.Link(0x59fb62ba872b9ea0L, "transitions", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b9e00L), false, true, false, new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "6483884641801182880"))).children(new String[]{"transitions"}, new boolean[]{true}).sourceNode(new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "6483884641801180718")).create();
  }
  private static ConceptDescriptor createDescriptorForTransition() {
    return new ConceptDescriptorBuilder("ArduinoML.structure.Transition", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b9e00L)).super_("jetbrains.mps.lang.core.structure.BaseConcept").version(1).super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L)).propertyDescriptors(new ConceptDescriptorBuilder.Prop(0x59fb62ba872b9e1cL, "status", new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "6483884641801182748"))).properties("status").referenceDescriptors(new ConceptDescriptorBuilder.Ref(0x59fb62ba872cb173L, "target", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b962eL), false, new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "6483884641801253235"))).references("target").childDescriptors(new ConceptDescriptorBuilder.Link(0x4bde47a60bf58068L, "actions", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b9a1aL), true, true, false, new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "5466885776165142632")), new ConceptDescriptorBuilder.Link(0x5d4a3f3bfee4f2c4L, "output", MetaIdFactory.conceptId(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x5d4a3f3bfee4f2baL), false, false, false, new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "6722254920715924164"))).children(new String[]{"actions", "output"}, new boolean[]{true, false}).sourceNode(new SNodePointer("r:c3495eae-2a50-4eb5-87a2-5e8ab67ad9fe(ArduinoML.structure)", "6483884641801182720")).create();
  }
}
