package ar.com.emanuelcenturion.curso.java.test;
import ar.com.emanuelcenturion.curso.java.connector.Connector;
import ar.com.emanuelcenturion.curso.java.entities.Alumno;
import ar.com.emanuelcenturion.curso.java.entities.Curso;
import ar.com.emanuelcenturion.curso.java.enumerados.Semana;
import ar.com.emanuelcenturion.curso.java.enumerados.Turno;
import ar.com.emanuelcenturion.curso.java.repositories.interfaces.I_AlumnoRepository;
import ar.com.emanuelcenturion.curso.java.repositories.interfaces.I_CursoRepository;
import ar.com.emanuelcenturion.curso.java.repositories.jdbc.AlumnoRepository;
import ar.com.emanuelcenturion.curso.java.repositories.jdbc.CursoRepository;
import java.util.List;
public class TestRepositories {
    public static void main(String[] args) {
        I_CursoRepository cr=new CursoRepository(Connector.getConnection());
        
        Curso curso=new Curso("HTML","Centruion",Semana.LUNES,Turno.MANANA);
        cr.save(curso);
        //System.out.println(curso);
        //System.out.println("*************************************************");
        //List<Curso>lista=cr.getAll();
        //for(int a=0;a<lista.size();a++) System.out.println(lista.get(a));
        
        cr.remove(cr.getById(3));
        
        curso=cr.getById(5);
        curso.setTitulo("Javascript");
        if (curso!=null && curso.getId()!=0) cr.update(curso);
        
        cr.getAll().forEach(System.out::println);
        //cr.getLikeTitulo("ja").forEach(System.out::println);
        //cr.getLikeTituloAndProfesor("", "go").forEach(System.out::println);
        System.out.println("*************************************************");
        I_AlumnoRepository ar=new AlumnoRepository(Connector.getConnection());
        
        Alumno alumno=new Alumno("Matias","Segovia",26,2);
        //ar.save(alumno);
        //System.out.println(alumno);
        
        ar.remove(ar.getById(3));
        
        alumno=ar.getById(5);
        alumno.setIdCurso(4);
        ar.update(alumno);
        
        ar.getAll().forEach(System.out::println);
        //ar.getLikeApellido("sa").forEach(System.out::println);
        //ar.getByCurso(cr.getById(2)).forEach(System.out::println);
        
        System.out.println("*************************************************");
        
        ar.save(new Alumno("Juan","Perez",26,1));
        ar.save(new Alumno("Marta","Gonzales",21,2));
	ar.save(new Alumno("Pedro","Lozada",32,2));
	ar.save(new Alumno("Jose","Gomez",19,1));
	ar.save(new Alumno("Dario","Martinez",28,2));
	ar.save(new Alumno("Maria","Cortes",42,1));
	ar.save(new Alumno("Marcos","Cabrera",35,2));
	ar.save(new Alumno("Gabriel","Fernandez",20,1));
        
    }
}