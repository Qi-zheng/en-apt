package com.en.room.repository;

import com.en.room.entity.User;

public interface UserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_user
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int deleteByPrimaryKey(Integer u_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_user
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insert(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_user
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insertSelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_user
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    User selectByPrimaryKey(Integer u_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_user
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKeySelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_user
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKey(User record);
}