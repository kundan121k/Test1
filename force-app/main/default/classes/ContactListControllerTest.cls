@isTest
private class ContactListControllerTest {
    static testMethod void testContactListRetrieval() {
        // Create test data
        Contact testContact1 = new Contact(FirstName = 'John', LastName = 'Doe', Email = 'john.doe@example.com');
        Contact testContact2 = new Contact(FirstName = 'Jane', LastName = 'Smith', Email = 'jane.smith@example.com');
        
        // Insert test contacts
        List<Contact> testContacts = new List<Contact>{testContact1, testContact2};
        insert testContacts;
        
        // Instantiate the ContactListController
        ContactListController controller = new ContactListController();
        
        // Retrieve the list of contacts
        List<Contact> retrievedContacts = controller.getContactList();
        
        // Verify that the list contains the expected number of contacts
        System.assertEquals(2, retrievedContacts.size(), 'Incorrect number of contacts retrieved');
        
        // Verify the details of the first contact
        System.assertEquals(testContact1.Id, retrievedContacts[0].Id, 'Incorrect contact ID');
        System.assertEquals(testContact1.FirstName, retrievedContacts[0].FirstName, 'Incorrect first name');
        System.assertEquals(testContact1.LastName, retrievedContacts[0].LastName, 'Incorrect last name');
        System.assertEquals(testContact1.Email, retrievedContacts[0].Email, 'Incorrect email');
        
        // Verify the details of the second contact
        System.assertEquals(testContact2.Id, retrievedContacts[1].Id, 'Incorrect contact ID');
        System.assertEquals(testContact2.FirstName, retrievedContacts[1].FirstName, 'Incorrect first name');
        System.assertEquals(testContact2.LastName, retrievedContacts[1].LastName, 'Incorrect last name');
        System.assertEquals(testContact2.Email, retrievedContacts[1].Email, 'Incorrect email');
    }
}