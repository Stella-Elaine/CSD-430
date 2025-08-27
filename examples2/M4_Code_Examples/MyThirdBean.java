package coffeeBeans;

public class MyThirdBean implements java.io.Serializable {

    private int valueOne;
    private int valueTwo;
    private int sum;

    public MyThirdBean() {

    }
    
    public void setValueOne(String s){
        valueOne = Integer.parseInt(s);
    }
    
    public void setValueTwo(String s){
        valueTwo = Integer.parseInt(s);
    }
    
    public String getSum(){
        sum = valueOne + valueTwo;
        return Integer.toString(sum);
    }
}
