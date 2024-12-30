package com.revature.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.revature.model.Task;

@Repository
public interface TaskRepository extends JpaRepository<Task, Long> {
}


