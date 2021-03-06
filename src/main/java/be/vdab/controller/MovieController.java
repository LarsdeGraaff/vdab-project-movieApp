package be.vdab.controller;

import be.vdab.domain.Film;
import be.vdab.domain.Person;
import be.vdab.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

    @RequestMapping(value="/{movieId}")
    public String findById(@PathVariable("movieId") int id, Map<String,Object> model){
        Film film =movieRepository.findOne(id);
        model.put("film",  film);
        return "movie";
    }

    @RequestMapping(value = "/movieList")
    public String findAllMovies(Map<String,Object> model){
        model.put("allMovies", movieRepository.findAll());
        return "movieList";
    }

    @RequestMapping("/movieForm")
    public String form (Map<String, Object> model,@RequestParam(value = "id",required = false) Integer movieId){
        if (movieId == null) {
            model.put("film", new Film());
        } else {
            model.put("film", movieRepository.findOne(movieId));
        }return "movieForm";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@Valid Film film, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "movieForm";
        }
        movieRepository.save(film);
        return "redirect:/movie/movieList";
    }

    @RequestMapping(value="/deleteMovie")
    public String deleteMovie(@RequestParam(value="id") Integer movieId){
        movieRepository.delete(movieId);
        return "redirect:/movie/movieList";
    }

}
