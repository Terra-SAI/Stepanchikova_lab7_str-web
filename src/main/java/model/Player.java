package model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Getter
@Setter
@ToString
@Entity
@Table(name = "players")
public class Player {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private int id;
    private String name;
    private String dndClass;
    private String dndRace;

    public Player() {
    }

    public Player(String name, String dndClass, String dndRace) {
        this.name = name;
        this.dndClass = dndClass;
        this.dndRace = dndRace;
    }

}

