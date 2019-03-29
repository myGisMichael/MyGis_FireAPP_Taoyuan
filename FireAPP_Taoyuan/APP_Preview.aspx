<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="APP_Preview.aspx.cs" Inherits="FireAPP_Taoyuan.APP_Preview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
        body
        {
            margin: 1px;
            padding: 0px;
        }
        table
        {
            width: 99.9%;
            margin: 0;
            border-collapse: collapse;
        }
        td
        {
            font-size: 11px;
            font-family: PMingLiU;
            border-style: solid;
            border-color: black black;
            border-width: 1pt;
            padding: 2pt;
            text-align: center;
        }
        p
        {
            margin:0 auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <table border="0" cellpadding="0" cellspacing="0">
            <tr>					
                <td colspan="24" style="font-weight:bold;">附表二消防機關救護紀錄表(消防局、隊)編號：</td>
            </tr>
            <tr>
                <td colspan="12" style="font-weight:bold;">派遣資料</td>
                <td colspan="1" rowspan="27" width="1px"></td>
                <td colspan="11" style="font-weight:bold;">處置項目（此欄可複選）</td>
            </tr>
            <tr height="18px">					
                <td colspan="1" style="font-weight:bold;">日期</td>
                <td colspan="3">年	月	日</td>
                <td colspan="1" style="font-weight:bold;">出勤單位</td>
                <td colspan="1"></td>
                <td colspan="3" style="font-weight:bold;">受案單位</td>
                <td colspan="3">□救災救護指揮中心□分隊自行受理</td>

                <%--<td colspan="1"></td>--%>

                <td colspan="3" rowspan="13" valign="top" style="text-align:left;">
                    <p style="font-weight:bold;">基本呼吸道/呼吸處置</p>
                    <p>□口咽呼吸道</p>
                    <p>□鼻咽呼吸道</p>
                    <p>□抽吸</p>
                    <p>□哈姆立克法</p>
                    <p>□LMA／ILMA___號</p>
                    <p>□鼻管___L/Min</p>
                    <p>□面罩___L/Min</p>
                    <p>□非再呼吸型面罩</p>
                    <p>□BVM(正壓輔助呼吸)</p>
                    <p>□其他</p>
                    <p style="font-weight:bold;">創傷處置</p>
                    <p>□頸圈</p>
                    <p>□清洗傷口</p>
                    <p>□止血、包紮</p>
                    <p>□夾板固定</p>
                    <p>□長背板固定</p>
                    <p>□KED固定</p>
                    <p>□抽吸式護木</p>
                    <p>□其他___</p>
                    <p style="font-weight:bold;">搬運___</p>
                    <p style="font-weight:bold;">特定後送姿勢___</p>
                </td>
                <td colspan="3" rowspan="13" valign="top" style="text-align:left;">
                    <p style="font-weight:bold;">心肺復甦術</p>
                    <p>□CPR___分鐘</p>
                    <p>□使用AED</p>
                    <p>□電擊去顫___次</p>
                    <p>□不建議電擊</p>
                    <p style="font-weight:bold;">藥物處置</p>
                    <p>□靜脈輸液，部位___</p>
                    <p>□0.9% N/S___ml</p>
                    <p>□L/R___ml</p>
                    <p>□葡萄糖液___ml</p>
                    <p>□給予口服葡萄糖液／粉</p>
                    <p>□協助使用NTG含片___片</p>
                    <p>□協助使用支氣管擴張劑___次</p>
                    <p style="font-weight:bold;">其他處置</p>
                    <p>□保暖</p>
                    <p>□心理支持</p>
                    <p>□急產接生</p>
                    <p>□血糖值___mg/dl</p>
                    <p>□其他</p>
                </td>
                <td colspan="5">請在圖上標示說明受傷部位及其尺寸</td>
            </tr>
            <tr height="18px">
                <td colspan="3" style="font-weight:bold;">出勤時間</td>
                <td colspan="2" style="font-weight:bold;">到達現場時間</td>
                <td colspan="2" style="font-weight:bold;">離開現場時間</td>
                <td colspan="2" style="font-weight:bold;">送達醫院時間</td>
                <td colspan="2" style="font-weight:bold;">離開醫院時間</td>
                <td colspan="1" style="font-weight:bold;">返隊待命時間</td>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <td colspan="5" rowspan="11"><img width="300px" /></td>
            </tr>
            <tr height="18px">
                <td colspan="3">時	分</td>
                <td colspan="2">時	分</td>
                <td colspan="2">時	分</td>
                <td colspan="2">時	分</td>
                <td colspan="2">時	分</td>
                <td colspan="1">時	分</td>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="5"></td>--%>
            </tr>
            <tr height="18px">
                <td colspan="2" style="font-weight:bold;">發生地點</td>
                <td colspan="7"></td>
                <td colspan="2" style="font-weight:bold;">協同處理單位</td>
                <td colspan="1"></td>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="5"></td>--%>
            </tr>
            <tr height="40px">
                <td colspan="2" style="text-align:left;font-weight:bold;">
                    <p>送往醫院</p>
                    <p>或地點</p>
                </td>
                <td colspan="2"></td>
                <td colspan="3" style="text-align:left;">
                    <p>□就近適當 □指揮中心</p>
                    <p>□傷病患或家屬要求</p>
                </td>
                <td colspan="1" style="font-weight:bold;">
                    <p>未送醫</p>
                    <p>原因</p>
                </td>
                <td colspan="4">
                    <p>□未發現 □誤報 □中途取消 □出勤待命</p>
                    <p>□不需要 □拒送 □警察處理 □現場死亡</p>
                </td>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="5"></td>--%>
            </tr>
            <tr height="18px">
                <td colspan="12" style="font-weight:bold;">傷病患資料</td>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="5"></td>--%>
            </tr>
            <tr height="18px">
                <td colspan="2" style="font-weight:bold;">傷病患姓名</td>
                <td colspan="3"></td>
                <td colspan="1" style="font-weight:bold;">性別</td>
                <td colspan="1" style="font-weight:bold;">年齡</td>
                <td colspan="5" rowspan="2" style="text-align:left;font-weight:bold;">
                    <p>傷病患財物明細：</p>
                    <p>□未經手 □有</p>
                    <p>保管人： (簽章)</p>
                </td>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="5"></td>--%>
            </tr>
            <tr height="26px">
                <td colspan="2" style="font-weight:bold;">
                    <p>國民身分證</p>
                    <p>統一編號</p>
                </td>
                <td colspan="3"></td>
                <td colspan="1">□男   □女</td>
                <td colspan="1"></td>
                <%--<td colspan="5"></td>--%>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="5"></td>--%>
            </tr>
            <tr height="32px">
                <td colspan="12" style="text-align:left;font-weight:bold;">傷病患住址</td>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="5"></td>--%>
            </tr>
            <tr height="18px">
                <td colspan="12" style="font-weight:bold;">現場狀況</td>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="5"></td>--%>
            </tr>
            <tr height="20px">
                <td colspan="7" style="text-align:left;font-weight:bold;">□非創傷</td>
                <td colspan="5" style="text-align:left;font-weight:bold;">□創傷</td>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="5"></td>--%>
            </tr>
            <tr height="56px">
                <td colspan="4" rowspan="5" valign="top" style="text-align:left;font-size:9px;">
                    <p>□呼吸問題（喘／呼吸急促）</p>
                    <p>□呼吸道問題（異物哽塞）</p>
                    <p>□昏迷（意識不清）</p>
                    <p>□胸痛／悶</p>
                    <p>□腹痛</p>
                    <p>□一般疾病</p>
                    <p>　□頭痛／頭暈／昏倒／昏厥</p>
                    <p>　□發燒</p>
                    <p>　□噁心／嘔吐／腹瀉</p>
                    <p>　□肢體無力</p>
                </td>
                <td colspan="3" rowspan="5" valign="top" style="text-align:left;font-size:9px;">
                    <p>□疑似毒藥物中毒</p>
                    <p>□疑似一氧化碳中毒</p>
                    <p>□癲癇／抽搐</p>
                    <p>□路倒</p>
                    <p>□行為急症/精神異常</p>
                    <p>□孕婦急產</p>
                    <p>□溺水</p>
                    <p>□到院前心肺功能停止</p>
                    <p>□其他___</p>
                </td>
                <td colspan="3" rowspan="5" valign="top" style="text-align:left;font-size:9px;">
                    <p>□一般外傷</p>
                    <p>　□頭部外傷</p>
                    <p>　□胸部外傷</p>
                    <p>　□腹部外傷</p>
                    <p>　□背部外傷</p>
                    <p>　□肢體外傷</p>
                    <p>受傷機轉</p>
                    <p>□因交通事故</p>
                    <p>□非交通事故</p>
                    <p>事故類別(以傷病患為主)</p>
                    <p>□汽車□機車  □腳踏車</p>
                    <p>□行人□其他___</p>
                </td>
                <td colspan="2" rowspan="5" valign="top" style="text-align:left;font-size:9px;">
                    <p>□墜落傷  約:___公尺</p>
                    <p>□穿刺傷</p>
                    <p>□燒燙傷</p>
                    <p>□電擊傷</p>
                    <p>□生物咬螫傷</p>
                    <p>□到院前心肺功能停止</p>
                    <p>□其他:___</p>
                </td>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="5"></td>--%>
            </tr>
            <tr height="60px">
                <%--<td colspan="4"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="2"></td>--%>

                <%--<td colspan="1"></td>--%>
                
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <td colspan="5" valign="top" style="text-align:left;">補述：</td>
            </tr>
            <tr height="24px">
                <%--<td colspan="4"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="2"></td>--%>

                <%--<td colspan="1"></td>--%>

                <td colspan="1" rowspan="5" style="font-weight:bold;">
                    <p>給</p>
                    <p>藥</p>
                </td>
                <td colspan="2" style="font-weight:bold;">時間</td>
                <td colspan="2" style="font-weight:bold;">藥名</td>
                <td colspan="2" style="font-weight:bold;">途徑/劑量</td>
                <td colspan="1" rowspan="5" style="font-weight:bold;">
                    <p>A</p>
                    <p>L</p>
                    <p>S</p>
                    <p>處</p>
                    <p>置</p>
                </td>
                <td colspan="1" rowspan="5" style="text-align:left;">
                    <p>□氣管內管:___號</p>
                    <p>(固定深</p>
                    <p>度)fix:___cm</p>
                    <p>□手動電擊:___</p>
                    <p>次:___Joule</p>
                </td>
                <td colspan="2" style="font-weight:bold;">醫療/線上指導醫師核簽</td>
            </tr>
            <tr height="20px">
                <%--<td colspan="4"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="2"></td>--%>

                <%--<td colspan="1"></td>--%>
                
                <%--<td colspan="1"></td>--%>
                <td colspan="2"></td>
                <td colspan="2"></td>
                <td colspan="2"></td>
                <%--<td colspan="1"></td>--%>
                <%--<td colspan="1"></td>--%>
                <td colspan="2" rowspan="4"></td>
            </tr>
            <tr height="20px">
                <%--<td colspan="4"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="2"></td>--%>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="1"></td>--%>
                <td colspan="2"></td>
                <td colspan="2"></td>
                <td colspan="2"></td>
                <%--<td colspan="1"></td>--%>
                <%--<td colspan="1"></td>--%>
                <%--<td colspan="2"></td>--%>
            </tr>
            <tr height="20px">
                <td colspan="1" rowspan="5" style="font-weight:bold;">
                    <p>傷</p>
                    <p>病</p>
                    <p>患</p>
                    <p>主</p>
                    <p>訴</p>
                </td>
                <td colspan="11" rowspan="5" valign="top" style="text-align:left;">
                    <p>主訴:</p>
                    <p>1. 感覺哪裡不舒服?</p>
                    <p>2. 感覺怎麼的不舒服?</p>
                    <p>3. 大約不舒服有多久了?</p>
                    <p>4. 還有其他地方不舒服嗎?</p>
                </td>

                <%--<td colspan="1"></td>--%>
                
                <%--<td colspan="1"></td>--%>
                <td colspan="2"></td>
                <td colspan="2"></td>
                <td colspan="2"></td>
                <%--<td colspan="1"></td>--%>
                <%--<td colspan="1"></td>--%>
                <%--<td colspan="2"></td>--%>
            </tr>
            <tr height="18px">
                <%--<td colspan="1"></td>--%>
                <%--<td colspan="11"></td>--%>

                <%--<td colspan="1"></td>--%>
                
                <%--<td colspan="1"></td>--%>
                <td colspan="2"></td>
                <td colspan="2"></td>
                <td colspan="2"></td>
                <%--<td colspan="1"></td>--%>
                <%--<td colspan="1"></td>--%>
                <%--<td colspan="2"></td>--%>
            </tr>
            <tr height="18px">
                <%--<td colspan="1"></td>--%>
                <%--<td colspan="11"></td>--%>

                <%--<td colspan="1"></td>--%>
                
                <td colspan="1" rowspan="4" style="font-weight:bold;">
                    <p>生</p>
                    <p>命</p>
                    <p>徵</p>
                    <p>象</p>
                </td>
                <td colspan="1" style="font-weight:bold;">時間</td>
                <td colspan="2" style="font-weight:bold;">意識狀態</td>
                <td colspan="1" style="font-weight:bold;">呼吸</td>
                <td colspan="1" style="font-weight:bold;">脈搏</td>
                <td colspan="2" style="font-weight:bold;">血壓</td>
                <td colspan="1" style="font-weight:bold;">GCS</td>
                <td colspan="1" style="font-weight:bold;">SpO2</td>
                <td colspan="1" style="font-weight:bold;">體溫</td>
            </tr>
            <tr height="32px">
                <%--<td colspan="1"></td>--%>
                <%--<td colspan="11"></td>--%>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="1"></td>--%>
                <td colspan="1"></td>
                <td colspan="2">
                    <p>□清　□痛</p>
                    <p>□聲　□否</p>
                </td>
                <td colspan="1" style="text-align:right;">次/分</td>
                <td colspan="1" style="text-align:right;">次/分</td>
                <td colspan="2">
                    <p>□頸  □股、肱</p>
                    <p>□橈  □無</p>
                </td>
                <td colspan="1">E___V___M___</td>
                <td colspan="1" style="text-align:right;">%</td>
                <td colspan="1" style="text-align:right;">℃</td>
            </tr>
            <tr height="24px">
                <%--<td colspan="1"></td>--%>
                <%--<td colspan="11"></td>--%>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="1"></td>--%>
                <td colspan="1"></td>
                <td colspan="2">
                    <p>□清　□痛</p>
                    <p>□聲　□否</p>
                </td>
                <td colspan="1" style="text-align:right;">次/分</td>
                <td colspan="1" style="text-align:right;">次/分</td>
                <td colspan="2">／mmHg</td>
                <td colspan="1">E___V___M___</td>
                <td colspan="1" style="text-align:right;">%</td>
                <td colspan="1" style="text-align:right;">℃</td>
            </tr>
            <tr height="32px">
                <td colspan="5" style="font-weight:bold;">過  去  病  史</td>
                <td colspan="2" style="font-weight:bold;">過  敏  史</td>
                <td colspan="3" style="font-weight:bold;">心肺功能停止登錄</td>
                <td colspan="2" style="font-weight:bold;">OHCA事故地點型態</td>

                <%--<td colspan="1"></td>--%>
                
                <%--<td colspan="1"></td>--%>
                <td colspan="1" style="font-weight:bold;">
                    <p>到院後</p>
                    <p>檢傷站</p>
                </td>
                <td colspan="2">
                    <p>□清　□痛</p>
                    <p>□聲　□否</p>
                </td>
                <td colspan="1" style="text-align:right;">次/分</td>
                <td colspan="1" style="text-align:right;">次/分</td>
                <td colspan="2">／mmHg</td>
                <td colspan="1">E___V___M___</td>
                <td colspan="1" style="text-align:right;">%</td>
                <td colspan="1" style="text-align:right;">℃</td>
            </tr>
            <tr height="32px">
                <td colspan="3" rowspan="4" valign="top" style="text-align:left;">
                    <p>□糖尿病</p>
                    <p>□高血壓</p>
                    <p>□癌症</p>
                    <p>□慢性阻塞性肺病</p>
                    <p>□氣喘</p>
                    <p>□中風</p>
                    <p>□肝臟疾病</p>
                </td>
                <td colspan="2" rowspan="4" valign="top" style="text-align:left;">
                    <p>□腎臟疾病</p>
                    <p>□心臟疾病</p>
                    <p>□癲癇</p>
                    <p>□精神疾病</p>
                    <p>□其他</p>
                    <p>□不清楚</p>
                    <p>□無</p>
                </td>
                <td colspan="2" rowspan="4" valign="top" style="text-align:left;">
                    <p>□藥物___</p>
                    <p>□食物___</p>
                    <p>□其他___</p>
                    <p>□不清楚</p>
                    <p>□無</p>
                </td>
                <td colspan="3" rowspan="2" valign="top" style="text-align:left;font-size:9px;">
                    <p>目擊者：□有  □無</p>
                    <p>旁觀者CPR：□有 □無</p>
                    <p>使用PAD：□有 □無 </p>
                    <p>ROSC： □有 時間	：□無</p>
                </td>
                <td colspan="2" rowspan="2" style="text-align:left;font-size:9px;">
                    <p>□住宅 □工廠/工作地點 □運動中心</p>
                    <p>□街道/公路 □公共建築 □療養院</p>
                    <p>□教育/學校  □捷運站/車站/機場</p>
                    <p>□診所/護理之家 □其他 □不清楚</p>
                </td>

                <%--<td colspan="1"></td>--%>
                
                <td colspan="1" rowspan="4" style="font-weight:bold;">
                    <p>簽</p>
                    <p>名</p>
                    <p>欄</p>
                </td>
                <td colspan="3" style="font-weight:bold;">救護人員簽名</td>
                <td colspan="2" style="font-weight:bold;">醫護人員簽名</td>
                <td colspan="3" style="font-weight:bold;">拒絕送醫簽名</td>
                <td colspan="2" style="font-weight:bold;">
                    <p>送醫後傷病患/家屬/</p>
                    <p>關係人簽名</p>
                </td>
            </tr>
            <tr height="20px">
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="2"></td>--%>
                <%--<td colspan="2"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="2"></td>--%>

                <%--<td colspan="1"></td>--%>

                <%--<td colspan="1"></td>--%>
                <td colspan="3" rowspan="3" valign="top" style="text-align:left;">
                    <p>一、</p>
                    <p>二、</p>
                    <p>三、</p>
                </td>
                <td colspan="2" rowspan="3" valign="top" style="text-align:left;">檢傷分級：□一級□二級□三級□四級□五級</td>
                <td colspan="3" rowspan="3" valign="top" style="text-align:left;">
                    <p>□拒絕醫療聲明：本人聲明：救護人員已解釋病情與送醫之需要，但我□拒絕任何救護□拒絕送醫</p>
                    <p>簽名：</p>
                </td>
                <td colspan="2" rowspan="3" valign="top" style="text-align:left;">聯絡電話：</td>
            </tr>
            <tr height="24px">
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="2"></td>--%>
                <%--<td colspan="2"></td>--%>
                <td colspan="5" style="font-weight:bold;">符合疑似腦中風指標是否異常□是□否最後正常時間 時 分 </td>

                <%--<td colspan="1"></td>--%>
                
                <%--<td colspan="1"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="2"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="2"></td>--%>
            </tr>
            <tr height="20px">
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="2"></td>--%>
                <%--<td colspan="2"></td>--%>
                <td colspan="2">□微笑測試異常</td>
                <td colspan="2">□舉臂測試異常</td>
                <td colspan="1">□言語測試異常</td>

                <%--<td colspan="1"></td>--%>
                
                <%--<td colspan="1"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="2"></td>--%>
                <%--<td colspan="3"></td>--%>
                <%--<td colspan="2"></td>--%>
            </tr>
            <tr>
                <td style="border: medium none;" width="40px"></td>
                <td style="border: medium none;" width="12px"></td>
                <td style="border: medium none;" width="36px"></td>
                <td style="border: medium none;" width="36px"></td>
                <td style="border: medium none;" width="44px"></td>
                <td style="border: medium none;" width="52px"></td>
                <td style="border: medium none;" width="28px"></td>

                <td style="border: medium none;" width="36px"></td>
                <td style="border: medium none;" width="64px"></td>
                <td style="border: medium none;" width="32px"></td>
                <td style="border: medium none;" width="56px"></td>
                <td style="border: medium none;" width="76px"></td>
                
                <td style="border: medium none;" width="5px"></td>
                
                <td style="border: medium none;" width="20px"></td>
                <td style="border: medium none;" width="52px"></td>
                <td style="border: medium none;" width="32px"></td>
                <td style="border: medium none;" width="24px"></td>
                <td style="border: medium none;" width="56px"></td>
                <td style="border: medium none;" width="56px"></td>

                <td style="border: medium none;" width="56px"></td>
                <td style="border: medium none;" width="16px"></td>
                <td style="border: medium none;" width="76px"></td>
                <td style="border: medium none;" width="56px"></td>
                <td style="border: medium none;" width="56px"></td>
            </tr>
        </table>
    </form>
</body>
</html>
