package jsp;

import java.text.DecimalFormat;

public class Auto {
    private final String merk;
    private final String type;
    private final int prijs;
    private final String fotourl;
    private final String videourl;
    
    public Auto(String merk, String type, int prijs, String fotourl, String videourl) {
        this.merk = merk;
        this.type = type;
        this.prijs = prijs;
        this.fotourl = fotourl;
        this.videourl = videourl;
    }
    
    public String getMerk() {
        return merk;
    }
    
    public String getType() {
        return type;
    }
    
    public int getPrijs() {
    	
        return prijs;
    }
    
    public String getFoto() {
        return fotourl;
    }
    public String getvideourl() {
    	return videourl;
    }
    
    
    /**
      *
      * @return geeft prijs als geformatteerde String
      */
    public String getPrijsFormat() {
    	DecimalFormat df = new DecimalFormat("#,##0.--");
    	double prijs = (double) this.getPrijs();
    	String sPrijs = df.format(prijs);
    	return sPrijs;
    }

}
