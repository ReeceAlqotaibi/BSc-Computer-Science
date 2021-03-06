package LibrarySystem;

/**
 * This class is the parent class for all loanable items in the library system. Shared properties and methods used by these iterms are defined in this class. </br>
 * Setters are used to set the properties for each object. These are called in each objects contructor, as defined in the child classes. <br>
 * All fields are created private and then changed/set for each object with the relevant setter. </br>
 * The protected access modifier is used for setters as to not expose them to anything other than the child classes. Modifying of objects is not defined in the assignment scope. </br>
 * The GetObjectType method is private as this is not needed outside of the parent class.
 * 
 * @version 1.0
 */
class LoanableItem {
    private int ID = 0;
    private String name = "";
    private String loanStatus = "";
    private String returnDate = "";

    //Start of Setters
    /** 
     * Parses the value given to the constuctor for this method when the ojbect was created and assigns this to the ID field/property for the current object.
     */
    protected void SetID(int inID) {
        this.ID = inID;
    }
    
    /** 
     * Parses the value given to the constuctor for this method when the ojbect was created and assigns this to the name field/property for the current object.
     */
    protected void SetName(String inName) {
        this.name = inName;
    }
    
    /** 
    * Parses the value given to the constuctor for this method when the ojbect was created and assigns this to the loanStatus field/property for the current object.
    */
    protected void SetLoanStatus(String inStatus) {
        this.loanStatus = inStatus;
    }
    
    /** 
     * Parses the value given to the constuctor for this method when the ojbect was created and assigns this to the returnDate field/property for the current object.
     */
    protected void SetReturnDate(String inDate) {
        this.returnDate = inDate;
    }
    //End of setters
    
    //Start of getters
    /** 
     * 1) Gets the current objects class name
     *
     *
     * @return  The class name (eg. Book, Magazine)
     */
    private String GetObjectType() {
       return this.getClass().getSimpleName();
    }
    
    /**
     * Retrieves the loan status of the current object, which is set by the SetLoanStatus method in each objects constructor.
     * 
     * @return    The item loan status (eg "Yes")
     */ 
    public String GetLoanStatus() {
        return loanStatus;
    }
    //End of getters
    
    /** 
     * The reportDetails field is generated by invoking the specified methods and returning them into the string.
     * The exact format of the reportDetails field is determined by invoking the GetLoanStatus method and checking whether or not the current object is on loan.
     * 
     * @return    The object report format (reportDetails). A return date is appended to the end of the string if the item is on loan, by invoking the comparing the loanStatus of the object in iteration 
     *  and adding the return value to the string.
     */
    public String GenerateReport() {
        String reportDetails = "Item-" + this.ID + ", " + GetObjectType() + ", "  + this.name + ", " +  this.loanStatus;
        
        if(this.loanStatus == "No") {
            return reportDetails;
        }
        else {
            return reportDetails + ", " + this.returnDate;
        }
    }
}