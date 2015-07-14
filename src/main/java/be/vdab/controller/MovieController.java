package be.vdab.controller;

import be.vdab.domain.Film;
import be.vdab.domain.Person;
import be.vdab.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.Map;

/**
 * Created by jeansmits on 13/07/15.
 */
@Controller
@RequestMapping("movie")
public class MovieController {
    @Autowired
    MovieRepository movieRepository;

    @RequestMapping(value = "/movieList")
    public String findAllMovies(Map<String,Object> model){
        model.put("allMovies", movieRepository.findAll());
        return "movieList";
    }

    @RequestMapping("/movieForm")
    public String form (Map<String, Object> model){
        model.put("film", new Film());
        return "movieForm";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@Valid Film film, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "movieForm";
        }
        movieRepository.save(film);
        return "redirect:/movie/movieList";
    }

}
