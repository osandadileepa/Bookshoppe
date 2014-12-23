/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Session;

import Entity.BookDetails;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Osanda Wedamulla
 */
@Stateless
public class BookDetailsFacade extends AbstractFacade<BookDetails> {
    @PersistenceContext(unitName = "BookshoppePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BookDetailsFacade() {
        super(BookDetails.class);
    }
    
}
