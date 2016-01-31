package tour;

public class Struct {
	private Hotel h;
	public Attraction att[]=new Attraction[10];
	private Place p;
	public Hotel getH() {
		return h;
	}
	public void setH(Hotel h) {
		this.h = h;
	}
	public Attraction[] getAtt() {
		return att;
	}
	public void setAtt(Attraction[] att) {
		this.att = att;
	}
	public Place getP() {
		return p;
	}
	public void setP(Place p) {
		this.p = p;
	}
}
