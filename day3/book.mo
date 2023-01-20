module {
    public type Book = {
        title: Text;
        pages: Int
    };

    public func create_book(title:Text, pages:Int): Book {
        return { title; pages };
    }
}