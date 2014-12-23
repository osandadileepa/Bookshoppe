/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Session;

import Entity.NewsLetter;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Osanda Wedamulla
 */
@Stateless
public class NewsLetterFacade extends AbstractFacade<NewsLetter> {
    @PersistenceContext(unitName = "BookshoppePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public NewsLetterFacade() {
        super(NewsLetter.class);
    }
    
}
