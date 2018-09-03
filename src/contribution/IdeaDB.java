package contribution;

import java.sql.ResultSet;
import java.util.ArrayList;

import Dao.Dao;

public class IdeaDB {

	private String no;
	private String name;
	private String genre;
	private String genreName;
	private String quality1;
	private String quality2;
	private String quality3;
	private String content;
	private String status;
	private String userNo;
	private String likeCount;



	public IdeaDB(){

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
	 * genreを取得します。
	 * @return genre
	 */
	public String getGenre() {
	    return genre;
	}

	/**
	 * genreを設定します。
	 * @param genre genre
	 */
	public void setGenre(String genre) {
	    this.genre = genre;
	}

	/**
	 * genreNameを取得します。
	 * @return genreName
	 */
	public String getGenreName() {
	    return genreName;
	}

	/**
	 * genreNameを設定します。
	 * @param genreName genreName
	 */
	public void setGenreName(String genre) {
			switch(Integer.parseInt(genre)) {
		    case 1:
			    this.genreName = "食品";
		        break;
		    case 2:
			    this.genreName = "電化製品";
		        break;
		    case 3:
			    this.genreName = "日用品";
		        break;
		    case 4:
			    this.genreName = "家具（インテリア）";
		        break;
		    case 5:
			    this.genreName = "その他";
		        break;
		    default:
		}
	}

	/**
	 * quality1を取得します。
	 * @return quality1
	 */
	public String getQuality1() {
	    return quality1;
	}

	/**
	 * quality1を設定します。
	 * @param quality1 quality1
	 */
	public void setQuality1(String quality1) {
	    this.quality1 = quality1;
	}

	/**
	 * quality2を取得します。
	 * @return quality2
	 */
	public String getQuality2() {
	    return quality2;
	}

	/**
	 * quality2を設定します。
	 * @param quality2 quality2
	 */
	public void setQuality2(String quality2) {
	    this.quality2 = quality2;
	}

	/**
	 * quality3を取得します。
	 * @return quality3
	 */
	public String getQuality3() {
	    return quality3;
	}

	/**
	 * quality3を設定します。
	 * @param quality3 quality3
	 */
	public void setQuality3(String quality3) {
	    this.quality3 = quality3;
	}

	/**
	 * contentを取得します。
	 * @return content
	 */
	public String getContent() {
	    return content;
	}

	/**
	 * contentを設定します。
	 * @param content content
	 */
	public void setContent(String content) {
	    this.content = content;
	}

	/**
	 * statusを取得します。
	 * @return status
	 */
	public String getStatus() {
	    return status;
	}

	/**
	 * statusを設定します。
	 * @param status status
	 */
	public void setStatus(String status) {
	    this.status = status;
	}

	public static ArrayList<IdeaDB> UserIdea(String _userNo){
		String sql = "SELECT * FROM idea where user_no = "+ _userNo + ";";
		ArrayList<IdeaDB> IdeaList = new ArrayList<IdeaDB>();
		Dao Dao = null;
		ResultSet rs =null;
		try{
			System.out.println("Dao参照");
			Dao = new Dao();
			rs = Dao.execute(sql);
			while(rs.next()){
				IdeaDB i = new IdeaDB();
				i.setNo(rs.getString("no"));
				i.setName(rs.getString("name"));
				i.setGenreName(rs.getString("genre"));
				i.setQuality1(rs.getString("quality1"));
				i.setQuality2(rs.getString("quality2"));
				i.setQuality3(rs.getString("quality3"));
				i.setContent(rs.getString("content"));
				i.setStatus(rs.getString("status"));
				i.setUserNo(rs.getString("no"));
				IdeaList.add(i);

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
		return IdeaList;


	}

	public static ArrayList<IdeaDB> IdeaRanking(){
		String sql = "SELECT * FROM idea INNER JOIN (SELECT idea_no,COUNT(*) AS likecount FROM likes group by idea_no) AS nowlikes ON idea.no = nowlikes.idea_no ORDER BY nowlikes.likecount desc;";

		ArrayList<IdeaDB> IdeaList = new ArrayList<IdeaDB>();
		Dao Dao = null;
		ResultSet rs =null;

		try{
			System.out.println("Dao参照");
			Dao = new Dao();
			rs = Dao.execute(sql);
			while(rs.next()){
				IdeaDB Idea = new IdeaDB();
				Idea.setNo(rs.getString("no"));
				Idea.setName(rs.getString("name"));
				Idea.setGenreName(rs.getString("genre"));
				Idea.setQuality1(rs.getString("quality1"));
				Idea.setQuality2(rs.getString("quality2"));
				Idea.setQuality3(rs.getString("quality3"));
				Idea.setContent(rs.getString("content"));
				Idea.setStatus(rs.getString("status"));
				Idea.setUserNo(rs.getString("user_no"));
				Idea.setLikeCount(rs.getString("likecount"));
				IdeaList.add(Idea);

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
		return IdeaList;


	}
	public static IdeaDB IdeaPage(String _IdeaNo){
		String sql = "SELECT * FROM idea where no = "+ _IdeaNo + ";";
		IdeaDB Idea = new IdeaDB();
		Dao Dao = null;
		ResultSet rs =null;
		try{
			System.out.println("Dao参照");
			Dao = new Dao();
			rs = Dao.execute(sql);
			while(rs.next()){
				Idea.setNo(rs.getString("no"));
				Idea.setName(rs.getString("name"));
				Idea.setGenreName(rs.getString("genre"));
				Idea.setQuality1(rs.getString("quality1"));
				Idea.setQuality2(rs.getString("quality2"));
				Idea.setQuality3(rs.getString("quality3"));
				Idea.setContent(rs.getString("content"));
				Idea.setStatus(rs.getString("status"));
				Idea.setUserNo(rs.getString("user_no"));

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
		return Idea;


	}


	public static ArrayList<IdeaDB> IdeaDuplication(String _genre){
		String sql = "SELECT * FROM idea where genre = "+ _genre + ";";
		IdeaDB Idea = new IdeaDB();

		ArrayList<IdeaDB> IdeaList = new ArrayList<IdeaDB>();
		Dao Dao = null;
		ResultSet rs =null;
		try{
			System.out.println("Dao参照");
			Dao = new Dao();
			rs = Dao.execute(sql);
			while(rs.next()){
				Idea.setNo(rs.getString("no"));
				Idea.setName(rs.getString("name"));
				Idea.setGenreName(rs.getString("genre"));
				Idea.setQuality1(rs.getString("quality1"));
				Idea.setQuality2(rs.getString("quality2"));
				Idea.setQuality3(rs.getString("quality3"));
				Idea.setContent(rs.getString("content"));
				Idea.setStatus(rs.getString("status"));
				Idea.setUserNo(rs.getString("no"));
				IdeaList.add(Idea);

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
		return IdeaList;


	}


	public static void IdeaInsert(String _name,String _genre,String _quality1,String _quality2,String _quality3,String _content,String _userId){


		Dao Dao = null;
		ResultSet rs =null;
		String sql =  "INSERT INTO idea (" +
			"name," +
			"genre," +
			"quality1," +
			"quality2," +
			"quality3," +
			"content," +
			"status," +
			"user_no)" +
			" VALUES (" +
			"'"+ _name + "'," +
			""+ _genre + "," +
			"'"+ _quality1 + "'," +
			"'"+ _quality2 + "'," +
			"'"+ _quality3 + "'," +
			"'"+ _content + "'," +
			"0," +
			""+ _userId + ")";

		try{
			System.out.println("Dao参照");
			Dao = new Dao();
			System.out.println("DB接続");
			Dao.executeUpdate(sql);
		}catch(Exception e){
			System.out.println(e);
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

	/**
	 * userNoを取得します。
	 * @return userNo
	 */
	public String getUserNo() {
	    return userNo;
	}

	/**
	 * userNoを設定します。
	 * @param userNo userNo
	 */
	public void setUserNo(String userNo) {
	    this.userNo = userNo;
	}

	/**
	 * likeCountを取得します。
	 * @return likeCount
	 */
	public String getLikeCount() {
	    return likeCount;
	}

	/**
	 * likeCountを設定します。
	 * @param likeCount likeCount
	 */
	public void setLikeCount(String likeCount) {
	    this.likeCount = likeCount;
	}

}
