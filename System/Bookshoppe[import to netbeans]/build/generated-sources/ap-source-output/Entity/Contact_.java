package Entity;

import Entity.Register;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2014-07-10T20:16:44")
@StaticMetamodel(Contact.class)
public class Contact_ { 

    public static volatile SingularAttribute<Contact, String> message;
    public static volatile SingularAttribute<Contact, Register> register;
    public static volatile SingularAttribute<Contact, String> email;
    public static volatile SingularAttribute<Contact, String> subject;
    public static volatile SingularAttribute<Contact, String> name;

}