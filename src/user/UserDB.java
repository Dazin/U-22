package user;

import java.sql.ResultSet;

import Dao.Dao;

public class UserDB {


	private String no;
	private String id;
	private String name;
	private String pass;
	private String passBrank = "";
	private String sex;
	private String post;
	private String address;
	private String tel;
	private String classid;


	public String getClassid() {
		return classid;
	}

	public void setClassid(String classid) {
		this.classid = classid;
	}

	public UserDB(){

	}

	public String getPassBrank() {
	    return passBrank;
	}

	public void setPassBrank(String val){
		for(int i = 0;i<val.length();i++){
			this.passBrank += "●";
		}
	}
	/**
	 * noを取得します。
	 * @return no
	 */
	public String getNo() {
	    return no;
	}

	/**
	 * noを設定します。
	 * @param no no
	 */
	public void setNo(String no) {
	    this.no = no;
	}

	/**
	 * idを取得します。
	 * @return id
	 */
	public String getId() {
	    return id;
	}
	/**
	 * idを設定します。
	 * @param id id
	 */
	public void setId(String id) {
	    this.id = id;
	}
	/**
	 * nameを取得します。
	 * @return name
	 */
	public String getName() {
	    return name;
	}
	/**
	 * nameを設定します。
	 * @param name name
	 */
	public void setName(String name) {
	    this.name = name;
	}
	/**
	 * passを取得します。
	 * @return pass
	 */
	public String getPass() {
	    return pass;
	}
	/**
	 * passを設定します。
	 * @param pass pass
	 */
	public void setPass(String pass) {
	    this.pass = pass;
	}
	/**
	 * sexを取得します。
	 * @return sex
	 */
	public String getSex() {
	    return sex;
	}
	/**
	 * sexを設定します。
	 * @param sex sex
	 */
	public void setSex(String sex) {
	    this.sex = sex;
	}
	/**
	 * postを取得します。
	 * @return post
	 */
	public String getPost() {
	    return post;
	}
	/**
	 * postを設定します。
	 * @param post post
	 */
	public void setPost(String post) {
	    this.post = post;
	}
	/**
	 * addressを取得します。
	 * @return address
	 */
	public String getAddress() {
	    return address;
	}
	/**
	 * addressを設定します。
	 * @param address address
	 */
	public void setAddress(String address) {
	    this.address = address;
	}
	/**
	 * telを取得します。
	 * @return tel
	 */
	public String getTel() {
	    return tel;
	}
	/**
	 * telを設定します。
	 * @param tel tel
	 */
	public void setTel(String tel) {
	    this.tel = tel;
	}

	public static UserDB UserLogin(String _userID,String _pass){

		String sql = "SELECT * FROM user;";
		UserDB u = new UserDB();
		Dao Dao = null;
		ResultSet rs =null;
		try{
			System.out.println("Dao参照");
			Dao = new Dao();
			rs = Dao.execute(sql);
			while(rs.next()){
				if(_userID.equals(rs.getString("id"))){
					u.setNo(rs.getString("no"));
					u.setName(rs.getString("name"));
					u.setAddress(rs.getString("address"));
					u.setPost(rs.getString("post"));
					u.setTel(rs.getString("tel"));
					u.setId(rs.getString("id"));
					u.setPass(rs.getString("password"));
					if(rs.getInt("sex") != 1){
						u.setSex("男性");
					}else{
						u.setSex("女性");
					}
				}

			}

		}catch(Exception e){
			System.out.println(e);
		}
		finally{
			try{
				if(rs != null){
					rs.close();
				}
				Dao.close();
			}
			catch(Exception e){

			}

		}
		System.out.println(sql);
		return u;
	}

	public static UserDB SelectUser(String _userNo){

		String sql = "SELECT * FROM user where no = "+ _userNo + ";";
		UserDB u = new UserDB();
		Dao Dao = null;
		ResultSet rs =null;
		try{
			System.out.println("Dao参照");
			Dao = new Dao();
			rs = Dao.execute(sql);
			while(rs.next()){
				u.setNo(rs.getString("no"));
				u.setName(rs.getString("name"));
				u.setAddress(rs.getString("address"));
				u.setPost(rs.getString("post"));
				u.setTel(rs.getString("tel"));
				u.setId(rs.getString("id"));
				u.setPass(rs.getString("password"));
				if(rs.getInt("sex") != 1){
					u.setSex("男性");
				}else{
					u.setSex("女性");
				}
				u.setClassid(rs.getString("classid"));
			}


		}catch(Exception e){
			System.out.println(e);
		}
		finally{
			try{
				if(rs != null){
					rs.close();
				}
				Dao.close();
			}
			catch(Exception e){

			}

		}
		System.out.println(sql);
		return u;
	}


	public static void UserInsert(String _name,String _Sex,String _post,String _Address,String _Tell,String _id,String _password){


		Dao Dao = null;
		ResultSet rs =null;
		String sql =  "INSERT INTO user (" +
			"name," +
			"sex," +
			"post," +
			"address," +
			"tel," +
			"id," +
			"password)" +
			" VALUES (" +
			"'"+ _name + "'," +
			""+ _Sex + "," +
			""+ _post + "," +
			"'"+ _Address + "'," +
			"'"+ _Tell + "'," +
			"'"+ _id + "'," +
			"'"+ _password + "')";

		try{
			System.out.println("Dao参照");
			Dao = new Dao();
			System.out.println("DB接続");
			Dao.executeUpdate(sql);
		}catch(Exception e){
			System.out.println("Exception");
		}finally{
			try{
				if(rs != null){
					rs.close();
				}
				Dao.close();
		}catch(Exception e){
		}
	}
	System.out.println(sql);
	}


}
