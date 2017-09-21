package com.sysd.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.hos.service.orderService;
import com.opensymphony.xwork2.ActionSupport;
import com.sysd.entity.Order;
import com.sysd.entity.Page;
import com.sysd.entity.Privilege;
import com.sysd.entity.Role;
import com.sysd.entity.RoleUser;
import com.sysd.entity.RoleUserId;
import com.sysd.entity.User;
import com.sysd.service.DepartmentService;
import com.sysd.service.PaiBanService;
import com.sysd.service.PartService;
import com.sysd.service.RolePrivilegeService;
import com.sysd.service.RoleUserService;
import com.sysd.service.UserService;
import com.sysd.tests.PageUtil;

@Component("userAction")
@Scope("prototype")
public class UserAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	private List<User> alluserList;
	private List<Role> alroleList;
	private DepartmentService departmentService;
	int ids;
	private List<Order> orders;
	private orderService<?>  orderService;
	private Page page;
	private PaiBanService paiBanService;
	private PartAction partAction;
	private PartService partService;
	private HttpServletRequest request = ServletActionContext.getRequest();
	private List<Role> roleList;
	private RolePrivilegeService rolePrivilegeService;
	private List<RoleUser> roleUsers;
	private RoleUserService roleUserService;
	private HttpSession session = request.getSession();
	private Set<Privilege> set;
	private User user;
	private UserService userService;

	public String ChangeRole()
	{
		String idString = (String) request.getParameter("id");
		String[] rolesStrings = request.getParameterValues("usersrole");

		Integer id = Integer.parseInt(idString);
		try
		{

			roleUsers = roleUserService.delete(roleUserService.findbyuid(id));
			if (rolesStrings != null)
			{
				for (String role : rolesStrings)
				{
					RoleUser rUser = new RoleUser();
					RoleUserId ruid = new RoleUserId();
					ruid.setRoleId(Integer.parseInt(role));
					ruid.setUserId(id);
					rUser.setId(ruid);
					roleUserService.save(rUser);
				}
				this.FindUser();
				request.setAttribute("change", "角色修改成功");
			}

		}
		catch (Exception e)
		{
			for (RoleUser rus : roleUsers)
			{
				roleUserService.save(rus);
			}
			request.setAttribute("change", "角色修改失败");
			e.printStackTrace();
		}
		return SUCCESS;
	}
	public String ChangeUser()
	{
		String returnFlage = "success";
		String idString = (String) request.getParameter("ids");
		String fromString = (String) session.getAttribute("from");
		if (idString != null && idString != "" && fromString != "")
		{
			int userid = Integer.parseInt(idString);
			try
			{
				user = userService.change(userid, user);
				request.setAttribute("reslut", "信息修改成功");
			}
			catch (Exception e)
			{
				userService.Delete(user);
				userService.SaveUser(user);
				request.setAttribute("reslut", "信息修改失败");
			}
			finally
			{
				System.out.println("fromString 的 值是   ：" + fromString);
				if ("1".equals(fromString))
				{
					System.out.println("执行....");
					returnFlage = "user";
					this.findBh();
				}
				else
				{
					this.findAllDocs();
				}
			}
		}
		return returnFlage;
	}

	public void Del()
	{
		String idString = (String) request.getParameter("id");
		if (idString != null)
		{
			int userid = Integer.valueOf(idString);
			userService.Delete(userService.findUserByid(userid));
		}
	}

	public String findAllDocs()
	{
		int CurrentPage = 1, span = 50;
		page = PageUtil.setPageInfo(userService.findDoc(), CurrentPage, span);
		return SUCCESS;
	}

	public String findBh()
	{
		int CurrentPage = 1, span = 50;
		page = PageUtil.setPageInfo(userService.findBr(), CurrentPage, span);
		return SUCCESS;
	}

	public String FindOrderbyDocName()
	{
		 String docid=(String)session.getAttribute("userid");
		 orders=orderService.FindOrderByDocID(docid);
	   	return SUCCESS;
	}

	public String FindRole()
	{
		roleList = roleUserService.findallrole();
		return SUCCESS;
	}

	public String FindRoles()
	{
		String idString = request.getParameter("id").toString();
		Integer id = Integer.parseInt(idString);
		ids = id;
		roleList = roleUserService.findrolebyuserid(id);
		alroleList = roleUserService.findallrole();
		return SUCCESS;
	}

	public String FindUser()
	{
		alluserList = userService.findAll();
		return SUCCESS;
	}

	public List<User> getAlluserList()
	{
		return alluserList;
	}

	public List<Role> getAlroleList()
	{
		return alroleList;
	}

	public DepartmentService getDepartmentService()
	{
		return departmentService;
	}

	public int getIds()
	{
		return ids;
	}

	public List<Order> getOrders()
	{
		return orders;
	}

	public orderService<?> getOrderService()
	{
		return orderService;
	}

	public Page getPage()
	{
		return page;
	}

	public PaiBanService getPaiBanService()
	{
		return paiBanService;
	}

	public PartAction getPartAction()
	{
		return partAction;
	}

	public PartService getPartService()
	{
		return partService;
	}

	public List<Role> getRoleList()
	{
		return roleList;
	}

	// private
	public RolePrivilegeService getRolePrivilegeService()
	{
		return rolePrivilegeService;
	}

	public List<RoleUser> getRoleUsers()
	{
		return roleUsers;
	}

	public RoleUserService getRoleUserService()
	{
		return roleUserService;
	}

	public Set<Privilege> getSet()
	{
		return set;
	}

	public User getUser()
	{
		return user;
	}

	public UserService getUserService()
	{
		return userService;
	}

	public String Login()
	{
		String flageString = SUCCESS;
		User loginuser = null;
		ArrayList<Integer> idsInteger = new ArrayList<Integer>();
		try
		{
			loginuser = userService.Login(user);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		if (loginuser != null)
		{
			if ("是".equals(loginuser.getIsavailable()))
			{
				if (loginuser.getPassWord().equals(user.getPassWord()))
				{
					idsInteger = roleUserService.findRolebyUser(loginuser);// 返回该用户所对应的角色id
					if (idsInteger.size() == 1 && idsInteger.get(0) == 1)
					{
						flageString = "success1";
					}
					set = rolePrivilegeService.findbyRole(idsInteger);// 返回角色所对应的权限
					session.setAttribute("loginuser", loginuser.getUserName());// 设置登陆标记
					session.setAttribute("userid", loginuser.getId().toString());
				}
				else
				{
					flageString = ERROR;
					session.setAttribute("LoginReslut", "密码输入错误");// 返回登陆标记
				}
			}
			else
			{
				flageString = ERROR;
				session.setAttribute("LoginReslut", "由于您的近期违规操作，您已经被封号");// 返回登陆标记
			}

		}
		else
		{
			flageString = ERROR;
			session.setAttribute("LoginReslut", "没有用户信息");// 返回登陆标记
		}
		return flageString;
	}

	public String Register()
	{
		Integer markInteger = Integer.parseInt(request.getParameter("mark"));
		User RealUser = new User();
		RoleUser roleUser = new RoleUser();
		RoleUserId roleUserId = new RoleUserId();
		String flageString = SUCCESS;
		if (markInteger == 2)
		{
			String nameString = user.getDepartment().getName();
			user.setDepartment(departmentService.findbyname(nameString.trim())
					.get(0));
		}
		RealUser = userService.SaveUser(user);// 将用户信息存到数据库并返回已经存好的用户
		paiBanService.AddPaiBan(RealUser.getId(), RealUser);
		Integer userid = RealUser.getId();// 保存好的用户的id
		Integer roleid = markInteger;// 对应普通用户的这个角色的id
		roleUserId.setRoleId(roleid);
		roleUserId.setUserId(userid);
		roleUser.setId(roleUserId);
		if (markInteger == 1)
		{
			if (roleUserService.save(roleUser))
			{
				session.setAttribute("LoginReslut", "注册成功");
			}
			else
			{
				userService.Delete(RealUser);
				flageString = ERROR;
				session.setAttribute("RegisterReslut", "注册失败");
			}
		}
		else
		{
			if (roleUserService.save(roleUser))
			{
				session.setAttribute("Reslut", "注册成功");
				partAction.FindPart();
				flageString = "doc";
			}
			else
			{
				userService.Delete(RealUser);
				partAction.FindPart();
				flageString = "doc";
				session.setAttribute("Reslut", "注册失败");
			}
		}
		return flageString;
	}

	public void setAlluserList(List<User> alluserList)
	{
		this.alluserList = alluserList;
	}

	public void setAlroleList(List<Role> alroleList)
	{
		this.alroleList = alroleList;
	}

	@Autowired
	public void setDepartmentService(DepartmentService departmentService)
	{
		this.departmentService = departmentService;
	}

	public void setIds(int ids)
	{
		this.ids = ids;
	}

	public void setOrders(List<Order> orders)
	{
		this.orders = orders;
	}

	@Autowired
	public void setOrderService(orderService<?> orderService)
	{
		this.orderService = orderService;
	}

	public void setPage(Page page)
	{
		this.page = page;
	}

	@Autowired
	public void setPaiBanService(PaiBanService paiBanService)
	{
		this.paiBanService = paiBanService;
	}

	@Autowired
	public void setPartAction(PartAction partAction)
	{
		this.partAction = partAction;
	}

	@Autowired
	public void setPartService(PartService partService)
	{
		this.partService = partService;
	}

	public void setRoleList(List<Role> roleList)
	{
		this.roleList = roleList;
	}

	@Autowired
	public void setRolePrivilegeService(
			RolePrivilegeService rolePrivilegeService)
	{
		this.rolePrivilegeService = rolePrivilegeService;
	}

	public void setRoleUsers(List<RoleUser> roleUsers)
	{
		this.roleUsers = roleUsers;
	}

	@Autowired
	public void setRoleUserService(RoleUserService roleUserService)
	{
		this.roleUserService = roleUserService;
	}

	public void setSet(Set<Privilege> set)
	{
		this.set = set;
	}

	public void setUser(User user)
	{
		this.user = user;
	}

	@Autowired
	public void setUserService(UserService userService)
	{
		this.userService = userService;
	}

	public String UserMessage()
	{
		String flage = "doctors";
		String fromString = (String) request.getParameter("from");
		session.setAttribute("from", fromString);
		if ("1".equals(fromString))
		{
			flage = "user";
		}
		String id = request.getParameter("id");
		if (id == null || id == "")
		{
			id = (String) session.getAttribute("userid");
			flage = SUCCESS;
		}
		Integer idInteger = 0;
		try
		{
			idInteger = Integer.parseInt(id);
			ids = idInteger;
			user = userService.findUserByid(idInteger);
		}
		catch (Exception e)
		{
			System.out.println("在" + this.getClass().getName()
					+ "类中执行UserMessage方法的时候出现了错误");
			e.printStackTrace();
			System.out
					.println("......................................................................................................................");
		}
		return flage;
	}
}
