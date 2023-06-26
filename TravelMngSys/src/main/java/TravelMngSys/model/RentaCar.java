package TravelMngSys.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "bills")
@Getter
@Setter
public class RentaCar {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name = "markeCar", length = 45, nullable = false, unique = false)
    private String markeCar;
    @Column(name = "series", length = 45, nullable = false, unique = false)
    private String series;
    @Column(name = "targe", length = 45, nullable = false, unique = false)
    private String targe;
    @Column(name = "colore", length = 45, nullable = false, unique = false)
    private String colore;
    @Column(name = "priceDay", nullable = false, unique = false)
    private int priceDay;
}
