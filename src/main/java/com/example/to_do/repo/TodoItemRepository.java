package com.example.to_do.repo;

import com.example.to_do.model.TodoItem;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TodoItemRepository extends JpaRepository<TodoItem,Long> {
}
