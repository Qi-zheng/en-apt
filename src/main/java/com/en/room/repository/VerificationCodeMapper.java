package com.en.room.repository;

import com.en.room.entity.VerificationCode;

public interface VerificationCodeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_verification_code
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int deleteByPrimaryKey(Integer v_c_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_verification_code
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insert(VerificationCode record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_verification_code
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int insertSelective(VerificationCode record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_verification_code
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    VerificationCode selectByPrimaryKey(Integer v_c_i);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_verification_code
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKeySelective(VerificationCode record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table en_verification_code
     *
     * @mbggenerated Fri Feb 19 16:45:13 CST 2016
     */
    int updateByPrimaryKey(VerificationCode record);
}