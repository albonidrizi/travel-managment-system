package TravelMngSys.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "bills")
@Getter
@Setter
public class RentaCarKlientit {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @ManyToOne
    @JoinColumn(name = "rentacar_id")
    private RentaCar rentacarId;
    @ManyToOne
    @JoinColumn(name = "ClientData_id")
    private ClientData clientDataId;

    @Column(name = "numri_diteve", nullable = false, unique = false)
    private int numri_diteve ;
    @Column(name = "cmimi_total", nullable = false, unique = false)
    private int cmimi_total;
}
