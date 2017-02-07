package ArduinoML.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.runtime.CheckingNodeContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.SNodePointer;

public class Transition_Constraints extends BaseConstraintsDescriptor {
  public Transition_Constraints() {
    super(MetaAdapterFactory.getConcept(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b9e00L, "ArduinoML.structure.Transition"));
  }

  @Override
  public boolean hasOwnCanBeChildMethod() {
    return true;
  }
  @Override
  public boolean canBeChild(@Nullable SNode node, SNode parentNode, SNode link, SNode childConcept, final IOperationContext operationContext, @Nullable final CheckingNodeContext checkingNodeContext) {
    boolean result = static_canBeAChild(node, parentNode, link, childConcept, operationContext);

    if (!(result) && checkingNodeContext != null) {
      checkingNodeContext.setBreakingNode(canBeChildBreakingPoint);
    }

    return result;
  }
  public static boolean static_canBeAChild(final SNode node, SNode parentNode, SNode link, SNode childConcept, final IOperationContext operationContext) {
    if (!(SNodeOperations.isInstanceOf(parentNode, MetaAdapterFactory.getConcept(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b962eL, "ArduinoML.structure.State")))) {
      return false;
    }
    final Wrappers._boolean nameAlreadyUsed = new Wrappers._boolean(false);
    ListSequence.fromList(SLinkOperations.getChildren(SNodeOperations.cast(parentNode, MetaAdapterFactory.getConcept(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b962eL, "ArduinoML.structure.State")), MetaAdapterFactory.getContainmentLink(0x5edee0cf46e149f9L, 0x971e6b9e2e5cae16L, 0x59fb62ba872b962eL, 0x59fb62ba872b9ea0L, "transitions"))).visitAll(new IVisitor<SNode>() {
      public void visit(SNode it) {
        if (!(nameAlreadyUsed.value)) {
          if (SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")).equalsIgnoreCase(SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"))) && it != node) {
            nameAlreadyUsed.value = true;
          }
        }
      }
    });
    return !(nameAlreadyUsed.value);
  }
  private static SNodePointer canBeChildBreakingPoint = new SNodePointer("r:d79d2cda-3667-41d9-9202-b2af5f45b79f(ArduinoML.constraints)", "568827680998507491");
}
