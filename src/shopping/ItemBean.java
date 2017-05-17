package shopping;

import java.io.Serializable;

public class ItemBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private String item_id_;
    private String item_name_;
    private String item_img_;
    private int price_;
    private int quantity_;

    public ItemBean() {
        this.item_id_ = "";
        this.item_name_ = "";
        this.item_img_ = "";
        this.price_ = 0;
        this.quantity_ = 0;
    }

    public ItemBean(String item_id, String item_name,String item_img, int price, int quantity) {
        this.item_id_ = item_id;
        System.out.println(item_id_);
        this.item_name_ = item_name;
        System.out.println(item_name_);
        this.item_img_ = item_img;
        System.out.println(item_img_);
        this.price_ = price;
        System.out.println(price_);
        this.quantity_ = quantity;
        System.out.println(quantity_);
    }

    public void setItemId(String item_id) {
        this.item_id_ = item_id;
    }

    public String getItemId() {
        return this.item_id_;
    }

    public void setItemName(String item_name) {
        this.item_name_ = item_name;
    }

    public String getItemName() {
        return this.item_name_;
    }

    public void setItemImg(String item_img){
    	this.item_img_=item_img;
    }

    public String getItemImg(){
    	return this.item_img_;
    }

    public void setPrice(int price) {
        this.price_ = price;
    }

    public int getPrice() {
        return this.price_;
    }

    public void setQuantity(int quantity) {
        this.quantity_ = quantity;
    }

    public int getQuantity() {
        return this.quantity_;
    }

}