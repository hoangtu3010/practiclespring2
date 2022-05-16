package aptech.t2008m.practiclespring2.entity;

import aptech.t2008m.practiclespring2.entity.base.BaseEntity;
import aptech.t2008m.practiclespring2.entity.enums.StreetStatus;
import lombok.*;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
@Entity
@Table(name = "streets")
public class Street extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    private String description;
    @Enumerated(EnumType.ORDINAL)
    private StreetStatus status;
    private Integer districtId;
    @ManyToOne
    @JoinColumn(name = "districtId", insertable = false, updatable = false)
    private District district;
}
