package d4jbots.enums;

public enum BotVersion {
	VERSION("v0.3.4");
	
	private String version;
	
	// constructor
	private BotVersion(String version) {
		this.version = version;
	}

	// getters & setters
	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}
}
