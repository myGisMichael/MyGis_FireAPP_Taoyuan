<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preview.aspx.cs" Inherits="FireAPP_Taoyuan.Preview" %>

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
                <td style="font-weight:bold;">臺  北  市  政  府  消  防  局  救  護  紀  錄  表  編號：</td>
            </tr>
        </table>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td rowspan="5" style="font-weight:bold;">
                    <p>派</p>
                    <p>遣</p>
                    <p>資</p>
                    <p>料</p>
                </td>
                <td>日期</td>
                <td colspan="3"></td>
                <td colspan="2">出勤單位</td>
                <td colspan="3"></td>
                <td colspan="2">受案單位</td>
                <td colspan="3">□救災救護指揮中心 □分隊自行受理</td>
            </tr>
            <tr>
                <td colspan="3">出勤時間</td>
                <td colspan="2">到達現場時間</td>
                <td colspan="2">離開現場時間</td>
                <td colspan="4">送達醫院時間</td>
                <td colspan="2">離開醫院時間</td>
                <td style="font-weight:bold;">返隊待命時間</td>
            </tr>
            <tr>
                <td colspan="3"></td>
                <td colspan="2"></td>
                <td colspan="2"></td>
                <td colspan="4"></td>
                <td colspan="2"></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="2">發生地點</td>
                <td colspan="8"></td>
                <td colspan="2">協同處理單位</td>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:left;">
                    <p>送往醫院</p>
                    <p>或地點</p>
                </td>
                <td colspan="3"></td>
                <td colspan="3" style="text-align:left;">
                    <p>□就近適當 □指揮中心</p>
                    <p>□傷病患或家屬要求</p>
                </td>
                <td colspan="2">
                    <p>未送醫</p>
                    <p>原因</p>
                </td>
                <td colspan="4">
                    <p>□未發現 □誤報 □中途取消 □出勤待命</p>
                    <p>□不需要 □拒送 □警察處理 □現場死亡</p>
                </td>
            </tr>
            <tr>
                <td width="2.53807106598985%" style="border: medium none;padding: 0px;"></td>
                <td width="5.0761421319797%" style="border: medium none;padding: 0px;"></td>
                <td width="4.56852791878173%" style="border: medium none;padding: 0px;"></td>
                <td width="6.5989847715736%" style="border: medium none;padding: 0px;"></td>
                <td width="11.6751269035533%" style="border: medium none;padding: 0px;"></td>
                <td width="4.56852791878173%" style="border: medium none;padding: 0px;"></td>
                <td width="3.55329949238579%" style="border: medium none;padding: 0px;"></td>
                <td width="12.69035532994924%" style="border: medium none;padding: 0px;"></td>
                <td width="4.56852791878173%" style="border: medium none;padding: 0px;"></td>
                <td width="4.06091370558376%" style="border: medium none;padding: 0px;"></td>
                <td width="5.58375634517766%" style="border: medium none;padding: 0px;"></td>
                <td width="2.28426395939086%" style="border: medium none;padding: 0px;"></td>
                <td width="9.13705583756345%" style="border: medium none;padding: 0px;"></td>
                <td width="6.85279187817259%" style="border: medium none;padding: 0px;"></td>
                <td width="16.24365482233503%" style="border: medium none;padding: 0px;"></td>
            </tr>
        </table>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td rowspan="3" style="font-weight:bold;">
                    <p>傷</p>
                    <p>病</p>
                    <p>患</p>
                    <p>資</p>
                    <p>料</p>
                </td>
                <td>傷病患姓名</td>
                <td></td>
                <td>性別</td>
                <td>□男 □女</td>
                <td rowspan="2" style="text-align:left;">
                    <p>傷病患財物明細：</p>
                    <p>□未經手 □有</p>
                    <p>保管人： (簽章)</p>
                </td>
            </tr>
            <tr>
                <td>身分證字號</td>
                <td></td>
                <td>年齡</td>
                <td></td>
            </tr>
            <tr>
                <td>傷病患地址</td>
                <td colspan="4"></td>
            </tr>
            <tr>
                <td width="2.53807106598985%" style="border: medium none;padding: 0px;"></td>
                <td width="9.64467005076142%" style="border: medium none;padding: 0px;"></td>
                <td width="27.66497461928934%" style="border: medium none;padding: 0px;"></td>
                <td width="6.09137055837563%" style="border: medium none;padding: 0px;"></td>
                <td width="10.15228426395939%" style="border: medium none;padding: 0px;"></td>
                <td width="43.90862944162437%" style="border: medium none;padding: 0px;"></td>
            </tr>
        </table>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td rowspan="6" style="font-weight:bold;">
                    <p>現</p>
                    <p>場</p>
                    <p>狀</p>
                    <p>況</p>
                </td>
                <td colspan="5">□非創傷</td>
                <td colspan="5">□創傷</td>
                <td>心肺功能停止登錄</td>
            </tr>
            <tr>
                <td colspan="2" rowspan="3" valign="top" style="text-align:left;">
                    <p>□呼吸問題(喘/呼吸急促)</p>
                    <p>□呼吸問題(喘/呼吸急促)</p>
                    <p>□昏迷(意識不清)</p>
                    <p>□胸痛/悶</p>
                    <p>□腹痛</p>
                    <p>□一般疾病</p>
                    <p>　□頭痛/頭暈/昏倒/昏厥</p>
                    <p>　□發燒</p>
                    <p>　□噁心/嘔吐/腹瀉</p>
                    <p>　□肢體無力</p>
                </td>
                <td colspan="3" rowspan="3" valign="top" style="text-align:left;">
                    <p>□疑似毒藥物中毒</p>
                    <p>□疑似一氧化碳中毒</p>
                    <p>□癲癇/抽搐</p>
                    <p>□路倒</p>
                    <p>□行為急症/精神異常</p>
                    <p>□孕婦急產</p>
                    <p>□溺水</p>
                    <p>□到院前心肺功能停止</p>
                    <p>□其他___</p>
                </td>
                <td colspan="2" rowspan="2" valign="top" style="text-align:left;">
                    <p>□一般外傷</p>
                    <p>　□頭部外傷</p>
                    <p>　□胸部外傷</p>
                    <p>　□腹部外傷</p>
                    <p>　□背部外傷</p>
                    <p>　□肢體外傷</p>
                    <p>受傷機轉</p>
                    <p>□因交通事故</p>
                    <p>□非交通事故</p>
                </td>
                <td colspan="3" rowspan="2" valign="top" style="text-align:left;">
                    <p>□墜落傷：約___公尺</p>
                    <p>□穿刺傷</p>
                    <p>□燒燙傷</p>
                    <p>□電擊傷</p>
                    <p>□生物咬螫傷</p>
                    <p>□到院前心肺功能停止</p>
                    <p>□其他:___</p>
                </td>
                <td valign="top" style="text-align:left;">
                    <p>目擊者：□有  □無</p>
                    <p>旁觀者CPR：□有 □無</p>
                    <p>使用PAD：□有 □無 </p>
                    <p>ROSC：□有 時間	：□無</p>
                </td>
            </tr>
            <tr>
                <td>OHCA事故地點型態</td>
            </tr>
            <tr>
                <td colspan="3" valign="top" style="text-align:left;">
                    <p>事故類別(以傷病患為主)</p>
                    <p>□汽車 □機車 □腳踏車</p>
                    <p>□行人 □其他___</p>
                </td>
                <td colspan="3" valign="top" style="text-align:left;">
                    <p>□住宅 □工廠/工作地點 □運動中心</p>
                    <p>□街道/公路 □公共建築 □療養院</p>
                    <p>□教育/學校  □捷運站/車站/機場</p>
                    <p>□診所/護理之家 □其他 □不清楚</p>
                </td>
            </tr>
            <tr>
                <td rowspan="2">傷病患主訴</td>
                <td colspan="2" rowspan="2" valign="top" style="text-align:left;">
                    <p>主訴：</p>
                    <p>1.感覺哪裡不舒服?</p>
                    <p>2.感覺怎麼的不舒服?</p>
                    <p>3.大約不舒服有多久了?</p>
                    <p>4.還有其他地方不舒服嗎?</p>
                </td>
                <td rowspan="2">過去病史</td>
                <td colspan="2" rowspan="2" valign="top" style="text-align:left;">
                    <p>□心臟疾病 □中風 □高血壓</p>
                    <p>□肝臟疾病 □癲癇 □糖尿病</p>
                    <p>□腎臟疾病 □氣喘 □不清楚</p>
                    <p>□精神疾病 □癌症 □其他  </p>
                    <p>□慢性阻塞性肺病  □無</p>
                </td>
                <td rowspan="2">過敏史</td>
                <td colspan="2" rowspan="2" valign="top" style="text-align:left;">
                    <p>□藥物___</p>
                    <p>□食物___</p>
                    <p>□其他___</p>
                    <p>□不清楚</p>
                    <p>□無</p>
                </td>
                <td colspan="2" valign="top" style="text-align:left;">
                    <p>符合疑似腦中風指標是否異常</p>
                    <p>□是  □否</p>
                    <p>最後正常時間   時   分</p>
                </td>
            </tr>
            <tr>
                <td colspan="2" valign="top" style="text-align:left;">
                    <p>□微笑測試異常□舉臂測試異常</p>
                    <p>□言語測試異常</p>
                </td>
            </tr>
            <tr>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
            </tr>
        </table>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>	
                <td rowspan="10" style="font-weight:bold;">
                    <p>處</p>
                    <p>置</p>
                    <p>項</p>
                    <p>目</p>
                    <p>︵</p>
                    <p>此</p>
                    <p>欄</p>
                    <p>可</p>
                    <p>複</p>
                    <p>選</p>
                    <p>︶</p>
                </td>
                <td rowspan="10" valign="top" style="text-align:left;">
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
                    <p style="font-weight:bold;">搬運</p>
                    <p style="font-weight:bold;">特定後送姿勢___</p>
                </td>
                <td rowspan="10" valign="top" style="text-align:left;">
                    <p style="font-weight:bold;">心肺復甦術</p>
                    <p>□CPR___分鐘</p>
                    <p>□使用AED</p>
                    <p>　□電擊去顫___次</p>
                    <p>　□不建議電擊</p>
                    <p style="font-weight:bold;">藥物處置</p>
                    <p>□靜脈輸液，部位___</p>
                    <p>　□0.9%N/S___ml</p>
                    <p>　□L/R___ml</p>
                    <p>　□葡萄糖液___ml</p>
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
                <td colspan="3" style="font-weight:bold;text-align:left;">給藥</td>
                <td>請在圖上標示說明受傷部位及其尺寸</td>
            </tr>
            <tr>
                <td>時間</td>
                <td>藥名</td>
                <td>途徑/劑量</td>
                <td rowspan="8"></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3" valign="top" style="text-align:left;">
                    <p style="font-weight:bold;">ALS處置</p>
                    <p>□氣管內管:___號</p>
                    <p>(固定深>度)fix:___cm</p>
                    <p>□手動電擊:___次:___Joule</p>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="font-weight:bold;text-align:left;">□醫療/線上指導醫師核簽</td>
            </tr>
            <tr>
                <td colspan="3"></td>
            </tr>
            <tr>
                <td colspan="4" valign="top" style="text-align:left;">補述：</td>
            </tr>
            <tr>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
            </tr>
        </table>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td rowspan="4" style="font-weight:bold;">
                    <p>生</p>
                    <p>命</p>
                    <p>徵</p>
                    <p>象</p>
                </td>
                <td>時間</td>
                <td>意識狀態</td>
                <td>呼吸</td>
                <td>脈搏</td>
                <td>血壓</td>
                <td>GCS</td>
                <td>SpO2</td>
                <td>體溫</td>
            </tr>
            <tr>
                <td></td>
                <td>□清 □聲 □痛 □否</td>
                <td>次/分</td>
                <td>次/分</td>
                <td>□頸 □股、肱 □橈 □無</td>
                <td>E_V_M_</td>
                <td>％</td>
                <td>℃</td>
            </tr>
            <tr>
                <td></td>
                <td>□清 □聲 □痛 □否</td>
                <td>次/分</td>
                <td>次/分</td>
                <td> / mmHg</td>
                <td>E_V_M_</td>
                <td>％</td>
                <td>℃</td>
            </tr>
            <tr>
                <td></td>
                <td>□清 □聲 □痛 □否</td>
                <td>次/分</td>
                <td>次/分</td>
                <td> / mmHg</td>
                <td>E_V_M_</td>
                <td>％</td>
                <td>℃</td>
            </tr>
            <tr>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
                <td style="border: medium none;padding: 0px;"></td>
            </tr>
        </table>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td rowspan="2" style="font-weight:bold;">
                    <p>簽</p>
                    <p>名</p>
                    <p>欄</p>
                </td>
                <td>救護人員簽名</td>
                <td>醫護人員簽名</td>
                <td>醫護人員簽名</td>
                <td>送醫後傷病患/家屬/關係人簽名</td>
            </tr>
            <tr>
                <td>
                    <p>一、</p>
                    <p>二、</p>
                    <p>三、</p>
                </td>
                <td valign="top" style="text-align:left;">
                    <p>檢傷分級：□一級 □二級</p>
                    <p>□三級 □四級 □五級</p>
                </td>
                <td valign="top" style="text-align:left;">
                    <p>□拒絕醫療聲明：本人聲明：救護人</p>
                    <p>員已解釋傷病情與送醫之需要，但我</p>
                    <p>□拒絕任何救護 □拒絕送醫</p>
                    <p>簽名：</p>
                </td>
                <td valign="top" style="text-align:left;">
                    <p></p>
                    <p>聯絡電話：</p>
                </td>
            </tr>
            <tr>
                <td width="2.53807106598985%" style="border: medium none;padding: 0px;"></td>
                <td width="23.60406091370558%" style="border: medium none;padding: 0px;"></td>
                <td width="20.30456852791878%" style="border: medium none;padding: 0px;"></td>
                <td width="25.88832487309645%" style="border: medium none;padding: 0px;"></td>
                <td width="27.66497461928934%" style="border: medium none;padding: 0px;"></td>
            </tr>
        </table>
    </form>
</body>
</html>
