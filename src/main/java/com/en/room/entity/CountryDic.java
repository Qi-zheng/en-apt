package com.en.room.entity;


public class CountryDic extends BaseVo {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_country_dic.ccid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private Integer c_c_i;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_country_dic.cname
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private String c_n_a;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_country_dic.ccid
     *
     * @return the value of en_country_dic.ccid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public Integer getC_c_i() {
        return c_c_i;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_country_dic.ccid
     *
     * @param c_c_i the value for en_country_dic.ccid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setC_c_i(Integer c_c_i) {
        this.c_c_i = c_c_i;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_country_dic.cname
     *
     * @return the value of en_country_dic.cname
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public String getC_n_a() {
        return c_n_a;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_country_dic.cname
     *
     * @param c_n_a the value for en_country_dic.cname
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setC_n_a(String c_n_a) {
        this.c_n_a = c_n_a == null ? null : c_n_a.trim();
    }
}