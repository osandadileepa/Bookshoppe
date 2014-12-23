package Entity;

import Entity.Category;
import java.math.BigDecimal;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2014-07-10T20:16:44")
@StaticMetamodel(AdminBooksell.class)
public class AdminBooksell_ { 

    public static volatile SingularAttribute<AdminBooksell, String> author;
    public static volatile SingularAttribute<AdminBooksell, Integer> adminId;
    public static volatile SingularAttribute<AdminBooksell, String> bookname;
    public static volatile SingularAttribute<AdminBooksell, BigDecimal> price;
    public static volatile SingularAttribute<AdminBooksell, Integer> isbn;
    public static volatile SingularAttribute<AdminBooksell, Category> categoryId;
    public static volatile SingularAttribute<AdminBooksell, Integer> quantity;
    public static volatile SingularAttribute<AdminBooksell, Date> publishedDate;
    public static volatile SingularAttribute<AdminBooksell, String> bookDescrption;

}