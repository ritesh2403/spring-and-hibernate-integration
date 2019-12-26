package DataAccessobject;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import Entity.Customer;

@Repository
public class CustomerDaoImp implements CustomerDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override

	public List<Customer> getCustomers() {

		Session session = sessionFactory.getCurrentSession();

		List<Customer> student = new ArrayList();

		student = session.createQuery("from Customer order by lastname").list();

		return student;

	}

	@Override
	public void saveCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();

		session.save(customer);

	}

	@Override
	public Customer getCustomer(int id) {

		Session session = sessionFactory.getCurrentSession();
		
		Customer customer=(Customer) session.get(Customer.class, id);
		
		
		return customer;
		// TODO Auto-generated method stub

	}

}
