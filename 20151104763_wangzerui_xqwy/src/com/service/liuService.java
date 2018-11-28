package com.service;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.dao.DB;
import com.orm.Tlou;
import com.orm.Tuser;


public class liuService
{
	public static List get_user_list()
	{
		List userList=new ArrayList();
		String sql="select * from t_user where del='no' order by lou_id,danyuan";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tuser user=new Tuser();
				
				user.setId(rs.getString("id"));
				user.setLou_id(rs.getString("lou_id"));
				user.setDanyuan(rs.getString("danyuan"));
				user.setMenpai(rs.getString("menpai"));
				
				user.setMianji(rs.getString("mianji"));
				user.setXingming(rs.getString("xingming"));
				user.setDianhua(rs.getString("dianhua"));
				user.setUserName(rs.getString("userName"));
				
				user.setUserPw(rs.getString("userPw"));
				user.setDel(rs.getString("del"));
				
				userList.add(user);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		return userList;
		
	}
	
	
	public static Tuser get_user(String id)
	{
		Tuser user=new Tuser();
		
		String sql="select * from t_user where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				user.setId(rs.getString("id"));
				user.setLou_id(rs.getString("lou_id"));
				user.setDanyuan(rs.getString("danyuan"));
				user.setMenpai(rs.getString("menpai"));
				
				user.setMianji(rs.getString("mianji"));
				user.setXingming(rs.getString("xingming"));
				user.setDianhua(rs.getString("dianhua"));
				user.setUserName(rs.getString("userName"));
				
				user.setUserPw(rs.getString("userPw"));
				user.setDel(rs.getString("del"));
				
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		return user;
		
	}
	
	public static String panduan_zhanghao(String userName)
	{
		String s="meizhan";
		
		String sql="select * from t_user where del='no' and userName=?";
		Object[] params={userName.trim()};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				s="yizhan";
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		return s;
	}
	
	
	public static String panduan_lou_danyuan_menpai(String lou_id,String danyuan,String menpai)
	{
		String s="meizhu";
		
		String sql="select * from t_user where del='no' and lou_id=? and danyuan=? and menpai=?";
		Object[] params={lou_id.trim(),danyuan.trim(),menpai.trim()};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				s="yizhu";
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		return s;
	}
	
	
	
	public static String panduan_shifou_jiaofei(String jidu,String user_id)
	{
		String s="weijiao";
		
		String sql="select * from t_shoufei where jidu=? and user_id=?";
		Object[] params={jidu.trim(),user_id.trim()};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				s="yijiao";
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		return s;
	}
	
	
	
	
	public static Tlou getLou(String id)
	{
		Tlou lou=new Tlou();
		
		String sql="select * from t_lou where id=?";
		Object[] params={id.trim()};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				lou.setId(rs.getString("id"));
				lou.setLouhao(rs.getString("louhao"));
				lou.setDel(rs.getString("del"));
				
			}
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		return lou;
	}
}
