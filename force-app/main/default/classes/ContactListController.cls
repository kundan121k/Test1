public with sharing class ContactListController {
    public List<Contact> contactList { get; set; }

    public ContactListController() {
        // Constructor
        contactList = [SELECT Id, FirstName, LastName, Email FROM Contact];
    }

    public List<Contact> getContactList() {
        return contactList;
    }
}