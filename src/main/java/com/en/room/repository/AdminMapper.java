package com.en.room.repository;

import com.en.room.entity.Admin;

public interface AdminMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_admin
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int deleteByPrimaryKey(Integer a_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_admin
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insert(Admin record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_admin
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insertSelective(Admin record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_admin
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    Admin selectByPrimaryKey(Integer a_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_admin
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKeySelective(Admin record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_admin
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKey(Admin record);
}