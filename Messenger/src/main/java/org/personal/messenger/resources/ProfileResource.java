package org.personal.messenger.resources;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.personal.messenger.model.Profile;
import org.personal.messenger.service.ProfileService;

@Path("/profiles")
public class ProfileResource {
	private ProfileService ProfileResource = new ProfileService();

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Profile> getProfiles() {
		return ProfileResource.getProfiles();
	}

	@GET
	@Path("/profileCount")
	@Produces(MediaType.APPLICATION_JSON)
	public List<String> getCounts() {
		return ProfileResource.getCounts();
	}

	@GET
	@Path("/profile/{username}/{password}")
	@Produces(MediaType.APPLICATION_JSON)
	public Profile getProfile(@PathParam("username") int username, @PathParam("password") int password) {
		return ProfileResource.getProfile(username, password);
	}

	@GET
	@Path("/{userName}")
	@Produces(MediaType.APPLICATION_JSON)
	public Profile getUser(@PathParam("userName") long userName) {
		return ProfileResource.getUser(userName);
	}

	@DELETE
	@Path("/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public Profile deleteMessage(@PathParam("id") long id) {
		return ProfileResource.removeMessage(id);
	}

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Profile addMessage(Profile profile) {
		System.out.println(profile);
		return ProfileResource.addProfile(profile);
	}

	@PUT
	@Path("/update")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Profile updateMessage(Profile profile) {
		return ProfileResource.updateMessage(profile);
	}
}
