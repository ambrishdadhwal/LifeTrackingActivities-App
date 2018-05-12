package org.personal.messenger.resources;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.personal.messenger.model.Signup;

@Path("/users")
public class NewUserResource {

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Signup newUser(Signup user) {
		System.out.println("i am herer");
		return user;
	}
}
