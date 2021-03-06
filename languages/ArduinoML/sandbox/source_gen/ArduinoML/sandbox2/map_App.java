package ArduinoML.sandbox2;

/*Generated by MPS */


public class map_App {

  public static void main(String[] args) {
    System.out.println("// Code Generated by ArduinoML\n");
    System.out.println("#include <SoftwareSerial.h>\n#include <LiquidCrystal.h>");
    System.out.println("LiquidCrystal lcd(" + "2, 3, 4, 5, 6, 7, 8" + ");");
    System.out.println("/*\n * Affichage d'un message sur l'écran LCD\n */\nvoid displayOnScreen (String msg) { \n  lcd.clear();//clears the LCD and positions the cursor in the upper-left corner\n  lcd.setCursor(2,1); // On place le curseur\n  lcd.print(msg);// Print a message to the LCD.\n  // Si message supérieur à la taille de l'écran\n  if (msg.length() > 13) {\n    for (int positionCounter = 0; positionCounter < msg.length() - 13; positionCounter++) {\n      lcd.scrollDisplayLeft();  // scroll one position left:\n      delay(300); // délai d'attente\n    }  \n  }\n}");
    System.out.println("// Structural concepts");
    System.out.println("void setup() {");
    System.out.println("  Serial.begin(9600);\n  lcd.begin(16,2); //Initialisation du lcd");
    System.out.println("  pinMode(" + 12 + ", OUTPUT);");
    System.out.println("  pinMode(" + 11 + ", OUTPUT);");
    System.out.println("  pinMode(" + 9 + ", INPUT);");
    System.out.println("}");

    System.out.println("void state_" + "state1" + "() {");
    System.out.println("    // Transition " + "trans1");
    System.out.println("    String read = Serial.readString();");
    System.out.println("    if (read.indexOf(\"" + "missile procedure start" + "\") != -1) {");
    System.out.println("        displayOnScreen(\"" + "procedure enclenchee" + "\");");
    System.out.println("        digitalWrite(" + 12 + "," + "HIGH" + ");");
    System.out.println("        digitalWrite(" + 11 + "," + "LOW" + ");");
    System.out.println("        state_" + "state2" + "(); }");
    System.out.println("    else { state_" + "state1" + "(); }");
    System.out.println("}\n");
    System.out.println("void state_" + "state2" + "() {");
    System.out.println("    // Transition " + "trans2");
    System.out.println("    if (digitalRead(" + 9 + ") == " + "HIGH" + ") {");
    System.out.println("        digitalWrite(" + 11 + "," + "HIGH" + ");");
    System.out.println("        digitalWrite(" + 12 + "," + "LOW" + ");");
    System.out.println("        displayOnScreen(\"" + "missile envoye" + "\");");
    System.out.println("        state_" + "state1" + "(); }");
    System.out.println("    // Transition " + "trans3");
    System.out.println("    String read = Serial.readString();");
    System.out.println("    if (read.indexOf(\"" + "stop" + "\") != -1) {");
    System.out.println("        displayOnScreen(\"" + "aborted launch" + "\");");
    System.out.println("        digitalWrite(" + 12 + "," + "LOW" + ");");
    System.out.println("        digitalWrite(" + 11 + "," + "LOW" + ");");
    System.out.println("        state_" + "state1" + "(); }");
    System.out.println("    else { state_" + "state2" + "(); }");
    System.out.println("}\n");
    System.out.println("void loop() {state_" + "state1" + "(); }");
  }
}
