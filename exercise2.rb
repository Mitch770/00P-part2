=begin 
Create a class called Book.
Your class should have two class variables: @@on_shelf and @@on_loan. Both should start as empty arrays. @@on_shelf will contain
 the collection of book objects that are available to be lent out and @@on_loan will contain the collection of books that are currently
  being borrowed.
Your class will also need an attr_accessor for due_date.
Your class should have the following methods:
an instance method initialize
an instance method borrow
an instance method return_to_library
an instance method lent_out?
a class method create
a class method current_due_date
a class method overdue_books
a class method browse
a class method available
a class method borrowed
initialize
This instance method makes a new book object. It should initialize a book's title, author, and isbn.
create
This class method is how new books are added to the library. This method should call Book.new(...),add the new book object to @@on_shelf, 
and then return the new book.
available
This class method should return the value of @@on_shelf.
borrowed
This class method should return the value of @@on_loan.
browse
This class method should return a random book from @@on_shelf (you may need to consult the Array docs to figure out how to do this).
lent_out?
This instance method return true if a book has already been borrowed and false otherwise.

current_due_date
This class method should return the due date for books taken out today. It's up to you to decide how far in the future the due date
 should be. You can refer to the section about Time above for help getting started, and don't hesitate to ask for help if you're stuck!

borrow
This instance method is how a book is taken out of the library. This method should use lent_out? to check if the book is already on loan,
 and if it is this method should return false to indicate that the attempt to borrow the book failed. 
 
 Otherwise, use current_due_date 
 to set the due_date of the book and move it from the collection of available books to the collection of books on loan, then return true.
return_to_library
This instance method is how a book gets returned to the library. It should call lent_out? to verify that the book was actually on loan.
 If it wasn't on loan in the first place, return false. Otherwise, move the book from the collection of books on loan to the collection 
 of books on the library shelves, and set the book's due date to nil before returning true.
overdue
This class method should return a list of books whose due dates are in the past (ie. less than Time.now).
=end

class Book
    attr_accessor :due_date
    @@on_shelf = []
    @@on_loan = []

    def initialize(title, author, isbn)
        @title = title
        @author = author
        @isbn = isbn
    end

    def borrow
        if lent_out? true
            false
        else
    end

    def return_to_library(book)
        if lent_out? false
            false
        else
            @@on_loan.pop(book)
            @@on_shelf.push(book)
    end

    def lent_out?(book)
        if book.borrowed
            true
        else 
            false
        end
    end

    def create.self
        new_book = Book.new 
        @@on_shelf.push(new_book)
        return new_book
    end

    def current_due_date.self
        #return books that were taken out today
    end

    def overdue_books.self
        
    end

    def browse.self(account)
        random_book = @@on_shelf.sample(rand(@@on_shelf.count))
        return random_book
    end

    def available.self
        @@on_shelf
    end

    def borrowed.self
        @@on_loan
    end
end
