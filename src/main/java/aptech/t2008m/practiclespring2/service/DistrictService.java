package aptech.t2008m.practiclespring2.service;

import aptech.t2008m.practiclespring2.entity.District;
import aptech.t2008m.practiclespring2.entity.Street;
import aptech.t2008m.practiclespring2.repository.DistrictRepository;
import aptech.t2008m.practiclespring2.repository.StreetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DistrictService {
    @Autowired
    private DistrictRepository districtRepository;

    public List<District> findAll() {
        return districtRepository.findAll();
    }

    public Optional<District> findById(Integer id) {
        return districtRepository.findById(id);
    }

    public District save(District district) {
        return districtRepository.save(district);
    }

    public List<District> saveAll(List<District> districts){return districtRepository.saveAll(districts);}

    public void deleteById(Integer id) {
        districtRepository.deleteById(id);
    }
}
