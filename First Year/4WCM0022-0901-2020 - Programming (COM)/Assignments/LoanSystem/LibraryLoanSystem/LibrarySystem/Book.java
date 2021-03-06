package LibrarySystem;

/**
 * Facilitates the creation of book type objects. All properties except from author inherit from the parent class, LoanableItem.
 * 
 * @version 1.0
 */
class Book extends LoanableItem {
    private String author = "";
    
    /**
     * Constructor for books objects
     * 
     * Passes through the specified parameters to the methods called from the parent class, (eg SetID), to create the book with the given properties at runtime.
     * (eg. SetName("Harry Potter") will create a book with the name property "Harry Potter".
     * 
     * @param bookID - Type: int - The library ID of this book. (eg. 2)
     * @param bookName - Type: String - The name of this book. (eg "Harry Potter")
     * @param bookAuthor - Type: String - The author of this book. (eg. "JK Rowling")
     * @param bookLoanStatus - Type: String - If the book is on loan or not. (eg. "Yes")
     * @param bookReturnDate - Type: String - The date the book should be returned to the library. (eg. ("25-12-2020")
     */
    public Book(int bookID, String bookName, String bookAuthor, String bookLoanStatus, String bookReturnDate) {
        SetID(bookID);
        SetName(bookName);
        author = bookAuthor;
        SetLoanStatus(bookLoanStatus);
        SetReturnDate(bookReturnDate); 
    }
}