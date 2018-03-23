@isTest
private class TestRestrictContactByName {
    @isTest
	static void testInsert(){
		List<Contact> contactList =  RandomContactFactory.generateRandomContacts(1,'INVALIDNAME');
//		Contact contact = new Contact(LastName='INVALIDNAME');

        Test.startTest();
//        Database.SaveResult result = Database.insert(contact, false);
        Database.SaveResult result = Database.insert(contactList[0], false);
        Test.stopTest();

		System.debug(result.isSuccess());
		System.debug(result.getErrors().size());
		System.debug(result.getErrors()[0].getMessage());

        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',
                             result.getErrors()[0].getMessage());
    }

    @isTest
	static void testUpdate(){
//		Contact contact = new Contact(LastName='XXX');
//		insert contact;
//		contact.LastName = 'INVALIDNAME';
		List<Contact> contactList =  RandomContactFactory.generateRandomContacts(1,'XXX');
		insert contactList;
		contactList[0].LastName = 'INVALIDNAME';

        Test.startTest();
//        Database.SaveResult result = Database.update(contact, false);
        Database.SaveResult result = Database.insert(contactList[0], false);
        Test.stopTest();

        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',
                             result.getErrors()[0].getMessage());
    }
}