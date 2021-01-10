/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/

// 1 - Abstract product

protocol Book {
    func read()
}

protocol Movie {
    func watch()
}


// 2 - Abstract Factory

protocol CatalogFactory {
    func makeBook() -> Book
    func makeMovie() -> Movie
}


// 3 - Concrete product

final class ScienceFictionBook: Book {
    func read() {
        print("Reading a science fiction book")
    }
}

final class ScienceFictionMovie: Movie {
    func watch() {
        print("Watching a science fiction movie")
    }
}

final class SuspenseBook: Book {
    func read() {
        print("Reading a suspense book")
    }
}

final class SuspenseMovie: Movie {
    func watch() {
        print("Watching a suspense movie")
    }
}


// 4 - Concrete Factory

struct ScienceFictionCatalogFactory: CatalogFactory {
    func makeBook() -> Book {
        return ScienceFictionBook()
    }
    
    func makeMovie() -> Movie {
        return ScienceFictionMovie()
    }
}

struct SuspenseCatalogFactory: CatalogFactory {
    func makeBook() -> Book {
        return SuspenseBook()
    }
    
    func makeMovie() -> Movie {
        return SuspenseMovie()
    }
}


// 5- Client

final class Producer {
    private let catalogFactory: CatalogFactory
    private var bookCatalog = [Book]()
    private var movieCatalog = [Movie]()

    init(catalogFactory: CatalogFactory) {
        self.catalogFactory = catalogFactory
    }
    
    func addBook() {
        bookCatalog.append(catalogFactory.makeBook())
    }
    
    func addMovie() {
        movieCatalog.append(catalogFactory.makeMovie())
    }
}

let producer = Producer(catalogFactory: ScienceFictionCatalogFactory())

producer.addBook()
producer.addMovie()
