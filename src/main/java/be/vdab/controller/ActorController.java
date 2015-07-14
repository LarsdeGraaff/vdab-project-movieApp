package be.vdab.controller;

import be.vdab.domain.Person;
import be.vdab.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
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
        model.put("Actor",  person1);
        return "actor";
    }

    @RequestMapping(value = "/actorList")
    public String findAllActors(Map<String,Object> model){
        model.put("allActors", personRepository.findAll());
        return "actorList";
    }

    @RequestMapping("/actorForm")
    public String form (Map<String, Object> model){
        model.put("person", new Person());
        return "actorForm";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@Valid Person person, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "actorForm";
        }
        personRepository.save(person);
        return "redirect:/actor/actorList";
    }

    @RequestMapping(value="/deleteActor")
    public String deleteActor(@RequestParam(value="id") Integer actorId){
        personRepository.delete(actorId);
        return "redirect:/actor/actorList";
    }



}
