/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TheLittleJointModels;

/**
 *
 * @author rohan
 */
public class OrderDetail {
     
    private int menuitemid;
 
    public int getMenuitemid() {
        return this.menuitemid;
    }
 
    public void setMenuitemid(int num) {
        this.menuitemid = num;
    }
    
    private int price;
 
    public int getPrice() {
        return this.price;
    }
 
    public void setPrice(int num) {
        this.price = num;
    }
    
    private int quantity;
 
    public int getQuantity() {
        return this.quantity;
    }
 
    public void setQuantity(int num) {
        this.quantity = num;
    }
    
    private int total;
 
    public int getTotal() {
        return this.total;
    }
 
    public void setTotal(int num) {
        this.total = num;
    }
    
    private String menuname;
 
    public String getMenuName() {
        return this.menuname;
    }
 
    public void setMenuName(String name) {
        this.menuname = name;
    }
}
