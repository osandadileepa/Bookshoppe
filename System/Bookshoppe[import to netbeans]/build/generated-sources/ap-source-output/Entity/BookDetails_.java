package Entity;

import Entity.Category;
import java.math.BigDecimal;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2014-07-10T20:16:44")
@StaticMetamodel(BookDetails.class)
public class BookDetails_ { 

    public static volatile SingularAttribute<BookDetails, String> author;
    public static volatile SingularAttribute<BookDetails, BigDecimal> price;
    public static volatile SingularAttribute<BookDetails, Integer> isbn;
    public static volatile SingularAttribute<BookDetails, Category> categoryId;
    public static volatile SingularAttribute<BookDetails, Integer> bookId;
    public static volatile SingularAttribute<BookDetails, String> image;
    public static volatile SingularAttribute<BookDetails, String> bookDescription;
    public static volatile SingularAttribute<BookDetails, Date> publishedYear;
    public static volatile SingularAttribute<BookDetails, String> bookName;
    public static volatile SingularAttribute<BookDetails, Integer> availability;

}