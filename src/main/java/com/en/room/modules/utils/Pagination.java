package com.en.room.modules.utils;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
/**
 * 通用分页类
 * @author zhengqi
 * @date 2016年1月5日 下午2:27:10
 * @{tag}
 */
public class Pagination<T> implements Serializable{

	private static final long serialVersionUID = 1L;
	public static final int DEF_PAGE_SIZE = 10; //默认显示10条数据
	public static final int DEF_DISLAY_PAGENUM = 10; //默认显示十个页码
	protected int displayPageNum = DEF_DISLAY_PAGENUM; //默认显示10个页码
	protected int totalCount = 0; //总记录条数
	protected int pageSize = DEF_PAGE_SIZE; //页面中显示的数据多少
	protected int pageNo = 1; //当前页码
	protected List<T> pageData; //分页中显示的数据的集合
	protected int startRow = 0;//起始行
	protected int totalPageNo; //总的页码数
	protected int[] pageNums; //页面显示的页码集
	private String pageSizeName;
	private String pageNoName;
	private String totalCountName;
	
	public Pagination() {
		
	}

	/**
	 * 构造器
	 * 
	 * @param pageNo
	 *            页码
	 * @param pageSize
	 *            每页几条数据
	 * @param totalCount
	 *            总共几条数据
	 */
	public Pagination(int pageNo, int pageSize, int totalCount) {
		setPageSize(pageSize);
		setTotalCount(totalCount);
		setPageNo(pageNo);
		calculateTotalPageNo(); //计算总的页码数
		adjustPageNo(); //调整页码
		caculateStartRow(); //进行startRow的计算
		calculateDisNum(); //进行页码显示计算
	}

	
	/**
	 * 进行总的参数的调整，适合setter所有参数后，进行参数的调整
	 */
	public void adjustAllProcess(){
		calculateTotalPageNo(); //计算总的页码数
		adjustPageNo(); //调整页码
		caculateStartRow(); //进行startRow的计算
		calculateDisNum(); //进行页码显示计算
	}
	
	/**
	 * 调整传入的请求页码
	 */
	public void adjustPageNo() {
		
		if(this.totalPageNo < this.pageNo && this.totalPageNo > 0){
			this.pageNo = this.totalPageNo;
		}
	}

	/**
	 * 进行startRow的计算
	 */
	public void caculateStartRow() {
		this.startRow = (this.pageNo -1) * this.pageSize;
	}

	/**
	 * 计算总的页码数，注意这样一定要先注入pageSize和totalCount
	 */
	public void calculateTotalPageNo() {
		this.totalPageNo = this.totalCount%this.pageSize == 0?this.totalCount/this.pageSize:this.totalCount/this.pageSize+1;
	}

	/**
	 * 获得页码
	 */
	public int getPageNo() {
		return pageNo;
	}

	/**
	 * 每页几条数据
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * 总共几条数据
	 */
	public int getTotalCount() {
		return totalCount;
	}



	/**
	 * 是否第一页
	 */
	public boolean isFirstPage() {
		return pageNo <= 1;
	}

	/**
	 * 是否最后一页
	 */
	public boolean isLastPage() {
		return pageNo >= this.totalPageNo;
	}

	/**
	 * 下一页页码
	 */
	public int getNextPage() {
		if (isLastPage()) {
			return pageNo;
		} else {
			return pageNo + 1;
		}
	}

	/**
	 * 上一页页码
	 */
	public int getPrePage() {
		if (isFirstPage()) {
			return pageNo;
		} else {
			return pageNo - 1;
		}
	}

	/**
	 * if totalCount<0 then totalCount=0
	 * 
	 * @param totalCount
	 */
	public void setTotalCount(int totalCount) {
		if (totalCount < 0) {
			this.totalCount = 0;
		} else {
			this.totalCount = totalCount;
		}
	}

	/**
	 * if pageSize< 1 then pageSize=DEF_COUNT
	 * 
	 * @param pageSize
	 */
	public void setPageSize(int pageSize) {
		if (pageSize < 1) {
			this.pageSize = DEF_PAGE_SIZE;
		} else {
			this.pageSize = pageSize;
		}
	}

	/**
	 * if pageNo < 1 then pageNo=1
	 * 
	 * @param pageNo
	 */
	public void setPageNo(int pageNo) {
		if (pageNo < 1) {
			this.pageNo = 1;
		} else {
			this.pageNo = pageNo;
		}
	}
	
	
	
	/**
	 * 进行显示页码的计算
	 */
	public void calculateDisNum(){
		
		if(this.totalPageNo > this.displayPageNum){
			this.pageNums = new int[this.displayPageNum];
			
			int bet = (this.displayPageNum % 2 == 0 ? this.displayPageNum /2 : (this.displayPageNum /2+1));
			if(this.pageNo <= bet){
				
				for(int i=1;i<=this.displayPageNum;i++){
					pageNums[i-1] = i;
				}
				
			}else{
				//后面没有那么多
				if((this.pageNo + bet) > this.totalPageNo){
					
					for(int i=(this.totalPageNo-this.displayPageNum+1),j=0;i<=this.totalPageNo;i++,j++){
						this.pageNums[j] = i;
					}
					
				}else{
					//偶数
					if(this.displayPageNum % 2 == 0){
						
						for(int i=(this.pageNo-bet),j=0;i<=(this.pageNo+bet-1);i++){
							
							this.pageNums[j] = i;
							j++;
						}
					}else{
						for(int i=(this.pageNo-bet+1),j=0;i<=(this.pageNo+bet-1);i++){
							System.out.println(i);
							this.pageNums[j] = i;
							j++;
						}
					}
				}
			}
			
		}else{
			this.pageNums = new int[this.totalPageNo];
			for(int i=1;i<=this.totalPageNo;i++){
				this.pageNums[i-1] = i;
			}
		}
	
	}
	public List<T> getPageData() {
		return pageData;
	}

	public void setPageData(List<T> pageData) {
		this.pageData = pageData;
	}

	public int getStartRow() {
		
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getTotalPageNo() {
		return totalPageNo;
	}

	public void setTotalPageNo(int totalPageNo) {
		this.totalPageNo = totalPageNo;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		
		if(displayPageNum <= 1){
			this.displayPageNum = DEF_DISLAY_PAGENUM;
		}else{
			this.displayPageNum = displayPageNum;
		}
	}

	@Override
	public String toString() {
		return "Pagination [displayPageNum=" + displayPageNum + ", totalCount="
				+ totalCount + ", pageSize=" + pageSize + ", pageNo=" + pageNo
				+ ", pageData=" + pageData + ", startRow=" + startRow
				+ ", totalPageNo=" + totalPageNo + ", pageNums="
				+ Arrays.toString(pageNums) + "]";
	}

	public int[] getPageNums() {
		return pageNums;
	}

	public String getPageSizeName() {
		return pageSizeName;
	}

	public void setPageSizeName(String pageSizeName) {
		this.pageSizeName = pageSizeName;
	}

	public String getPageNoName() {
		return pageNoName;
	}

	public void setPageNoName(String pageNoName) {
		this.pageNoName = pageNoName;
	}

	public String getTotalCountName() {
		return totalCountName;
	}

	public void setTotalCountName(String totalCountName) {
		this.totalCountName = totalCountName;
	}
}
