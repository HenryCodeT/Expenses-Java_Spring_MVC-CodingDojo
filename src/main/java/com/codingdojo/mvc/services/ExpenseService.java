package com.codingdojo.mvc.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.mvc.models.Expense;
import com.codingdojo.mvc.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	
	@Autowired
	private ExpenseRepository expenseRepository;
	
	// //// find all books /////
	public List<Expense> allExpenses(){
		System.out.println("find-all-books-service: "+expenseRepository.findAll());
		return expenseRepository.findAll();
	}
	// //// create expense ////
	public Expense createExpense(Expense expense) {
		return expenseRepository.save(expense);
	}
}
