package co.grandcircus.Lab23;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;




@Repository
public class GradeDao {

	@Autowired
	private JdbcTemplate jdbc;

	public List<Grade> findAll(){
		String sql="SELECT * from grade";
		return jdbc.query(sql,new BeanPropertyRowMapper<>(Grade.class));
	}
	
	public Grade findById(Long id) {
		String sql="SELECT * from grade where id=?";
		return jdbc.queryForObject(sql,new BeanPropertyRowMapper<>(Grade.class), id);
	}
	
	public Long findLastId() {
		String sql="SELECT max(id) from grade";
		
		return jdbc.queryForObject(sql,Long.class);
	}
	
	

	
	public void create(Grade grade) {
		String sql="INSERT into grade (name,type,score,total) values(?,?,?,?)";
		
		jdbc.update(sql,grade.getName(),grade.getType(),grade.getScore(),grade.getTotal());
		
		
		
		
	}
	
	public void delete(Long id) {
		String sql="DELETE from grade WHERE  id=?";
		jdbc.update(sql,id);
	}
}
