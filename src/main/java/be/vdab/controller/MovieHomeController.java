package be.vdab.controller;

import be.vdab.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by jeansmits on 14/07/15.
 */
@Controller
@RequestMapping("movieHome")
public class MovieHomeController {
    @Autowired
    MovieRepository movieRepository;

}
