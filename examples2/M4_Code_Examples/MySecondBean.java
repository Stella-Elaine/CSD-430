package coffeeBeans;

public class MySecondBean implements java.io.Serializable{
    private int intValue;
    private double doubleValue;

    public MySecondBean() {

    }
    
    public void setIntValue(String s){
        intValue = Integer.parseInt(s);
    }
    
    public String getIntValue(){
        return Integer.toString(intValue);
    }
    
    public void setDoubleValue(String s){
        doubleValue = Double.parseDouble(s);
    }
    
    public String getDoubleValue(){
        return Double.toString(doubleValue);
    }
}
