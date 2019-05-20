package com.claim.entity;

//import java.io.FileReader;

import javax.persistence.Entity;
import javax.persistence.Id;

/*import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;*/

@Entity
public class Senators {
	
	@Id
	private int senatorID;
	private String name;
	private String contact;		
	private String state;		
	private String pic;		
	

	public int getSenatorID() {
		return senatorID;
	}

	public void setSenatorID(int senatorID) {
		this.senatorID = senatorID;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	
	public String getPic() {
		return pic;
	}


 	
    public void setPic(String pic) {
 
		this.pic = pic;
	}

	@Override
	public String toString() {
		return "Senators [senatorID=" + senatorID + ", name=" + name + ", contact=" + contact + ", state=" + state
				+ ", pic=" + pic + "]";
	}
	
    
    //will redo something similiar in home controller later
    //going to just hard code in database for now
/*	public String getSenatorByState() {
	// parsing file "senatorJSON.json" 
	 String json = "senatorJSON.json";
    JSONObject obj = new JSONOBject(json);
	try {
		obj = new JSONObject(json);
		String
	} catch (JSONException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
      
    
    
    return "s";
	}*/
	
}
