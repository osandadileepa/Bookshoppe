package Entity;

import Entity.AdminBooksell;
import Entity.BookDetails;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2014-07-10T20:16:44")
@StaticMetamodel(Category.class)
public class Category_ { 

    public static volatile CollectionAttribute<Category, BookDetails> bookDetailsCollection;
    public static volatile SingularAttribute<Category, String> category;
    public static volatile SingularAttribute<Category, Integer> categoryId;
    public static volatile CollectionAttribute<Category, AdminBooksell> adminBooksellCollection;

}