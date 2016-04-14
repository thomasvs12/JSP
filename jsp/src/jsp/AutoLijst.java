package jsp;

import java.util.ArrayList;

/**
 * Klasse met een lijst van auto's
 * @author piet
 */
public class AutoLijst {
    private ArrayList<Auto> autolijst;
    
    /**
     * Constructor die de lijst aanmaakt en auto's toevoegt
     */
    public AutoLijst() {
        autolijst = new ArrayList<Auto>();
        Auto ford1 = new Auto("Ford", "Fiesta", 23999, 
          "images/autos/fordfiesta.jpg", "2O_appYMgqE");
        autolijst.add(ford1);
        Auto ford2 = new Auto("Ford", "Focus", 18995, 
          "images/autos/fordfocus.jpg", "vwQhpj64MOA");
        autolijst.add(ford2);
        Auto opel1 = new Auto("Opel", "Astra", 14895, 
          "images/autos/opelastra.jpg","e-6K1B6ilbw");
        autolijst.add(opel1);
        Auto opel2 = new Auto("Opel", "Insignia", 65450, 
          "images/autos/opelinsignia.jpg","tKDyRwX0Dj8");
        autolijst.add(opel2);
        Auto subaru1 = new Auto("Subaru", "Forester", 34750, 
          "images/autos/subaruforester.jpg","eUk-kl6ZLW8");
        autolijst.add(subaru1);
        Auto subaru2 = new Auto("Subaru", "Impreza", 28345, 
          "images/autos/subaruimpreza.jpg","RyNX_InH4MI");
        autolijst.add(subaru2);
        Auto mercedes1 = new Auto("Mercedes", "E 63", 110995, 
          "images/autos/mercedede63.jpg","K0NUeA6Ms7s");
        autolijst.add(mercedes1);
        Auto mercedes2 = new Auto("Mercedes", "CLA 45", 190780, 
          "images/autos/mercedescla45.jpg","EcealN5SrT0");
        autolijst.add(mercedes2);
        Auto ferrari1 = new Auto("Ferrari", "612 GTO", 350500, 
          "images/autos/ferrari612.jpg", "U_ed8pBMel4");
        autolijst.add(ferrari1);
        Auto citroen1 = new Auto("Citroen", "2CV", 459, 
          "images/autos/citroen2cv.jpg","oXfcLR3lvz0");
        autolijst.add(citroen1);
        Auto mini1 = new Auto("Mini", "Cooper", 34495, 
          "images/autos/minicooper.jpg", "ugNA5w0htMA");
        autolijst.add(mini1);
     }
    
    /**
     * 
     * @return geeft de lijst met auto's
     */
    public ArrayList<Auto> getLijst() {
        return autolijst;
    }
    
    
    
    /**
     * Ten behoeve van het select merk input veld
     * @return een lijst met alle unieke merken
     */
    public ArrayList<Auto> getMerkenMinMax(String merk ,int minprijs ,int maxprijs) {
        ArrayList<Auto> merklijst = new ArrayList<Auto>();
       for (Auto auto: this.autolijst) {
            if ( (merk.equals("alle") || 
            		auto.getMerk().equals(merk)) && 
            		auto.getPrijs() >= minprijs && 
            		auto.getPrijs() <= maxprijs) {
             merklijst.add(auto);
            }
           
        }
        return merklijst;
    }
}
