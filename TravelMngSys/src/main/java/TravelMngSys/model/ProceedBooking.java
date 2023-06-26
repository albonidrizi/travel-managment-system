package TravelMngSys.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "proceedbooking")
@Getter
@Setter
public class ProceedBooking {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name = "nameTravel",length = 45 , nullable = false, unique = false)
    private String nameTravel;
    @Column(name = "price", nullable = false, unique = false)
    private int price;
    @Column(name = "nanumberCard", nullable = false, unique = false)
    private int nanumberCard;
    @Column(name = "totalPrice", nullable = false, unique = false)
    private int totalPrice;

    @ManyToOne
    @JoinColumn(name = "udhtimi_id")
    private Trip TripId;
    @ManyToOne
    @JoinColumn(name = "te_dhenat_e_klientit_id")
    private ClientData ClientData;
}
