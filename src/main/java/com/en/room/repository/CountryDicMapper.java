package com.en.room.repository;

import com.en.room.entity.CountryDic;

public interface CountryDicMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_country_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int deleteByPrimaryKey(Integer c_c_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_country_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insert(CountryDic record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_country_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insertSelective(CountryDic record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_country_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    CountryDic selectByPrimaryKey(Integer c_c_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_country_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKeySelective(CountryDic record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_country_dic
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKey(CountryDic record);
}