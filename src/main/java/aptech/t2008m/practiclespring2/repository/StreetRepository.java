package aptech.t2008m.practiclespring2.repository;

import aptech.t2008m.practiclespring2.entity.SearchCriteria;
import aptech.t2008m.practiclespring2.entity.Street;
import aptech.t2008m.practiclespring2.specifications.StreetSpecifications;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StreetRepository extends JpaRepository<Street, Integer>, JpaSpecificationExecutor<Street> {
    @Query(value = "SELECT * FROM streets s WHERE s.name LIKE %:keyword%", nativeQuery = true)
    List<Street> search(@Param("keyword") String keyword);

    @Query(value = "SELECT * FROM streets s WHERE s.name LIKE %:keyword% AND s.district_id = :districtId", nativeQuery = true)
    List<Street> search(@Param("keyword") String keyword, @Param("districtId") Integer districtId);
}
