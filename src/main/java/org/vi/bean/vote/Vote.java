package org.vi.bean.vote;

public class Vote {

	  private int vote_id;
	  
	  private String vote_au;
	  
	  private String vote_theme;
	  
	  private String[] vote_option;
	  
	/**
	 * @return the vote_id
	 */
	public int getVote_id() {
		return vote_id;
	}

	/**
	 * @param vote_id the vote_id to set
	 */
	public void setVote_id(int vote_id) {
		this.vote_id = vote_id;
	}

	/**
	 * @return the vote_au
	 */
	public String getVote_au() {
		return vote_au;
	}

	/**
	 * @param vote_au the vote_au to set
	 */
	public void setVote_au(String vote_au) {
		this.vote_au = vote_au;
	}

	/**
	 * @return the vote_theme
	 */
	public String getVote_theme() {
		return vote_theme;
	}

	/**
	 * @param vote_theme the vote_theme to set
	 */
	public void setVote_theme(String vote_theme) {
		this.vote_theme = vote_theme;
	}

	public String[] getVote_option() {
		return vote_option;
	}

	public void setVote_option(String[] vote_option) {
		this.vote_option = vote_option;
	}


	  
}
