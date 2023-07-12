package com.eddie.operate;

import com.eddie.domain.Monster;

import com.eddie.jdbc.Jdbc;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.util.EntityUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class getData {
    private static ArrayList<Monster> arrayList = new ArrayList<>();
    /**
     *获取所有怪物信息
     */
    public static List<Monster> getMonsterData(String url, HttpClient httpClient) throws IOException {
        String UserAgent ="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.160 Safari/537.22";
        String Host="mhrise.kiranico.com";
        String Accept="text/html";
        String AcceptCharset="utf-8";
        String AcceptEncoding="gzip";
        String AcceptLanguage="en-US,en";
        HttpGet get = new HttpGet(url);
        get.addHeader("User-Agent",UserAgent);
        get.addHeader("Host",Host);
        get.addHeader("Accept",Accept);
        get.addHeader("Accept-Charset",AcceptCharset);
        get.addHeader("Accept-Encoding",AcceptEncoding);
        get.addHeader("Accept-Language",AcceptLanguage);
        get.addHeader("Cookie","ll=\"108289\"; _vwo_uuid_v2=D4F01AED60C97F5F01DD4CED2B7F13EB2|449bdc1dbe07071df6781ef72ae772ba; bid=eTCEBbouSjo; __yadk_uid=qN2yoaZjl7lguoxeBISjhppeA9Pp1TrU; __gads=ID=3078282c4d5707dc-22bd36330ed90050:T=1672046832:RT=1672046832:S=ALNI_MaAkLn8bJDnE1QkXbBK1mYuBGJmfw; __utmc=30149280; __utmz=30149280.1672102102.4.2.utmcsr=baidu|utmccn=(organic)|utmcmd=organic; __utmc=223695111; __utmz=223695111.1672102102.4.2.utmcsr=baidu|utmccn=(organic)|utmcmd=organic; __gpi=UID=00000b97b9edba4d:T=1672046832:RT=1672102105:S=ALNI_MZ9SDywDFTrqVqRBJr_d0Giw3pNWw; _pk_ref.100001.4cf6=[\"\",\"\",1672109873,\"https://www.baidu.com/link?url=c-LiC_KH1-0CKDq9cX_VIdHJQlvPe6L3xQpt94I-6wuaq_e38hEh8ZKhCDP4KFF3agfKfDzEKhy6T6RT8IGWw_&wd=&eqid=efc50d7500c7be0f0000000263aa40d5\"]; _pk_ses.100001.4cf6=*; dbcl2=\"243664676:/4X/MrNJOrQ\"; ck=6f4l; push_noty_num=0; push_doumail_num=0; __utma=30149280.109128069.1671977663.1672107256.1672109934.6; __utmt=1; __utmv=30149280.24366; __utmb=30149280.2.10.1672109934; __utma=223695111.466265960.1671977663.1672107256.1672109950.6; __utmb=223695111.0.10.1672109950; _pk_id.100001.4cf6=93b912d9c5c341b5.1672046830.4.1672109950.1672107760.");
        HttpResponse response = new BasicHttpResponse(HttpVersion.HTTP_1_1, HttpStatus.SC_OK,"OK");
        response = httpClient.execute(get);
        int statusCode = response.getStatusLine().getStatusCode();
        System.out.println(statusCode);
        if (statusCode==200){
            String html = EntityUtils.toString(response.getEntity());
            Document doc = Jsoup.parse(html);
            Elements elements = doc.select("h3[class=text-sm font-medium text-gray-900 dark:text-gray-300]");
            for (Element element: elements ) {
                Monster monsters = new Monster();
                String m_name = element.select("a").text();
                String name_href = element.select("a").attr("href");
                monsters.setmName(m_name);
                //进入怪物详情页面 并获取怪异素材
                System.out.println("进入"+m_name);
                String affMaterialsData = getAffMaterialsData(name_href, httpClient);
                monsters.setAffMaterials(affMaterialsData);
                arrayList.toString();
                arrayList.add(monsters);
                EntityUtils.consume(response.getEntity());
            }
        }else{
            System.out.println(statusCode);
            EntityUtils.consume(response.getEntity());
        }
        return arrayList;
    }
    /**
     *进入怪物详细页面获取怪物怪异话素材素材
     */
    public static String getAffMaterialsData(String url, HttpClient httpClient) throws IOException {
        //设置request请求
        String UserAgent ="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.160 Safari/537.22";
        String Host="mhrise.kiranico.com";
        String Accept="text/html";
        String AcceptCharset="utf-8";
        String AcceptEncoding="gzip";
        String AcceptLanguage="en-US,en";
        HttpGet get = new HttpGet(url);
        get.addHeader("User-Agent",UserAgent);
        get.addHeader("Host",Host);
        get.addHeader("Accept",Accept);
        get.addHeader("Accept-Charset",AcceptCharset);
        get.addHeader("Accept-Encoding",AcceptEncoding);
        get.addHeader("Accept-Language",AcceptLanguage);
        get.addHeader("Cookie","ll=\"108289\"; _vwo_uuid_v2=D4F01AED60C97F5F01DD4CED2B7F13EB2|449bdc1dbe07071df6781ef72ae772ba; bid=eTCEBbouSjo; __yadk_uid=qN2yoaZjl7lguoxeBISjhppeA9Pp1TrU; __gads=ID=3078282c4d5707dc-22bd36330ed90050:T=1672046832:RT=1672046832:S=ALNI_MaAkLn8bJDnE1QkXbBK1mYuBGJmfw; __utmc=30149280; __utmz=30149280.1672102102.4.2.utmcsr=baidu|utmccn=(organic)|utmcmd=organic; __utmc=223695111; __utmz=223695111.1672102102.4.2.utmcsr=baidu|utmccn=(organic)|utmcmd=organic; __gpi=UID=00000b97b9edba4d:T=1672046832:RT=1672102105:S=ALNI_MZ9SDywDFTrqVqRBJr_d0Giw3pNWw; _pk_ref.100001.4cf6=[\"\",\"\",1672109873,\"https://www.baidu.com/link?url=c-LiC_KH1-0CKDq9cX_VIdHJQlvPe6L3xQpt94I-6wuaq_e38hEh8ZKhCDP4KFF3agfKfDzEKhy6T6RT8IGWw_&wd=&eqid=efc50d7500c7be0f0000000263aa40d5\"]; _pk_ses.100001.4cf6=*; dbcl2=\"243664676:/4X/MrNJOrQ\"; ck=6f4l; push_noty_num=0; push_doumail_num=0; __utma=30149280.109128069.1671977663.1672107256.1672109934.6; __utmt=1; __utmv=30149280.24366; __utmb=30149280.2.10.1672109934; __utma=223695111.466265960.1671977663.1672107256.1672109950.6; __utmb=223695111.0.10.1672109950; _pk_id.100001.4cf6=93b912d9c5c341b5.1672046830.4.1672109950.1672107760.");
        HttpResponse response = new BasicHttpResponse(HttpVersion.HTTP_1_1, HttpStatus.SC_OK,"OK");
        response = httpClient.execute(get);
        //获取并打印 http状态码 观察访问状态
        int statusCode = response.getStatusLine().getStatusCode();
        System.out.println("素材循环："+statusCode);

        Set<String> aff_materials = new HashSet<>();
        if (statusCode==200){
            //获取并解析html
            String html = EntityUtils.toString(response.getEntity());
            Document doc = Jsoup.parse(html);
            //通过div分割
            Elements elements = doc.select("div[class=overflow-x-auto text-gray-700 dark:text-[#C9D1D9] text-sm border-slate-100 dark:border-slate-400/10 my-12]").eq(5);
            //获取怪物素材
            String Material = elements.select("td[class=px-2 py-2 first:sm:pl-6 last:sm:pr-6 break-words]").select("a").text();
            String [] MaterialList = Material.split(" ");
            //剔除非怪异化素材以及重复素材
            for(String s : MaterialList){
                if(s.startsWith("怪异化的")||s.startsWith("破怪的")){
                    aff_materials.add(s);
                }
            }
            EntityUtils.consume(response.getEntity());
        }else{
            System.out.println("素材循环："+statusCode);
            EntityUtils.consume(response.getEntity());
        }
        String s = aff_materials.toString();
        //删除中括号
        s = s.replace("[","");
        s = s.replace("]","");
        return s;
    }

    public static void main(String[] args) throws IOException {
        String url = "https://mhrise.kiranico.com/zh/data/monsters?view=lg";
        HttpClientBuilder httpClientBuilder = HttpClientBuilder.create();
        HttpClient httpClient = httpClientBuilder.build();
        //获取怪物数组存入数据库
        List<Monster> data = getData.getMonsterData(url, httpClient);
        int i = Jdbc.SaveData(data);
        //查看保存状态
        System.out.println(i);
    }

}
