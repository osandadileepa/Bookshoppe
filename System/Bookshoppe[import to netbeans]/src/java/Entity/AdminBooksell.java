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
@Table(name = "admin_booksell")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AdminBooksell.findAll", query = "SELECT a FROM AdminBooksell a"),
    @NamedQuery(name = "AdminBooksell.findByAdminId", query = "SELECT a FROM AdminBooksell a WHERE a.adminId = :adminId"),
    @NamedQuery(name = "AdminBooksell.findByBookname", query = "SELECT a FROM AdminBooksell a WHERE a.bookname = :bookname"),
    @NamedQuery(name = "AdminBooksell.findByIsbn", query = "SELECT a FROM AdminBooksell a WHERE a.isbn = :isbn"),
    @NamedQuery(name = "AdminBooksell.findByBookDescrption", query = "SELECT a FROM AdminBooksell a WHERE a.bookDescrption = :bookDescrption"),
    @NamedQuery(name = "AdminBooksell.findByAuthor", query = "SELECT a FROM AdminBooksell a WHERE a.author = :author"),
    @NamedQuery(name = "AdminBooksell.findByQuantity", query = "SELECT a FROM AdminBooksell a WHERE a.quantity = :quantity"),
    @NamedQuery(name = "AdminBooksell.findByPublishedDate", query = "SELECT a FROM AdminBooksell a WHERE a.publishedDate = :publishedDate"),
    @NamedQuery(name = "AdminBooksell.findByPrice", query = "SELECT a FROM AdminBooksell a WHERE a.price = :price")})
public class AdminBooksell implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Admin_Id")
    private Integer adminId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 40)
    @Column(name = "Book_name")
    private String bookname;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ISBN")
    private int isbn;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 500)
    @Column(name = "Book_Descrption")
    private String bookDescrption;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "Author")
    private String author;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Quantity")
    private int quantity;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Published_Date")
    @Temporal(TemporalType.DATE)
    private Date publishedDate;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "Price")
    private BigDecimal price;
    @JoinColumn(name = "Category_Id", referencedColumnName = "Category_Id")
    @ManyToOne(optional = false)
    private Category categoryId;

    public AdminBooksell() {
    }

    public AdminBooksell(Integer adminId) {
        this.adminId = adminId;
    }

    public AdminBooksell(Integer adminId, String bookname, int isbn, String bookDescrption, String author, int quantity, Date publishedDate, BigDecimal price) {
        this.adminId = adminId;
        this.bookname = bookname;
        this.isbn = isbn;
        this.bookDescrption = bookDescrption;
        this.author = author;
        this.quantity = quantity;
        this.publishedDate = publishedDate;
        this.price = price;
    }

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public int getIsbn() {
        return isbn;
    }

    public void setIsbn(int isbn) {
        this.isbn = isbn;
    }

    public String getBookDescrption() {
        return bookDescrption;
    }

    public void setBookDescrption(String bookDescrption) {
        this.bookDescrption = bookDescrption;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getPublishedDate() {
        return publishedDate;
    }

    public void setPublishedDate(Date publishedDate) {
        this.publishedDate = publishedDate;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
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
        hash += (adminId != null ? adminId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AdminBooksell)) {
            return false;
        }
        AdminBooksell other = (AdminBooksell) object;
        if ((this.adminId == null && other.adminId != null) || (this.adminId != null && !this.adminId.equals(other.adminId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.AdminBooksell[ adminId=" + adminId + " ]";
    }
    
}
