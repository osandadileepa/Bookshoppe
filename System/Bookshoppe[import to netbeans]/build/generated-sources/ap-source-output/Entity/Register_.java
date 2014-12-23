package Entity;

import Entity.Contact;
import Entity.CustomerDelivery;
import Entity.CustomerPayment;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2014-07-10T20:16:44")
@StaticMetamodel(Register.class)
public class Register_ { 

    public static volatile SingularAttribute<Register, String> lastName;
    public static volatile SingularAttribute<Register, CustomerPayment> customerPayment;
    public static volatile SingularAttribute<Register, Contact> contact;
    public static volatile SingularAttribute<Register, String> password;
    public static volatile SingularAttribute<Register, String> city;
    public static volatile SingularAttribute<Register, String> country;
    public static volatile SingularAttribute<Register, String> username;
    public static volatile SingularAttribute<Register, String> confirmPassword;
    public static volatile SingularAttribute<Register, CustomerDelivery> customerDelivery;
    public static volatile SingularAttribute<Register, Integer> postalCode;
    public static volatile SingularAttribute<Register, String> email;
    public static volatile SingularAttribute<Register, String> address;
    public static volatile SingularAttribute<Register, Integer> telephoneNumber;
    public static volatile SingularAttribute<Register, String> firstName;

}