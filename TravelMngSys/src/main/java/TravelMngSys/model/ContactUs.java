package TravelMngSys.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "contactus")
@Getter
@Setter
public class ContactUs {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name = "name",length = 45 , nullable = false, unique = false)
    private String name;
    @Column(name = "email",length = 45 , nullable = false, unique = false)
    private String email;
    @Column(name = "yourMessages",length = 45 , nullable = false, unique = false)
    private String yourMessages;

}
