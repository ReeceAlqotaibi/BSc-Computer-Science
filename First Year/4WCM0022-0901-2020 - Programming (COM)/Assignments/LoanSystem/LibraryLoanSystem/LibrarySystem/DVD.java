package LibrarySystem;

/**
 * Facilitates the creation of DVD type objects. All properties except from publisher inherit from the parent class, LoanableItem.
 * 
 * @version 1.0
 */
class DVD extends LoanableItem {
    private String publisher = "";
    
    /**
     * Constructor for DVD objects
     * 
     * Passes through the specified parameters to the methods called from the parent class, (eg SetID), to create the DVD with the given properties at runtime.
     * (eg. SetName("Gladiator") will create a DVD with the name property "Gladiator".
     * 
     * @param dvdID - Type: int - The library ID of this DVD. (eg. 3)
     * @param dvdName - Type: String - The name of this DVD. (eg "Gladiator")
     * @param dvdPublisher - Type: String - The publisher of this DVD. (eg. "Universal")
     * @param dvdLoanStatus - Type: String - If the DVD is on loan or not. (eg. "Yes")
     * @param dvdReturnDate - Type: String - The date the DVD should be returned to the library. (eg. ("25-12-2020")
     */
    public DVD (int dvdID, String dvdName, String dvdPublisher, String dvdLoanStatus, String dvdReturnDate) {
        SetID(dvdID);
        SetName(dvdName);
        publisher = dvdPublisher;
        SetLoanStatus(dvdLoanStatus);
        SetReturnDate(dvdReturnDate); 
    }
}