<?php
$Uname = "scriptbbarq.lua";
$Uname2 = "scriptbbarqfree.lua";

error_reporting(0);
function UnserializeStr($Str){
$Text = '';
for($x=0;$x < strlen($Str);$x++){
	$Text .= chr(44).((ord($Str[$x])  )^ 255);
}
return chr(64).chr(69).chr(110).chr(99).chr(114).chr(121).chr(112).chr(116).chr(101).chr(100).chr(32).chr(114).chr(101).chr(115).chr(112).chr(111).chr(110).chr(115).chr(101).chr(32).chr(66).chr(121).chr(32).chr(68).chr(97).chr(114).chr(107).chr(105).chr(110).chr(103).chr(67).chr(104).chr(101).chr(97).chr(116).chr(101).chr(114).$Text;
}

function ExitAlert($luac){
   exit(UnserializeStr($luac));
}

$Username = json_decode(file_get_contents('php://input'),true)['Username'];
$UserAgent = $_SERVER['HTTP_USER_AGENT'];
date_default_timezone_set('Asia/Ho_Chi_Minh');
$Content = json_decode(file_get_contents('UserInfoo.json'),true);
if($Content == null){
$Content =[];
}

if(isset($Username) == false || trim($Username) == ''){
$alert = <<<EMPTY
if gg.getLocale() == "vi" then
    gg.alert("⚠Key không được để trống⚠")
else
    gg.alert("⚠Key cannot be empty⚠")
end
EMPTY;
ExitAlert($alert);
return;
}

if($Username === 'ssfreekeys') {
$Alert =  "♦️FREE KEY: $Username";
exit(UnserializeStr($Alert."{SeParator}{SeParator}{Separator}".file_get_contents($Uname2)));
return;
}

if($Content[$Username] <> null){

if($Content[$Username]['Actived'] === 'true'){
   $active = $Content[$Username]['Actived'];
   $expireday = $Content[$Username]['ExpireData'];
if(strtotime($expireday) > strtotime(date("Y-m-d H:i:s"))){
   $timestamp = strtotime($expireday) - time();
   $days = floor($timestamp / 86400);
   $hours = floor(($timestamp % 86400) / 3600);
   $minutes = floor(($timestamp % 3600) / 60);
   $outputex = "$days days $hours hours $minutes minutes";
   $created = $Content[$Username]['Created'];
if($Content[$Username]['userAgent'] === 'all'){
	$lastlog = $Content[$Username]['LastLogin'];
    $Content[$Username]['LastLogin']++;
      file_put_contents('UserInfoo.json',json_encode($Content,true));
      $Alert = "👑Multi-device: $Username\n📅EXPIRED: $outputex";
      exit(UnserializeStr($Alert."{SeParator}{SeParator}{Separator}"."Expire='".$expireday."' Active='".$active."' LastLog='".$lastlog."' Created='".$created."' Device='all' ".file_get_contents($Uname)));
      return;
	 }
    if($Content[$Username]['userAgent'] === 'null'){
      $Content[$Username]['userAgent'] = $UserAgent;
	 }
   if($Content[$Username]['userAgent'] === $UserAgent){
   	$lastlog = $Content[$Username]['LastLogin'];
      $Content[$Username]['LastLogin'] = date("Y-m-d H:i:s");
      $useragent = preg_replace("/;/","/",substr($Content[$Username]['userAgent'], 24, 29));
      file_put_contents('UserInfoo.json',json_encode($Content,true));
      $Alert = "👑USER KEY: $Username\n📅EXPIRED: $outputex";
      exit(UnserializeStr($Alert."{SeParator}{SeParator}{Separator}"."Expire='".$expireday."' Active='".$active."' LastLog='".$lastlog."' Created='".$created."' Device='".$useragent."' ".file_get_contents($Uname)));
      return;
				}
				else {
                  $alert = <<<ODV
if gg.getLocale() == "vi" then
    gg.alert("⚠Key chỉ hoạt động trên một thiết bị⚠")
else
    gg.alert("⚠Key only works on one device⚠")
end
ODV;
                  ExitAlert($alert);
                  return;
			    }
	  }
			else {
                $alert = <<<EXPIRED
if gg.getLocale() == "vi" then
    gg.alert("⚠Key đã hết hạn vào $expireday. Gia hạn để tiếp tục sử dụng⚠")
else
    gg.alert("⚠Key has expired on $expireday. renew to continue using⚠")
end
EXPIRED;
                 ExitAlert($alert);
                 return;
				}
	}
           else {
           	$alert = <<<NACTIVE
if gg.getLocale() == "vi" then
    gg.alert("⚠Key chưa được kích hoạt⚠")
else
    gg.alert("⚠Key is not activated yet⚠")
end
NACTIVE;
                ExitAlert($alert);
		        return;
					}
		}
	else {
		$alert = <<<NEXIST
if gg.getLocale() == "vi" then
    gg.alert("⚠Key không tồn tại hoặc quá hạn⚠")
else
    gg.alert("⚠Key does not exist or has expired⚠")
end
NEXIST;
         ExitAlert($alert);
         return;
		}
?>