package com.example.entity;
import javax.persistence.*;

@Entity
@Table(name = "gamelist")
public class GameEntityManager {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "name")

    private String name;

    public GameEntityManager(String name) {
        this.getName(name);
    }

    public GameEntityManager() {
        this("momo");
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName(String name) {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "GameEntityManager{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
