package com.en.room.entity;


public class RoomDetail extends BaseVo {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_room_detail.rdid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private Integer r_d_i;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_room_detail.roomno
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private String r_o_n;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_room_detail.rbiid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private Integer r_b_i;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column en_room_detail.roominfo
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    private String r_o_i;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_room_detail.rdid
     *
     * @return the value of en_room_detail.rdid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public Integer getR_d_i() {
        return r_d_i;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_room_detail.rdid
     *
     * @param r_d_i the value for en_room_detail.rdid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setR_d_i(Integer r_d_i) {
        this.r_d_i = r_d_i;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_room_detail.roomno
     *
     * @return the value of en_room_detail.roomno
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public String getR_o_n() {
        return r_o_n;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_room_detail.roomno
     *
     * @param r_o_n the value for en_room_detail.roomno
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setR_o_n(String r_o_n) {
        this.r_o_n = r_o_n == null ? null : r_o_n.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_room_detail.rbiid
     *
     * @return the value of en_room_detail.rbiid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public Integer getR_b_i() {
        return r_b_i;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_room_detail.rbiid
     *
     * @param r_b_i the value for en_room_detail.rbiid
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setR_b_i(Integer r_b_i) {
        this.r_b_i = r_b_i;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column en_room_detail.roominfo
     *
     * @return the value of en_room_detail.roominfo
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public String getR_o_i() {
        return r_o_i;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column en_room_detail.roominfo
     *
     * @param r_o_i the value for en_room_detail.roominfo
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    public void setR_o_i(String r_o_i) {
        this.r_o_i = r_o_i == null ? null : r_o_i.trim();
    }
}