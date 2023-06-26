package TravelMngSys.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "te_dhenat_e_klientit")
@Getter
@Setter
public class ClientData {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name = "name",length = 45 , nullable = false, unique = false)
    private String name;
    @Column(name = "surname",length = 45 , nullable = false, unique = false)
    private String surname;
    @Column(name = "country",length = 45 , nullable = false, unique = false)
    private String country;
    @Column(name = "city",length = 45 , nullable = false, unique = false)
    private String city;
    @Column(name = "phone",length = 45 , nullable = false, unique = false)
    private String phone;
    @Column(name = "email",length = 45 , nullable = false, unique = false)
    private String email;

}
