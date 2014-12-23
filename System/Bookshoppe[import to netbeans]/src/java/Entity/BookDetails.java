/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Osanda Wedamulla
 */
@Entity
@Table(name = "book_details")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "BookDetails.findAll", query = "SELECT b FROM BookDetails b"),
    @NamedQuery(name = "BookDetails.findByBookId", query = "SELECT b FROM BookDetails b WHERE b.bookId = :bookId"),
    @NamedQuery(name = "BookDetails.findByBookName", query = "SELECT b FROM BookDetails b WHERE b.bookName = :bookName"),
    @NamedQuery(name = "BookDetails.findByIsbn", query = "SELECT b FROM BookDetails b WHERE b.isbn = :isbn"),
    @NamedQuery(name = "BookDetails.findByBookDescription", query = "SELECT b FROM BookDetails b WHERE b.bookDescription = :bookDescription"),
    @NamedQuery(name = "BookDetails.findByAuthor", query = "SELECT b FROM BookDetails b WHERE b.author = :author"),
    @NamedQuery(name = "BookDetails.findByAvailability", query = "SELECT b FROM BookDetails b WHERE b.availability = :availability"),
    @NamedQuery(name = "BookDetails.findByPublishedYear", query = "SELECT b FROM BookDetails b WHERE b.publishedYear = :publishedYear"),
    @NamedQuery(name = "BookDetails.findByPrice", query = "SELECT b FROM BookDetails b WHERE b.price = :price"),
    @NamedQuery(name = "BookDetails.findByImage", query = "SELECT b FROM BookDetails b WHERE b.image = :image")})
public class BookDetails implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Book_Id")
    private Integer bookId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Book_Name")
    private String bookName;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ISBN")
    private int isbn;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 500)
    @Column(name = "Book_Description")
    private String bookDescription;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "Author")
    private String author;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Availability")
    private int availability;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Published_Year")
    @Temporal(TemporalType.DATE)
    private Date publishedYear;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "Price")
    private BigDecimal price;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "Image")
    private String image;
    @JoinColumn(name = "Category_Id", referencedColumnName = "Category_Id")
    @ManyToOne(optional = false)
    private Category categoryId;

    public BookDetails() {
    }

    public BookDetails(Integer bookId) {
        this.bookId = bookId;
    }

    public BookDetails(Integer bookId, String bookName, int isbn, String bookDescription, String author, int availability, Date publishedYear, BigDecimal price, String image) {
        this.bookId = bookId;
        this.bookName = bookName;
        this.isbn = isbn;
        this.bookDescription = bookDescription;
        this.author = author;
        this.availability = availability;
        this.publishedYear = publishedYear;
        this.price = price;
        this.image = image;
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public int getIsbn() {
        return isbn;
    }

    public void setIsbn(int isbn) {
        this.isbn = isbn;
    }

    public String getBookDescription() {
        return bookDescription;
    }

    public void setBookDescription(String bookDescription) {
        this.bookDescription = bookDescription;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getAvailability() {
        return availability;
    }

    public void setAvailability(int availability) {
        this.availability = availability;
    }

    public Date getPublishedYear() {
        return publishedYear;
    }

    public void setPublishedYear(Date publishedYear) {
        this.publishedYear = publishedYear;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Category getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Category categoryId) {
        this.categoryId = categoryId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (bookId != null ? bookId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BookDetails)) {
            return false;
        }
        BookDetails other = (BookDetails) object;
        if ((this.bookId == null && other.bookId != null) || (this.bookId != null && !this.bookId.equals(other.bookId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.BookDetails[ bookId=" + bookId + " ]";
    }
    
}
