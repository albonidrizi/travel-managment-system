package TravelMngSys.dto;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;

@Getter @Setter
public class CardDetails {

    private int id;
    private String name;
    private String numberCard;
    private Date dateValidation;
    private int codeCard;

}
