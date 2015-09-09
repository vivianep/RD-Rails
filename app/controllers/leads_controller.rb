require "rd_challenge_vivianec"
class LeadsController < ApplicationController
	
	
	 

	def new
		person= Lead.new()
	
	end

	def create
		@salesForce= Rd_challenge.new("vivianecosta2794-46qy@force.com","vivi123456","pYZs1lIFOo9BPFQf6QWKnBNdv")
 		person = Lead.new(lead_params) 
  		@salesForce.createLead(person.Name,person.LastName,person.Email,person.Company,person.Title,person.Phone,person.Website)

 	end 

 	def show

 		@salesForce= Rd_challenge.new("vivianecosta2794-46qy@force.com","vivi123456","pYZs1lIFOo9BPFQf6QWKnBNdv")
 		@persons =@salesForce.getLeads()
 		@leads=[]
 		@persons.each do |p|
 			@lead=Lead.new
 			@lead.Name = p.Name
 			@lead.LastName = p.LastName
 			@lead.Email= p.Email
 			@lead.Company= p.Company
 			@lead.Title= p.Title
 			@lead.Phone= p.Phone
 			@lead.Website = p.Website
			@leads<<@lead
 		end

 	end 
	
	private 
  	
  		def lead_params 
    	params.require(:person).permit(:name, :lastName, :email, :phone, :website , :title , :company) 
 		end


end
