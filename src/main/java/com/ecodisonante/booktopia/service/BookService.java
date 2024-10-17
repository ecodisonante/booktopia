package com.ecodisonante.booktopia.service;

import java.util.List;
import java.util.Optional;

import com.ecodisonante.booktopia.model.Book;

public interface BookService {
    List<Book> getAllBooks();

    Optional<Book> findBookById(Long id);

    Book addBook(Book book);

    Book updateBook(Book book);

    void deleteBook(Long id);
}