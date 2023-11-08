@isTest
public class AccountRetrievalTest {

    @isTest
    static void testGetAccounts() {
        // Insert test data
        List<Account> testAccounts = new List<Account>();
        for (Integer i = 0; i < 5; i++) {
            Account acc = new Account(
                Name = 'Test Account ' + i,
                Industry = 'Test Industry ' + i,
                Phone = '+91123-456-789' + i
            );
            testAccounts.add(acc);
        }
        insert testAccounts;

        // Call the method from the AccountRetrieval class
        AccountRetrieval accountRetrieval = new AccountRetrieval();
        List<Account> retrievedAccounts = accountRetrieval.getAccounts();

        // Verify that the retrieved data matches the test data
        System.assertEquals(testAccounts.size(), retrievedAccounts.size(), 'Number of retrieved accounts should match the number of test accounts');
        for (Integer i = 0; i < testAccounts.size(); i++) {
            Account testAccount = testAccounts[i];
            Account retrievedAccount = retrievedAccounts[i];
            System.assertEquals(testAccount.Id, retrievedAccount.Id, 'Account Id should match');
            System.assertEquals(testAccount.Name, retrievedAccount.Name, 'Account Name should match');
            System.assertEquals(testAccount.Industry, retrievedAccount.Industry, 'Account Industry should match');
            System.assertEquals(testAccount.Phone, retrievedAccount.Phone, 'Account Phone should match');
        }
    }
}