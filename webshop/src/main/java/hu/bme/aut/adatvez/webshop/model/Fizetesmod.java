package hu.bme.aut.adatvez.webshop.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.OneToMany;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureParameter;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;


/**
 * The persistent class for the FIZETESMOD database table.
 * 
 */
@Entity
@NamedQuery(name="Fizetesmod.findAll", query="SELECT f FROM Fizetesmod f")
@NamedStoredProcedureQueries({
	@NamedStoredProcedureQuery(name = "fizModSP", 
			procedureName = "FizetesModLetrehozasa",			
			parameters = {
	        	@StoredProcedureParameter(mode = ParameterMode.IN, name = "fmod", type = String.class),
	        	@StoredProcedureParameter(mode = ParameterMode.IN, name = "hatarido", type = BigDecimal.class)	        	
	        })	  
})
public class Fizetesmod implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;

	@NotNull
	private BigDecimal hatarido;

	@Column(name="MOD")
	@NotEmpty
	private String mod;

	//bi-directional many-to-one association to Megrendeles
	@OneToMany(mappedBy="fizetesmod")
	private List<Megrendeles> megrendeles;

	public Fizetesmod() {
	}

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public BigDecimal getHatarido() {
		return this.hatarido;
	}

	public void setHatarido(BigDecimal hatarido) {
		this.hatarido = hatarido;
	}

	public String getMod() {
		return this.mod;
	}

	public void setMod(String mod) {
		this.mod = mod;
	}

	public List<Megrendeles> getMegrendeles() {
		return this.megrendeles;
	}

	public void setMegrendeles(List<Megrendeles> megrendeles) {
		this.megrendeles = megrendeles;
	}

	public Megrendeles addMegrendele(Megrendeles megrendele) {
		getMegrendeles().add(megrendele);
		megrendele.setFizetesmod(this);

		return megrendele;
	}

	public Megrendeles removeMegrendele(Megrendeles megrendele) {
		getMegrendeles().remove(megrendele);
		megrendele.setFizetesmod(null);

		return megrendele;
	}

}