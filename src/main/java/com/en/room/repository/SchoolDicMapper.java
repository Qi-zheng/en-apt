package com.en.room.repository;

import com.en.room.entity.SchoolDic;

public interface SchoolDicMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_school_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int deleteByPrimaryKey(Integer s_d_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_school_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insert(SchoolDic record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_school_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insertSelective(SchoolDic record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_school_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    SchoolDic selectByPrimaryKey(Integer s_d_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_school_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKeySelective(SchoolDic record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_school_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKey(SchoolDic record);
}