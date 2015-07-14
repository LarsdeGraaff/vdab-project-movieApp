package be.vdab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by jeansmits on 14/07/15.
 */
@Controller

public class MovieHomeController {
    @RequestMapping("/")
    public String home() {
        return "movieHome";
    }


}
