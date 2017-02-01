package ArduinoML.sandbox;

/*Generated by MPS */


public class map_App {

  public static void main(String[] args) {
    System.out.println("// Code Generated by ArduinoML\n");
    System.out.println("#include <SoftwareSerial.h>\n#include <LiquidCrystal.h>");
    System.out.println("LiquidCrystal lcd(" + "2, 3, 4, 5, 6, 7, 8" + ");");
    System.out.println("/*\n * Affichage d'un message sur l'écran LCD\n */\nvoid displayOnScreen (String msg) { \n  lcd.clear();//clears the LCD and positions the cursor in the upper-left corner\n  lcd.setCursor(2,1); // On place le curseur\n  lcd.print(msg);// Print a message to the LCD.\n  // Si message supérieur à la taille de l'écran\n  if (msg.length() > 13) {\n    for (int positionCounter = 0; positionCounter < msg.length() - 13; positionCounter++) {\n      lcd.scrollDisplayLeft();  // scroll one position left:\n      delay(500); // délai d'attente\n    }  \n  }\n}");
    System.out.println("// Structural concepts");
    System.out.println("void setup() {");
    System.out.println("  Serial.begin(9600);\n  lcd.begin(16,2); //Initialisation du lcd");
    System.out.println("  pinMode(" + 11 + ", OUTPUT);");
    System.out.println("  pinMode(" + 12 + ", INPUT);");
    System.out.println("}");

    System.out.println("\n// Behavioral concepts");
    System.out.println("long time = 0; long debounce = 200;\n");

    System.out.println("void state_" + "state1" + "() {");
    System.out.println("    boolean guard = millis() - time > debounce;");
    System.out.println("    if (Serial.available() > 0 && Serial.readString() == \"" + "bonjour" + "\" && guard) {");
    System.out.println("        time = millis();");
    System.out.println("        displayOnScreen(\"" + "coucou" + "\");");
    System.out.println("        state = state_" + "state2" + "(); }");
    System.out.println("    else { state_" + "state1" + "(); }");
    System.out.println("}\n");
    System.out.println("void state_" + "state2" + "() {");
    System.out.println("    boolean guard = millis() - time > debounce;");
    System.out.println("    if (digitalRead(" + 0 + ") == " + "HIGH" + " && guard) {");
    System.out.println("        time = millis();");
    System.out.println("        digitalWrite(" + 11 + "," + "LOW" + ");");
    System.out.println("        state = state_" + "state1" + "(); }");
    System.out.println("    if (Serial.available() > 0 && Serial.readString() == \"" + "transition1" + "\" && guard) {");
    System.out.println("        time = millis();");
    System.out.println("        displayOnScreen(\"" + "transition faite" + "\");");
    System.out.println("        digitalWrite(" + 11 + "," + "LOW" + ");");
    System.out.println("        state = state_" + "state1" + "(); }");
    System.out.println("    else { state_" + "state2" + "(); }");
    System.out.println("}\n");
    System.out.println("void loop() {}");
  }
}
