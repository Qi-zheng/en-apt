package com.en.room.modules;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Vincent on 2016/1/9.
 */
public final class Constants {

    static {
        Constants.TRADE = new  HashMap<Short,String>();
        Constants.TYPE = new  HashMap<Short,String>();
        Constants.NATURE = new  HashMap<Short,String>();
        Constants.TECSTAGE = new  HashMap<Short,String>();
        Constants.FINSTAGE = new  HashMap<Short,String>();
        Constants.TRADE.put(new Integer(1).shortValue(),"汽车");
        Constants.TRADE.put(new Integer(2).shortValue(),"能源");
        Constants.TRADE.put(new Integer(3).shortValue(),"交通");
        Constants.TRADE.put(new Integer(4).shortValue(),"信息");
        Constants.TRADE.put(new Integer(5).shortValue(),"服务");
        Constants.TRADE.put(new Integer(6).shortValue(),"金融");
        Constants.TRADE.put(new Integer(7).shortValue(),"其他");
        Constants.TYPE.put(new Integer(1).shortValue(),"技术创新");
        Constants.TYPE.put(new Integer(2).shortValue(),"商业模式创新");
        Constants.NATURE.put(new Integer(1).shortValue(),"国企");
        Constants.NATURE.put(new Integer(2).shortValue(),"民企");
        Constants.NATURE.put(new Integer(3).shortValue(),"上市民企");
        Constants.NATURE.put(new Integer(4).shortValue(),"非盈利组织");
        Constants.TECSTAGE.put(new Integer(1).shortValue(),"开发实验");
        Constants.TECSTAGE.put(new Integer(2).shortValue(),"小范围测试");
        Constants.TECSTAGE.put(new Integer(3).shortValue(),"商业应用");
        Constants.FINSTAGE.put(new Integer(1).shortValue(),"尚未融资");
        Constants.FINSTAGE.put(new Integer(2).shortValue(),"天使轮");
        Constants.FINSTAGE.put(new Integer(3).shortValue(),"A轮");
        Constants.FINSTAGE.put(new Integer(4).shortValue(),"B轮");
        Constants.FINSTAGE.put(new Integer(5).shortValue(),"C轮");
        Constants.FINSTAGE.put(new Integer(6).shortValue(),"C轮以后");
    }

    public static final String ENTERPRISE_INFO_FILEPATH = "/article/enterprise/info/";
    public static final String DESIRED_SCHEME_INFO_FILEPATH = "/article/desired/scheme/info/";
    public static final String IDEAL_INFO_FILEPATH="/article/ideal/info/";

    public static Map<Short,String> TRADE;

    public static Map<Short,String> TYPE;

    public static Map<Short,String> NATURE;
    public static Map<Short,String> TECSTAGE;
    public static Map<Short,String> FINSTAGE;

}
