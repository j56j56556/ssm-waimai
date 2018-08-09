package com.homework.foshan.object;

public class QueryLimitPage {
	private int line;
	private int start;
	private int end;
	private int linenum;
	public void compute()
	{
		start=linenum*(line-1);
		end=line*linenum-1;
	}
	public void setLine(int line) {
		this.line = line;
	}
	public int getLine() {
		return line;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getStart() {
		return start;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getEnd() {
		return end;
	}
	public void setLinenum(int linenum) {
		this.linenum = linenum;
	}
	public int getLinenum() {
		return linenum;
	}
	
}
