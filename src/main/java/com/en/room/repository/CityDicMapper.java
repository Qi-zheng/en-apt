package com.en.room.repository;

import com.en.room.entity.CityDic;

public interface CityDicMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_city_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int deleteByPrimaryKey(Integer c_d_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_city_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insert(CityDic record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_city_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insertSelective(CityDic record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_city_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    CityDic selectByPrimaryKey(Integer c_d_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_city_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKeySelective(CityDic record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_city_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKey(CityDic record);
}