package com.codingdojo.mvc.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.mvc.models.Expense;
import com.codingdojo.mvc.services.ExpenseService;

@Controller
public class ExpenseController {
	
	@Autowired
	private ExpenseService expenseService;
	
	@GetMapping("/")
	public String index() {
		return "redirect:/expenses";
	}
	
	@GetMapping("/expenses")
	public String main(@ModelAttribute("expense") Expense expense,Model model) {
		System.out.println("Inicio");
		System.out.println("controller-get-all-expenses-to-show: "+expenseService.allExpenses());
		List<Expense> expenses = expenseService.allExpenses();
		System.out.println(expenses.get(0).getId());
		model.addAttribute("expenses", expenses);
		return "expense";
	}
	@PostMapping("/expenses")
	public String postExpense(	@Valid @ModelAttribute("expense") Expense expense,
								BindingResult result,
								Model model) {
		System.out.println("Controller-get-expense-from-form: "+expense);
		if (result.hasErrors()) {
			List<Expense> expenses = expenseService.allExpenses();
			model.addAttribute("expenses", expenses);
            return "expense";
        } else {
        	System.out.println("controller-form-get-isvalid-create: "+expense);
        	expenseService.createExpense(expense);
            return "redirect:/expenses";
        }
	}
}
