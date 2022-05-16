package aptech.t2008m.practiclespring2.service;

import aptech.t2008m.practiclespring2.entity.SearchCriteria;
import aptech.t2008m.practiclespring2.entity.Street;
import aptech.t2008m.practiclespring2.repository.StreetRepository;
import aptech.t2008m.practiclespring2.specifications.StreetSpecifications;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StreetService {

    private final StreetRepository streetRepository;

    public StreetService(StreetRepository streetRepository) {
        this.streetRepository = streetRepository;
    }

    public List<Street> findAll(String keyword, Integer districtId) {
//        StreetSpecifications spec = new StreetSpecifications(new SearchCriteria("lastName", ":", "doe"));

        if (districtId == 0){
            return streetRepository.search(keyword);
        }
        return streetRepository.search(keyword, districtId);
    }

    public Optional<Street> findById(Integer id) {
        return streetRepository.findById(id);
    }

    public Street save(Street street) {
        return streetRepository.save(street);
    }

    public List<Street> saveAll(List<Street> streets){return streetRepository.saveAll(streets);}

    public void deleteById(Integer id) {
        streetRepository.deleteById(id);
    }
}
