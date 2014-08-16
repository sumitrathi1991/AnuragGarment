import com.anand.auth.Role
import com.anand.auth.User
import com.anand.auth.UserRole
class BootStrap {

    def init = { servletContext ->
		if (Role.count() == 0) {
			new Role(authority:"ROLE_BUYER",roleName:"BUYER" ).save();
			new Role(authority:"ROLE_SUPER_ADMIN",roleName:"SUPERADMIN").save();
		}
		if(User.count() == 0){
			User superuser = new User(username:'superadmin', password:'superadmin',fullName:"Anurag Anand", accountLocked:false, enabled:true, accountExpired:false, passwordExpired:false, registrationDate:new Date()).save(flush:true);
			UserRole superAdminRole=new UserRole(user:superuser, role:Role.findWhere(authority:'ROLE_SUPER_ADMIN')).save();
		}
    }
    def destroy = {
    }
}
