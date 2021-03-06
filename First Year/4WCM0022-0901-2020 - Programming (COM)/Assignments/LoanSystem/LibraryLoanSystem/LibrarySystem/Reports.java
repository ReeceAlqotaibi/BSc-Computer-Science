package LibrarySystem;
import java.io.*;

/**
 * Tester class to create a collection of different types of objects and provide multiple ways of generating reporting information for these.
 *
 * @version 1.0
 */
class Reports {
    LoanableItem [] items;
    
    /**
     *  This constructor creates at runtime, the declared objects and stores them in a collection of loanable items, deriving from the parent and child classes. 
     */
    public Reports() {
        items = new LoanableItem[] {
            new Book(1, "A Game of Thrones", "George R. R. Martin", "Yes", "25-12-2020"),
            new Book(2, "A Clash of Kings", "George R. R. Martin", "No", ""),
            new Book(3, "A Storm of Swords", "George R. R. Martin", "Yes", "26-12-2020"),
            new Book(4, "A Feast for Crows", "George R. R. Martin", "No", ""),
            new Book(5, "A Dance with Dragons", "George R. R. Martin", "Yes", "25-01-2021"),
            new DVD(6, "Harry Potter and the Philospher's Stone", "Warner Bros.", "No", ""),
            new DVD(7, "Harry Potter Chamber of Secrets", "Warner Bros.", "Yes", "19-12-2020"),
            new DVD(8, "Harry Potter and the Prisoner of Azkaban", "Warner Bros", "No", ""),
            new DVD(9, "Harry Potter and the Goblet of Fire", "Warner Bros", "Yes", "25-12-2020"),
            new DVD(10, "Harry Potter and the Half-Blood Prince", "Warner Bros", "No", ""),
            new Magazine(11, "National Geographic", "Warner Bros", "Yes", "24-12-2020"),
            new Magazine(12, "Women's Health", "George R. R. Martin", "No", ""),
            new Magazine(13, "Vogue", "Condé Nast", "Yes", "25-04-2021"),
            new Magazine(14, "The Critic", "Michael Mosbacher", "No", ""),
            new Magazine(15, "Men's Fitness", "Kelsey Media", "Yes", "23-02-2021"),
            new CD(16, "Babel", "Mumford and Sons", "", ""),
            new CD(17, "A Thousand Suns", "Linkin Park", "Yes", "25-12-2020"),
            new CD(18, "Only by the Night", "Kings of Leon", "No", ""),
            new CD(19, "No Pads, No Helmets...Just Balls", "Simple Plan", "Yes", "02-02-2020"),
            new CD(20, "21", "Adele", "No", "")
        };
    }
    
    /** 
     * 
     * 1) Iterates through the library collection defined in the constructor for this class </br>
     * 2) Checks whether each object in the collection is on loan </br>
     * 3) Incremens itemsOnLoan by 1, if the item is on loan
     *
     * @return    The number of items that are on loan.
     */
    private int CalculateItemsOnLoan() {
        int itemsOnLoan = 0;
        for (int i = 0; i < items.length; i++) {
            if(items[i].GetLoanStatus() == "Yes") {
                itemsOnLoan++;
            }
        }        
        return itemsOnLoan;
    }
    
    /** 
     * 
     * 1) Iterates through the library collection defined in the constructor for this class </br>
     * 2) Invokes the GenerateReport method in the parent class prints the output to the console for each iteration </br>
     * 3) When iteration is complete the method prints a summary to the console, using the collection length and the CalculateItemsOnLoan method to retrieve the number of items on loan.
     * 
     */
    public void PrintReport() {
        for(int i = 0; i < items.length; i++ ) {
            System.out.println(items[i].GenerateReport());
        }
        System.out.println("\n" + "TOTAL: " + items.length + " items with " + CalculateItemsOnLoan() + " on loan.");
    }
    
    /** 
     * 
     * 1) Iterates through the library collection defined in the constructor for this class </br>
     * 2) Invokes the GenerateReport method in the parent and class appends each ojbect to a text file with specified filename. </br>
     * 3) When iteration is complete the method appends a summary to the text, using the collection length and the CalculateItemsOnLoan method to retrieve the number of items on loan.
     * 
     */
    public void SaveReport() throws FileNotFoundException {
        PrintWriter output = new PrintWriter("Library Report.txt");
        for(int i = 0; i < items.length; i++ ) {
            output.println((items[i].GenerateReport()));
        }
        output.println("\n" + "TOTAL: " + items.length + " items with " + CalculateItemsOnLoan() + " on loan.");
        output.flush();
        output.close();        
    }
}