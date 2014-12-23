package Entity;

import Entity.Register;
import java.math.BigDecimal;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2014-07-10T20:16:44")
@StaticMetamodel(CustomerPayment.class)
public class CustomerPayment_ { 

    public static volatile SingularAttribute<CustomerPayment, BigDecimal> total;
    public static volatile SingularAttribute<CustomerPayment, Register> register;
    public static volatile SingularAttribute<CustomerPayment, String> username;
    public static volatile SingularAttribute<CustomerPayment, String> cardname;
    public static volatile SingularAttribute<CustomerPayment, Integer> verifynumber;
    public static volatile SingularAttribute<CustomerPayment, String> cardnumber;
    public static volatile SingularAttribute<CustomerPayment, Date> date;
    public static volatile SingularAttribute<CustomerPayment, String> fullname;

}