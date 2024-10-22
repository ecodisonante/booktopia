package com.ecodisonante.booktopia.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.ecodisonante.booktopia.model.Book;

public interface BookRepository extends JpaRepository<Book, Long> {

}
