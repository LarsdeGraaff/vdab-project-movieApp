package be.vdab.repository;

import be.vdab.domain.Film;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by jeansmits on 13/07/15.
 */

@Repository
public interface MovieRepository extends JpaRepository<Film, Integer> {

}
