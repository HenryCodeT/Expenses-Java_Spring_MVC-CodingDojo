package com.codingdojo.mvc.services;

import java.awt.print.Book;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

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
		System.out.println("service-find-all-books: "+expenseRepository.findAll());
		return expenseRepository.findAll();
	}
	// //// create expense ////
	public Expense createExpense(Expense expense) {
		return expenseRepository.save(expense);
	}
	// //// find expense by id ////
	public Expense findExpenseById(Long id) {
		Optional<Expense> optionalExpense = expenseRepository.findById(id);
		if (optionalExpense.isPresent()) {
			System.out.println("service-find-book-by-id: "+expenseRepository.findAll());
			System.out.println("----------------- SERVICE GET BOOK ---------------");			
			return optionalExpense.get();
		} else {
			return null;
		}
	}
	public Expense updateExpense(Long id, Expense expense) {
		Optional<Expense> optional = expenseRepository.findById(id);
		if (optional.isPresent()) {
			Expense data = optional.get();
			System.out.println("service-update-optional-service: "+optional.get());
			data.setName(expense.getName());
			data.setVendor(expense.getVendor());
			data.setDescription(expense.getDescription());
			data.setAmount(expense.getAmount());
			System.out.println("-------------------------UPDATED---------------------------");
			return this.expenseRepository.save(data);
		} else {
			return null;
		}
	}
}
