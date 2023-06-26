package TravelMngSys.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "bills")
@Getter @Setter
public class Trip {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name = "TripName", length = 45, nullable = false, unique = false)
    private String TripName;
    @Column(name = "About", length = 45, nullable = false, unique = false)
    private String About;
    @Column(name = "travelTime", length = 45, nullable = false, unique = false)
    private String travelTime;
    @Column(name = "price", nullable = false, unique = false)
    private int price;

    @ManyToOne
    @JoinColumn(name = "itinerary_id")
    private Itinerary ItineraryId;
}
