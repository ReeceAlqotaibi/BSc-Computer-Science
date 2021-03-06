package LibrarySystem;

/**
 * Facilitates the creation of magazine type objects. All properties except from publisher inherit from the parent class, LoanableItem.
 * 
 * @version 1.0
 */
class Magazine extends LoanableItem {
    private String publisher = "";
    
    /**
     * Constructor for magazine objects
     * 
     * Passes through the specified parameters to the methods called from the parent class, (eg SetID), to create the magazine with the given properties at runtime.
     * (eg. SetName("Vogue") will create a magazine with the name propery "Vogue".
     * 
     * @param magID - Type: int - The library ID of this magazine. (eg. 1)
     * @param magName - Type: String - The name of this magazine. (eg "Vogue")
     * @param magPublisher - Type: String - The publisher of this magazine. (eg. "Condé Nast")
     * @param magLoanStatus - Type: String - If the magazine is on loan or not. (eg. "Yes")
     * @param magReturnDate - Type: String - The date the magazine should be returned to the library. (eg. ("25-12-2020")
     */
    public Magazine(int magID, String magName, String magPublisher, String magLoanStatus, String magReturnDate) {
        SetID(magID);
        SetName(magName);
        publisher = magPublisher;
        SetLoanStatus(magLoanStatus);
        SetReturnDate(magReturnDate); 
    }
}