package com.en.room.entity;

import java.util.Date;

public class Order extends BaseVo {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_user_order.uid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private Integer u_i;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_user_order.rbiid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private Integer r_b_i;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_user_order.ctime
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private Date c_t;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_user_order.otype
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private Byte o_t_y;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_user_order.uid
     *
     * @return the value of en_user_order.uid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public Integer getU_i() {
        return u_i;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_user_order.uid
     *
     * @param u_i the value for en_user_order.uid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setU_i(Integer u_i) {
        this.u_i = u_i;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_user_order.rbiid
     *
     * @return the value of en_user_order.rbiid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public Integer getR_b_i() {
        return r_b_i;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_user_order.rbiid
     *
     * @param r_b_i the value for en_user_order.rbiid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setR_b_i(Integer r_b_i) {
        this.r_b_i = r_b_i;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_user_order.ctime
     *
     * @return the value of en_user_order.ctime
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public Date getC_t() {
        return c_t;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_user_order.ctime
     *
     * @param c_t the value for en_user_order.ctime
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setC_t(Date c_t) {
        this.c_t = c_t;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_user_order.otype
     *
     * @return the value of en_user_order.otype
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public Byte getO_t_y() {
        return o_t_y;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_user_order.otype
     *
     * @param o_t_y the value for en_user_order.otype
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setO_t_y(Byte o_t_y) {
        this.o_t_y = o_t_y;
    }
}