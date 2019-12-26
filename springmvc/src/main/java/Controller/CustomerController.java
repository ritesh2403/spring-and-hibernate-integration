package Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import DataAccessobject.CustomerDAO;
import Entity.Customer;
import Service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping("/list")
	public String listCustomers(Model themodel) {

		List<Customer> customers = customerService.getCustomers();

		themodel.addAttribute("customers", customers);

		return "list-customers";

	}

	@RequestMapping(value="/ShowFormForAdd" ,method=RequestMethod.GET )
	public String showFormForAdd(Model theModel) {
		
		Customer customer=new Customer();
		
		theModel.addAttribute("customer", customer);
			return "customer-form";

	}
	
	@RequestMapping(value="savecustomer",method=RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
		
		customerService.saveCustomer(customer);
		return "redirect:/customer/list";
		
	}
	
	@RequestMapping(value="showformForUpdate",method=RequestMethod.GET)
	public String showformForUpdate(@RequestParam("customerId") int id, Model model) {
		
		Customer customer=customerService.getCustomer(id);
		
		model.addAttribute("customer",customer);
		
		return "customer-form";
		
	}

}
