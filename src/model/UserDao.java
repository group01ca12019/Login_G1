package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UserDao {
	  public static ArrayList<User> listCustomer = getListCustomer();
	  
	  private static ArrayList<User> getListCustomer() {
	        ArrayList<User> index = new ArrayList<>();
	        try {
	            Connection connect = ConnectDatabase.getSQLServerConnection();
	            PreparedStatement statement = connect.prepareStatement("SELECT * FROM [dbo].[User]");
	            ResultSet result = statement.executeQuery();
	            while (result.next()) {
	                String user = result.getString(1);
	                System.out.println(user);
	                String pass = result.getString(2);
	               
	                index.add(new User(user, pass));
	            }
	        } catch (Exception ex) {
	            System.out.println("error");
	        }
	        return index;
	    }
	  
	  public static int findIndexAccount(String user) {
	        int index = 0;
	        for (User u : listCustomer) {
	            if (!u.getName().equals(user)) {
	                index++;
	            }else{
	                break;
	            }
	        }
	        if (index >= listCustomer.size()) {
	            index = -1;
	        }
	        return index;
	    }
	    
	   

	    public static boolean check(String user, String password) {
	        if (findIndexAccount(user) == -1) {
	            return false;
	        }
	        User u = listCustomer.get(findIndexAccount(user));
	        if (u != null) {
	            if (u.getPass().equals(password)) {
	                return true;
	            } else {
	                return false;
	            }
	        }
	        return false;
	    }

}
