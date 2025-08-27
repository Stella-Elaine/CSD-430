package coffeeBeans;

public class MyFirstBean implements java.io.Serializable {
    
    private String var;

    public MyFirstBean() {
        var = "DefaultValue";
    }
    
    public void setVar(String s){
        var = s;
    }
    
    public String getVar(){
        return var;
    }
}
