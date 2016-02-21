package com.en.room.entity;

import java.util.Date;

public class User extends BaseVo {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_user.uid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private Integer u_i;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_user.phone
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private String p_h_o;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_user.password
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private String p_w_d;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_user.email
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private String e_m_a;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_user.ucountry
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private Byte u_c_o_y;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_user.ustatus
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private Byte u_s_t;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_user.ctime
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private Date c_t;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_user.logintime
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private Date l_t;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_user.utype
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private Byte u_t_y;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_user.uid
     *
     * @return the value of en_user.uid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public Integer getU_i() {
        return u_i;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_user.uid
     *
     * @param u_i the value for en_user.uid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setU_i(Integer u_i) {
        this.u_i = u_i;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_user.phone
     *
     * @return the value of en_user.phone
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public String getP_h_o() {
        return p_h_o;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_user.phone
     *
     * @param p_h_o the value for en_user.phone
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setP_h_o(String p_h_o) {
        this.p_h_o = p_h_o == null ? null : p_h_o.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_user.password
     *
     * @return the value of en_user.password
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public String getP_w_d() {
        return p_w_d;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_user.password
     *
     * @param p_w_d the value for en_user.password
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setP_w_d(String p_w_d) {
        this.p_w_d = p_w_d == null ? null : p_w_d.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_user.email
     *
     * @return the value of en_user.email
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public String getE_m_a() {
        return e_m_a;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_user.email
     *
     * @param e_m_a the value for en_user.email
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setE_m_a(String e_m_a) {
        this.e_m_a = e_m_a == null ? null : e_m_a.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_user.ucountry
     *
     * @return the value of en_user.ucountry
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public Byte getU_c_o_y() {
        return u_c_o_y;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_user.ucountry
     *
     * @param u_c_o_y the value for en_user.ucountry
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setU_c_o_y(Byte u_c_o_y) {
        this.u_c_o_y = u_c_o_y;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_user.ustatus
     *
     * @return the value of en_user.ustatus
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public Byte getU_s_t() {
        return u_s_t;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_user.ustatus
     *
     * @param u_s_t the value for en_user.ustatus
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setU_s_t(Byte u_s_t) {
        this.u_s_t = u_s_t;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_user.ctime
     *
     * @return the value of en_user.ctime
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public Date getC_t() {
        return c_t;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_user.ctime
     *
     * @param c_t the value for en_user.ctime
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setC_t(Date c_t) {
        this.c_t = c_t;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_user.logintime
     *
     * @return the value of en_user.logintime
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public Date getL_t() {
        return l_t;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_user.logintime
     *
     * @param l_t the value for en_user.logintime
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setL_t(Date l_t) {
        this.l_t = l_t;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_user.utype
     *
     * @return the value of en_user.utype
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public Byte getU_t_y() {
        return u_t_y;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_user.utype
     *
     * @param u_t_y the value for en_user.utype
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setU_t_y(Byte u_t_y) {
        this.u_t_y = u_t_y;
    }
}