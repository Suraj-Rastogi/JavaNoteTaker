package com.todo.Controller;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.todo.Entity.Notes;
import com.todo.Entity.Users;
import com.todo.Helper.SessionProvider;


@Controller
public class HomeController {

	@RequestMapping(path="/add_notes")
	public String addNotes(){
		System.out.println("Controller add notes page------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		return "addNotes";
	}
	@RequestMapping(path="/show_notes",method=RequestMethod.GET)
	public String showNotes(){
		System.out.println("Controller show notes page------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		return "show_notes";
		
	}
	@RequestMapping(path="/login_page",method=RequestMethod.GET)
	public String loginPage(){
		return "login_page";
	}
	
	@RequestMapping(path="/signup_page",method=RequestMethod.GET)
	public String sigUpPage(){
		return "signup_page";
	}
	
	//save user details Registration
	@RequestMapping(path="/saveUser",method=RequestMethod.POST)
	public String userRegister(@ModelAttribute Users users) {
		//open session
		Session s = SessionProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		System.out.println("Users details is>>>>>>>>>>>>>>>>>"+users);
		s.save(users);
		tx.commit();
		s.close();
		return "addNotes";
	}
	//Login controller
	@RequestMapping(path="/login",method=RequestMethod.POST)
	public String userLogin(@ModelAttribute Users users){
		//open Session
		Session s = SessionProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		
		System.out.println("username :"+users.getUsername()+" and u.password="+users.getPassword());
		
		Query q = s.createQuery("from Users as u where u.email="+users.getUsername()+" and u.password="+users.getPassword());
		List<Users> user = q.list();
		
		tx.commit();
		s.close();
		return "addNotes";
	}
	
	@RequestMapping(path="/saveNotes",method=RequestMethod.POST)
	public String saveNotes(@ModelAttribute Notes note,Model model) {
		
		SessionFactory factory = SessionProvider.getFactory();//Session session = SessionProvider.getFactory().openSession();
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		
		//Notes note = new Notes();
		//note.setTitle();
		//model.addAttribute("new_note",note);
		note.setId(new Random().nextInt(10000));
		note.setAddedDate(new Date());
		session.save(note);
		tx.commit();
		session.close();
		return "show_notes";
	}
	
	//delete note by id--
	@RequestMapping(path="/deleteNote")
	public String deleteNote(@RequestParam String note_id) {
		//delete note by id from db
		//open session
		System.out.println(" note id is=====>"+note_id);
		Session s = SessionProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		//get object by id
		long id =Long.parseLong(note_id);
		System.out.println("id type is and value is>>>>>>>>>>>>>>>>>>"+id);
		Notes note =(Notes)s.get(Notes.class,id);
		System.out.println("note get from db is>>>>>>>>>>>>>>>"+note.getId()+" and note title is>>>>>>>>>>>>"+note.getTitle());
		
		//delete note from db
		s.delete(note);
		System.out.println("delete is executed success");
		tx.commit();
		s.close();
		return "show_notes";
	}
	//edit note by id
	@RequestMapping(path="/editNote")
	public String editNote(@RequestParam String note_id,Model model) {
		//open session
		Session s =SessionProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		//convert String note_id to long type id of NOtes entity
		long id =Long.parseLong(note_id);
		System.out.println("id type is and value is>>>>>>>>>>>>>>>>>>"+id);
		//get note
		Notes note =(Notes)s.get(Notes.class,id);
		//set new values to the Note entity object
		/*
		 * s.update(note); tx.commit(); s.close();
		 */
		model.addAttribute("note",note);
		return "edit_note";//new edit note page
	}
	//update your notes
	@RequestMapping(path="/updateNotes",method=RequestMethod.POST)
	public String updateNotes(@ModelAttribute Notes notes) {
		//open Session
		Session s = SessionProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		System.out.println("Note details after update is >>>>>>>>>>>>>>>>>>>>>>>>"+notes.getId()+
				" and new Title is>>>>>>>>>>>>>>>>>>>>>"+notes.getTitle()+
				" and new content is>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+notes.getContent()+" new updated date is >>>>>>>>>>>>"+new Date());
		
		notes.setAddedDate(new Date());
		s.update(notes);
		tx.commit();
		s.close();
		return "show_notes";
	}
	
	
	
	
	
	
	
	
	
}
