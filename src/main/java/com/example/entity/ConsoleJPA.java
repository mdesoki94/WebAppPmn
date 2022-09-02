package com.example.entity;

import com.example.entity.GameEntityManager;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.util.List;
public class ConsoleJPA {
    public static void main(String[] args) throws Exception {

        EntityManagerFactory emf;
        EntityManager em;
        emf = Persistence.createEntityManagerFactory("gamelist");
        em = emf.createEntityManager();
        System.out.println( "- Afficher liste de jeux ----------" );
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        GameEntityManager gameEntityManager = new GameEntityManager( "Mario");
        em.persist( gameEntityManager );
        List<GameEntityManager> games = em.createQuery("select gamelist from GameEntityManager gamelist", GameEntityManager.class).getResultList();
        for( GameEntityManager game : games) {
            System.out.println( game );
        }
        trans.commit();
        em.close();
        emf.close();

    }

}