package com.action;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DB;
import com.orm.Tuser;
import com.service.liuService;


public class user_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
		
		if(type.endsWith("userReg"))
		{
			userReg(req, res);
		}
		if(type.endsWith("userEditMe"))
		{
			userEditMe(req, res);
		}
		
		if(type.endsWith("userAdd"))
		{
			userAdd(req, res);
		}
		if(type.endsWith("userMana"))
		{
			userMana(req, res);
		}
		if(type.endsWith("userDel"))
		{
			userDel(req, res);
		}
		if(type.endsWith("userPre"))
		{
			userPre(req, res);
		}
		if(type.endsWith("userEdit"))
		{
			userEdit(req, res);
		}
	}
	
	
	public void userReg(HttpServletRequest req,HttpServletResponse res)
	{
		String id=String.valueOf(new Date().getTime());
		String lou_id=req.getParameter("lou_id");
		String danyuan=req.getParameter("danyuan");
		String menpai=req.getParameter("menpai");
		
		String mianji=req.getParameter("mianji");
		String xingming=req.getParameter("xingming");
		String dianhua=req.getParameter("dianhua");
		String userName=req.getParameter("userName");
		
		String userPw=req.getParameter("userPw");
		String del="no";
		
		String ss=liuService.panduan_lou_danyuan_menpai(lou_id, danyuan,menpai);
		if(ss.equals("yizhu"))
		{
			
			req.setAttribute("message", "此门牌号的业主信息已经添加,请联系管理员获取登陆账号和密码");
			req.setAttribute("path", "qiantai/default.jsp");
	        String targetURL = "/common/success.jsp";
			dispatch(targetURL, req, res);
		}
		else
		{
			String sss=liuService.panduan_zhanghao(userName);
			if(sss.equals("yizhan"))
			{
				
				req.setAttribute("message", "账号重复");
				req.setAttribute("path", "qiantai/default.jsp");
		        String targetURL = "/common/success.jsp";
				dispatch(targetURL, req, res);
			}
			else
			{

				String sql="insert into t_user values(?,?,?,?,?,?,?,?,?,?)";
				Object[] params={id,lou_id,danyuan,menpai,mianji,xingming,dianhua,userName,userPw,del};
				DB mydb=new DB();
				mydb.doPstm(sql, params);
				mydb.closed();
				
				
				req.setAttribute("message", "注册成功");
				req.setAttribute("path", "qiantai/user/userLogin.jsp");
		        String targetURL = "/common/success.jsp";
				dispatch(targetURL, req, res);
			}
		}
		
        
	}
	
	
	public void userEditMe(HttpServletRequest req,HttpServletResponse res)
	{
		String id=req.getParameter("id");
		//String lou_id=req.getParameter("lou_id");
		//String danyuan=req.getParameter("danyuan");
		//String menpai=req.getParameter("menpai");
		
		//String mianji=req.getParameter("mianji");
		String xingming=req.getParameter("xingming");
		String dianhua=req.getParameter("dianhua");
		//String userName=req.getParameter("userName");
		String userPw=req.getParameter("userPw");
		
		//String del="no";
		
		String sql="update t_user set xingming=?,dianhua=?,userPw=? where id=?";
		Object[] params={xingming,dianhua,userPw,id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "信息修改成功，重新登陆后生效");
        String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
	}
	
	
	public void userAdd(HttpServletRequest req,HttpServletResponse res)
	{
		String id=String.valueOf(new Date().getTime());
		String lou_id=req.getParameter("lou_id");
		String danyuan=req.getParameter("danyuan");
		String menpai=req.getParameter("menpai");
		
		String mianji=req.getParameter("mianji");
		String xingming=req.getParameter("xingming");
		String dianhua=req.getParameter("dianhua");
		String userName=req.getParameter("userName");
		
		String userPw=req.getParameter("userPw");
		String del="no";
		
		String ss=liuService.panduan_lou_danyuan_menpai(lou_id, danyuan,menpai);
		if(ss.equals("yizhu"))
		{
			req.setAttribute("msg", "此门牌号的业主信息已经添加");
	        String targetURL = "/common/msg.jsp";
			dispatch(targetURL, req, res);
		}
		else
		{
			String sss=liuService.panduan_zhanghao(userName);
			if(sss.equals("yizhan"))
			{
				req.setAttribute("msg", "账号重复");
		        String targetURL = "/common/msg.jsp";
				dispatch(targetURL, req, res);
			}
			else
			{

				String sql="insert into t_user values(?,?,?,?,?,?,?,?,?,?)";
				Object[] params={id,lou_id,danyuan,menpai,mianji,xingming,dianhua,userName,userPw,del};
				DB mydb=new DB();
				mydb.doPstm(sql, params);
				mydb.closed();
				
				req.setAttribute("msg", "操作成功");
		        String targetURL = "/common/msg.jsp";
				dispatch(targetURL, req, res);
			}
		}
		
        
	}

	public void userMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
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
				
				user.setLou(liuService.getLou(rs.getString("lou_id")));
				
				userList.add(user);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("userList", userList);
		req.getRequestDispatcher("admin/user/userMana.jsp").forward(req, res);
	}
	
	
	public void userDel(HttpServletRequest req,HttpServletResponse res)
	{
        String id=req.getParameter("id");
		
		String sql="update t_user set del='yes' where id=?";
		Object[] params={id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "操作成功");
        String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
	}
	
	
	public void userPre(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
        String id=req.getParameter("id");
        Tuser user=new Tuser();
        
        List userList=new ArrayList();
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
		
		req.setAttribute("user", user);
		req.getRequestDispatcher("admin/user/userPre.jsp").forward(req, res);
	}
	
	public void userEdit(HttpServletRequest req,HttpServletResponse res)
	{
		String id=req.getParameter("id");
		//String lou_id=req.getParameter("lou_id");
		//String danyuan=req.getParameter("danyuan");
		//String menpai=req.getParameter("menpai");
		String mianji=req.getParameter("mianji");
		
		String xingming=req.getParameter("xingming");
		String dianhua=req.getParameter("dianhua");
		//String userName=req.getParameter("userName");
		//String userPw=req.getParameter("userPw");
		
		//String del="no";
		
		String sql="update t_user set mianji=?,xingming=?,dianhua=? where id=?";
		Object[] params={mianji,xingming,dianhua,id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "操作成功");
        String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
	}
	
	
	public void dispatch(String targetURI,HttpServletRequest request,HttpServletResponse response) 
	{
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher(targetURI);
		try 
		{
		    dispatch.forward(request, response);
		    return;
		} 
		catch (ServletException e) 
		{
                    e.printStackTrace();
		} 
		catch (IOException e) 
		{
			
		    e.printStackTrace();
		}
	}
	public void init(ServletConfig config) throws ServletException 
	{
		super.init(config);
	}
	
	public void destroy() 
	{
		
	}
}
