package com.sbs.chapter17.entity;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @Author: yangzhicheng
 * @Date: 2018/7/23 16:54
 */
public class JsonResult {
    /**返回编码1、成功；0、失败*/
    public int status;

    /** layui前端解析需要code字段为0，和业务无关*/
    public int code = 0;

    /**
     * layui前端解析需要数据条数，与业务无关
     */
    public Long count;

    /** 返回信息*/
    public String msg;

    /** 返回数据*/
    public Object data;

    public JsonResult() {
    }

    /**
     * 构造函数
     *
     */
    public JsonResult(Object data) {
        this.data = data;
    }


    public JsonResult(int code,Object data){
        this.code=code;
        this.data=data;
    }

    /**
     * 构造函数
     *
     */
    public JsonResult(Object data, int status, String msg) {
        this.data = data;
        this.status = status;
        this.msg = msg;
    }

    public JsonResult(Object data, int status, String msg,Long count) {
        this.data = data;
        this.status = status;
        this.msg = msg;
        this.count=count;
    }

    /**
     * 设置count和data
     * @param page
     */
//    public void setJsonResultPage(PageInfo<?> page){
//        this.data = page;
//    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }


    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "JsonResult{" +
                "status=" + status +
                ", code=" + code +
                ", count=" + count +
                ", msg='" + msg + '\'' +
                ", data=" + data +
                '}';
    }
}
