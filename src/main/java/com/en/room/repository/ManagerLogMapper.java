package com.en.room.repository;

import com.en.room.entity.ManagerLog;

public interface ManagerLogMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_manager_log
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int deleteByPrimaryKey(Integer m_l_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_manager_log
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insert(ManagerLog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_manager_log
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insertSelective(ManagerLog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_manager_log
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    ManagerLog selectByPrimaryKey(Integer m_l_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_manager_log
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKeySelective(ManagerLog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_manager_log
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKey(ManagerLog record);
}