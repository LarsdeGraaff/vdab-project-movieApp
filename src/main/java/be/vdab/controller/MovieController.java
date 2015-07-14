package be.vdab.controller;

import be.vdab.domain.Film;
import be.vdab.domain.Person;
import be.vdab.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Created by jeansmits on 13/07/15.
 */
@Controller
@RequestMapping("movie")
public class MovieController {
    @Autowired
    MovieRepository movieRepository;

//    @RequestMapping(value = "/movieList")
//    public String findAllActors(Map<String,Object> model){
//        model.put("allMovies", MovieRepository.findAll());
//        return "movieList";
//    }

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


}
