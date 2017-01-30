package ArduinoML.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.PropertySupport;
import java.util.Iterator;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class LCDBUS_PropertySupport extends PropertySupport {
  public boolean canSetValue(String value) {
    if (value == null) {
      return true;
    }
    Iterator<LCDBUS> constants = ListSequence.fromList(LCDBUS.getConstants()).iterator();
    while (constants.hasNext()) {
      LCDBUS constant = constants.next();
      if (value.equals(constant.getName())) {
        return true;
      }
    }
    return false;
  }
  public String toInternalValue(String value) {
    if (value == null) {
      return null;
    }
    Iterator<LCDBUS> constants = ListSequence.fromList(LCDBUS.getConstants()).iterator();
    while (constants.hasNext()) {
      LCDBUS constant = constants.next();
      if (value.equals(constant.getName())) {
        return constant.getValueAsString();
      }
    }
    return null;
  }
  public String fromInternalValue(String value) {
    LCDBUS constant = LCDBUS.parseValue(value);
    if (constant != null) {
      return constant.getName();
    }
    return "";
  }
}
