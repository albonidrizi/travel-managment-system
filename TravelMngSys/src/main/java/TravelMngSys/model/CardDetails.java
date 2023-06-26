package TravelMngSys.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "cardsdetails")
@Getter @Setter
public class CardDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name = "name",length = 45 , nullable = false, unique = false)
    private String name;
    @Column(name = "nanumberCard",length = 45 , nullable = false, unique = false)
    private String numberCard;
    @Column(name = "dateValidation", nullable = false, unique = false)
    private Date dateValidation;
    @Column(name = "codeCard", nullable = false, unique = false)
    private int codeCard;

}
