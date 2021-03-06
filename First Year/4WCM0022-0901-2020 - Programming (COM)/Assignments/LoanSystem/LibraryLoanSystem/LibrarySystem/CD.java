package LibrarySystem;

/**
 * Facilitates the creation of CD type objects. All properties except from artist inherit from the parent class, LoanableItem.
 * 
 * @version 1.0
 */
class CD extends LoanableItem {
    private String artist = "";
    
    /**
     * Constructor for CD objects
     * 
     * Passes through the specified parameters to the methods called from the parent class, (eg SetID), to create the CD with the given properties at runtime.
     * (eg. SetName("A Thousand Suns") will create a CD with the name property "A Thousand Suns".
     * 
     * @param cdID - Type: int - The library ID of this CD. (eg. 4)
     * @param cdName - Type: String - The name of this CD. (eg "A Thousand Suns")
     * @param cdArtist - Type: String - The artist of this CD. (eg. "Linkin Park")
     * @param cdLoanStatus - Type: String - If this CD is on loan or not. (eg. "Yes")
     * @param cdReturnDate - Type: String - The date the CD should be returned to the library. (eg. ("25-12-2020")
     */
    public CD(int cdID, String cdName, String cdArtist, String cdLoanStatus, String cdReturnDate) {
        SetID(cdID);
        SetName(cdName);
        artist = cdArtist;
        SetLoanStatus(cdLoanStatus);
        SetReturnDate(cdReturnDate); 
    }
}