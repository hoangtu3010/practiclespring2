package aptech.t2008m.practiclespring2.service;

import aptech.t2008m.practiclespring2.entity.SearchCriteria;
import aptech.t2008m.practiclespring2.entity.Street;
import aptech.t2008m.practiclespring2.repository.StreetRepository;
import aptech.t2008m.practiclespring2.specifications.StreetSpecifications;
import org.springframework.data.jpa.domain.Specification;
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
        Specification<Street> specifications = Specification.where(null);

        if (keyword != null && keyword.length() > 0) {
            specifications = new StreetSpecifications(new SearchCriteria("name", ":", keyword));
        }
        if (districtId > 0) {
            specifications = new StreetSpecifications(new SearchCriteria("districtId", ":", districtId));
        }

        return streetRepository.findAll(specifications);
    }

    public Optional<Street> findById(Integer id) {
        return streetRepository.findById(id);
    }

    public Street save(Street street) {
        return streetRepository.save(street);
    }

    public List<Street> saveAll(List<Street> streets) {
        return streetRepository.saveAll(streets);
    }

    public void deleteById(Integer id) {
        streetRepository.deleteById(id);
    }
}
