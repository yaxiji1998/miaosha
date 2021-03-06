package com.imooc.miaoshaproject.dao;

import com.imooc.miaoshaproject.dataobject.StockLogDO;

public interface StockLogDOMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table stock_log
     *
     * @mbg.generated Fri Apr 23 10:01:27 CST 2021
     */
    int deleteByPrimaryKey(String stockLogId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table stock_log
     *
     * @mbg.generated Fri Apr 23 10:01:27 CST 2021
     */
    int insert(StockLogDO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table stock_log
     *
     * @mbg.generated Fri Apr 23 10:01:27 CST 2021
     */
    int insertSelective(StockLogDO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table stock_log
     *
     * @mbg.generated Fri Apr 23 10:01:27 CST 2021
     */
    StockLogDO selectByPrimaryKey(String stockLogId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table stock_log
     *
     * @mbg.generated Fri Apr 23 10:01:27 CST 2021
     */
    int updateByPrimaryKeySelective(StockLogDO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table stock_log
     *
     * @mbg.generated Fri Apr 23 10:01:27 CST 2021
     */
    int updateByPrimaryKey(StockLogDO record);
}