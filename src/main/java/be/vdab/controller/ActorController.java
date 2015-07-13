package be.vdab.controller;

import be.vdab.domain.Person;
import be.vdab.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * Created by jeansmits on 10/07/15.
 */
@Controller
@RequestMapping("actor")
public class ActorController {
    @Autowired
    private PersonRepository personRepository;

    @RequestMapping(value="/{personId}")
    public String findById(@PathVariable("personId") int id, Map<String,Object> model){

         Person person1 =personRepository.findOne(id);
        model.put("createActor",  person1);
        return "actor";
    }
}