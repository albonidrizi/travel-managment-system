package TravelMngSys.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "itinerary")
@Getter
@Setter
public class Itinerary {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name = "nameThingsPlus",length = 45 , nullable = false, unique = false)
    private String nameThingsPlus;
    @Column(name = "price",length = 45 , nullable = false, unique = false)
    private int price;
}
