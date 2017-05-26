package administrator;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

import shopping.ShoppingDao;

public class AdministratorView {
	public static Administrator administrator = new Administrator("管理者画面");

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		administrator.setVisible(true);


	}



}
class Administrator extends JFrame implements ActionListener{
	JPanel p = new JPanel();

	public String filepath;

	public String filename;

    public static JLabel label1 = new JLabel();
    public static Administrator frame = new Administrator("商品登録画面");


    /*public JButton start = new JButton("開始");
    public JButton choose = new JButton("選択");
    public JButton close = new JButton("終了");*/


	public static void main(String args[]){

	  frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	  frame.setVisible(true);
	}

  public Administrator(String title){
    setTitle(title);
    setBounds(500, 500, 700, 350);
    setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);


    label1.setFont(new Font("ＭＳ ゴシック", Font.BOLD, 12));
    label1.setPreferredSize(new Dimension(300,300));
    label1.setBackground(Color.WHITE);
    label1.setOpaque(true);

    JButton choose = new JButton("選択");
    JButton insert = new JButton("登録");
    JButton close = new JButton("終了");
    insert.addActionListener(new viewInsert());
    close.addActionListener(new viewClose());
    choose.addActionListener(new viewChoose());


    p.add(label1);
    p.add(choose);
    p.add(insert);
    p.add(close);

    Container contentPane = getContentPane();
    contentPane.add(p, BorderLayout.CENTER);
  }
public class viewClose implements ActionListener{
  public void actionPerformed(ActionEvent e){
	  System.exit(JFrame.EXIT_ON_CLOSE);
  }
}
public class viewInsert implements ActionListener{
	  public void actionPerformed(ActionEvent e){
		  String[] data;
			try{

				File f = new File(filepath);
				System.out.println("putprice"+filepath);
				BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(f),"SJIS"));
				String line; //1行ずつ読み込む
				while ((line = br.readLine()) != null) {


	                String[] columns = line.split(",",-1);
	                outside:try{
	                for (int j = 0; j < columns.length; j++) {
	                    System.out.println(j + " : " + columns[j]);
	                    if (columns[j].matches(".*"+"商品"+".*")) {
							break outside;
						}
	                }

	                String itemID = columns[0];
	                System.out.println(itemID);
	                String itemName = columns[1];
	                System.out.println(itemName);
	                String itemImage = columns[2];
	                System.out.println(itemImage);
	                int item_price = Integer.parseInt(columns[3]);
	                System.out.println(item_price);
	                String itemCategory = columns[4];
	                System.out.println(itemCategory);
	                int itemStock = Integer.parseInt(columns[5]);
	                System.out.println(itemStock);
	                System.out.println("");
	                ShoppingDao dao = new ShoppingDao();

						dao.insertItem(itemID,itemName,itemImage,item_price,itemCategory);
					} catch (SQLException e1) {
						// TODO 自動生成された catch ブロック
						e1.printStackTrace();
					}
	            }


				System.out.println("line:"+line);




			}catch (IOException e1){
				System.out.println(e1);
			}
	  }
	}
public class viewChoose implements ActionListener{
	  public void actionPerformed(ActionEvent e){
		  JFileChooser filechooser = new JFileChooser();
		  int selected = filechooser.showOpenDialog(filechooser);
		    if (selected == JFileChooser.APPROVE_OPTION){
		      File file = filechooser.getSelectedFile();
		      filepath = file.getPath();
		      filename = file.getName();
		      label1.setText(filename);
		    }else if (selected == JFileChooser.CANCEL_OPTION){

		    }else if (selected == JFileChooser.ERROR_OPTION){

		    }
	  }
}
@Override
public void actionPerformed(ActionEvent e) {
	// TODO Auto-generated method stub

}
}
