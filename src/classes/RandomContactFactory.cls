@isTest
public class RandomContactFactory {
	public static List<Contact> generateRandomContacts(Integer num, String name){
		List<Contact> cntactList = new List<Contact>();

		for(Integer i=0; i<num; i++){
			Contact con = new Contact(LastName=name + i);
			cntactList.add(con);
		}

		return cntactList;
	}
}