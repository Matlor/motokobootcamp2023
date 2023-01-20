import Book "./book";
import List "mo:base/List";


actor {

    let book:Book.Book = {
        title= "The Hobbit";
        pages = 3;
    };

    let books = List.nil<Book.Book>();


    public func add_book(b:Book.Book): async () {
        ignore List.push(b, books);
    };

    public func get_books(n:Nat): async [Book.Book]{
        List.toArray(books);
    };
};