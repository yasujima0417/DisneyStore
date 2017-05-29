package shopping;

import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;

public class PriceUpComparator implements Comparator<ItemBean> {

    //比較メソッド（データクラスを比較して-1, 0, 1を返すように記述する）
    public int compare(ItemBean a, ItemBean b) {
        int no1 = a.getPrice();
        int no2 = b.getPrice();

        //価格の昇順でソートされる
        if (no1 > no2) {
            return 1;

        } else if (no1 == no2) {
            return 0;

        } else {
            return -1;

        }
    }

}
class PriceDownComparator implements Comparator<ItemBean> {

    //比較メソッド（データクラスを比較して-1, 0, 1を返すように記述する）
    public int compare(ItemBean a, ItemBean b) {
        int no1 = a.getPrice();
        int no2 = b.getPrice();

        //価格の降順でソートされる
        if (no1 > no2) {
            return -1;

        } else if (no1 == no2) {
            return 0;

        } else {
            return 1;

        }
    }

}
class IdUpComparator implements Comparator<ItemBean> {


    public int compare(ItemBean a, ItemBean b) {
        String no1 = a.getItemId();
        String no2 = b.getItemId();
        return no1.compareTo(no2);
    }

}
class IdDownComparator implements Comparator<ItemBean> {


    public int compare(ItemBean a, ItemBean b) {
    	String no1 = a.getItemId();
        String no2 = b.getItemId();
        return (no1.compareTo(no2))*(-1);

    }

}
class NameUpComparator implements Comparator<ItemBean> {


    public int compare(ItemBean a, ItemBean b) {
    	Collator collator = Collator.getInstance(Locale.JAPANESE);
        String no1 = a.getItemName();
        String no2 = b.getItemName();
        return collator.compare(no1, no2);
    }

}
class NameDownComparator implements Comparator<ItemBean> {


    public int compare(ItemBean a, ItemBean b) {
    	Collator collator = Collator.getInstance(Locale.JAPANESE);
    	String no1 = a.getItemName();
        String no2 = b.getItemName();
        return (collator.compare(no1, no2))*(-1);

    }

}
class QuantityUpComparator implements Comparator<ItemBean> {

    //比較メソッド（データクラスを比較して-1, 0, 1を返すように記述する）
    public int compare(ItemBean a, ItemBean b) {
        int no1 = a.getQuantity();
        int no2 = b.getQuantity();

        //在庫数の昇順でソートされる
        if (no1 > no2) {
            return 1;

        } else if (no1 == no2) {
            return 0;

        } else {
            return -1;

        }
    }

}
class QuantityDownComparator implements Comparator<ItemBean> {

    //比較メソッド（データクラスを比較して-1, 0, 1を返すように記述する）
    public int compare(ItemBean a, ItemBean b) {
        int no1 = a.getQuantity();
        int no2 = b.getQuantity();

        //在庫数の降順でソートされる
        if (no1 > no2) {
            return -1;

        } else if (no1 == no2) {
            return 0;

        } else {
            return 1;

        }
    }

}