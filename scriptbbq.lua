function WriteText(Direc,Text,Mode) f = io.open(Direc, Mode) f:write(Text) f:close() end _mr = gg.makeRequest _wf = WriteText _pr = gg.alert _prt = print
local open = io.open  local function read_file(path)  local file = open(path, "rb") if not file then return nil end  local content = file:read ("*a") file:close() return content end

Target = gg.getTargetInfo()
if Target.taskAffinity == "com.bbqstudio.bbqqoversea" then
if Target.x64 == true then
   gg.alert("Please use in 32bit BarBarQ\nBarBarQ [x64] [xxxMB]❌\nBarBarQ [xxxMB]✔️","")
return
end
so=gg.getRangesList('libcocos2dcpp.so')[1].start
py=0x1C33E40
else
gg.setVisible(true)
gg.alert("Please use in BarBarQ","")
end

function loadvalue()
local tt={} tt[1]={} tt[1].address=so+py tt[1].flags=4 gg.loadResults(tt)
end
function setvalue(address,flags,value)
local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) 
end

function search(t,range,refine)
rt={}
gg.setRanges(range) gg.clearResults()
gg.searchNumber(t[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if refine then gg.refineNumber(refine,gg.TYPE_DWORD) end
local r = gg.getResults(99999999)
if #r==0 then goto last end
for it=2,#t do
for i=1,#r do
r[i].address=r[i].address+t[it][2] end
local rr=gg.getValues(r)
tt={}
for i=1,#rr do
if rr[i].value== t[it][1] then ii=#tt+1 tt[ii]={} tt[ii].address=rr[i].address-t[it][2] tt[ii].flags=4
end
end
if #tt==0 then goto last end
r=gg.getValues(tt)
if it==#t then rt=r goto last end end
::last:: return rt end

fixdvf = read_file(gg.EXT_STORAGE.."/fixPowerUp.conf")
if fixdvf == "ChiCoBoneFixRCA" or fixdvf == nil then
fixdv = 4
fixdvs = "RCA"
else
fixdv = -2080896
fixdvs = "RCO"
end

function Buff()
r=search({"200",{"1065353219",-60}}, fixdv)
if #r== 0 then gg.toast("Try Power up (2)...") gg.clearResults() Buff2() return end
tt={}
ii=1
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address-24
tt[ii].flags=4
tt[ii].value=100000000
end
ii=ii+1
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address-28
tt[ii].flags= 4
tt[ii].value=400
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address-40
tt[ii].flags= 4
tt[ii].value=100000000
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address-44
tt[ii].flags= 4
tt[ii].value=100000000
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address-48
tt[ii].flags= 4
tt[ii].value=100000000
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address-52
tt[ii].flags= 4
tt[ii].value=100000000
end
ii=ii+1
gg.setValues(tt)
gg.setVisible(false)
gg.clearResults()
gg.toast("Power up✅")
end
end

function Buff2()
r=search({"16843008",{"257",572}}, fixdv)
if #r== 0 then gg.toast("Đang tăng chỉ số (2)...") gg.clearResults()
Buff3()
else tt={} for i=1,#r do ii=#tt+1 tt[ii]={} tt[ii].address=r[i].address+240 tt[ii].flags=4 tt[ii].value=100000000 end
gg.setValues(tt) gg.setVisible(false) end
if #r>0 then tt={} for i=1,#r do ii=#tt+1 tt[ii]={} tt[ii].address=r[i].address+244 tt[ii].flags= 4 tt[ii].value=100000000 end
gg.setValues(tt) gg.setVisible(false) end
if #r>0 then tt={} for i=1,#r do ii=#tt+1 tt[ii]={} tt[ii].address=r[i].address+248 tt[ii].flags= 4 tt[ii].value=100000000 end
gg.setValues(tt) gg.setVisible(false) end
if #r>0 then tt={} for i=1,#r do ii=#tt+1 tt[ii]={} tt[ii].address=r[i].address+252 tt[ii].flags= 4 tt[ii].value=100000000 end
gg.setValues(tt) gg.setVisible(false) end
if #r>0 then tt={} for i=1,#r do ii=#tt+1 tt[ii]={} tt[ii].address=r[i].address+264 tt[ii].flags= 4 tt[ii].value=400 end
gg.setValues(tt) gg.setVisible(false) end
if #r>0 then tt={} for i=1,#r do ii=#tt+1 tt[ii]={} tt[ii].address=r[i].address+268 tt[ii].flags= 4 tt[ii].value=100000000 end
gg.setValues(tt) gg.setVisible(false) end
if #r>0 then tt={} for i=1,#r do ii=#tt+1 tt[ii]={} tt[ii].address=r[i].address+272 tt[ii].flags= 4 tt[ii].value=100000000 end
gg.setValues(tt) gg.setVisible(false) end
if #r>0 then tt={} for i=1,#r do ii=#tt+1 tt[ii]={} tt[ii].address=r[i].address+276 tt[ii].flags= 4 tt[ii].value=100000000 end
gg.setValues(tt) gg.setVisible(false) gg.clearResults()
gg.toast("Power up(2)✅") end
end

skipbuff = false

function Buff3()
if skipbuff then gg.toast("Power Up (2) is disabled") return end
if main == 1 then
Bbs = "Lưu HP"
Bbc = "Hủy, Bỏ qua"
bufftxt = "Nhập HP hiện tại:"
buffntf = "HP gồm có 3-4 số❗\nHP phải luôn ở mức 100%❗"
buffsk = "Hủy và không hiện lại"
elseif main == 2 then
Bbs = "Save HP"
Bbc = "Cancel, Skip"
bufftxt = "Enter current HP:"
buffntf = "HP consists of 3-4 numbers❗\nHP should always be at 100%❗"
buffsk = "Canceled and not shown again"
end
gg.clearResults()
myhp = read_file(gg.EXT_STORAGE.."/HPisland.conf")
Bb = gg.prompt({bufftxt,Bbs,Bbc,buffsk},{myhp,true},{"number","checkbox","checkbox","checkbox"})
if not Bb then return end
if Bb[4] then skipbuff = true return end
if Bb[3] then gg.toast(Bbc) return end
if Bb[1] == '' or string.find(Bb[1],"%s+") or not string.find(Bb[1],"^[0-9]*$") then
gg.alert(buffntf) Buff2()
return end
if Bb[2] then WriteText(gg.EXT_STORAGE.."/HPisland.conf",Bb[1],"w") end
r=search({Bb[1]..";"..Bb[1],{Bb[1],4}}, fixdv)
   while (gg.isVisible(true)) do
   code1 = math.random(10,99)
   code2 = math.random(10,999)
   gg.searchNumber(code1..";"..code2, 4, false, gg.SIGN_EQUAL, 0, -1, 0)
   gg.sleep(600)
 end
if #r== 0 then gg.alert("Power up Error!\nCode not found") gg.clearResults() return end
tt={}
ii=1
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address+0
tt[ii].flags=4
tt[ii].value=100000000
end
ii=ii+1
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address+4
tt[ii].flags= 4
tt[ii].value=100000000
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address+8
tt[ii].flags= 4
tt[ii].value=100000000
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address+12
tt[ii].flags= 4
tt[ii].value=100000000
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address+24
tt[ii].flags= 4
tt[ii].value=400
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
ii=#tt+1 tt[ii]={}
tt[ii].address=r[i].address+28
tt[ii].flags= 4
tt[ii].value=100000000
end
ii=ii+1
gg.setValues(tt)
gg.setVisible(false)
gg.clearResults()
gg.toast("Power up (3)✅")
end
end

local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' 
function bugsfix(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
    end))
end
local file = assert(io.open(gg.getFile(), 'rb'))
local tf = {}
repeat
   local str = file:read(4*1024)
   for c in (str or ''):gmatch'.' do
      tf[#tf+1] = c:byte()
   end
until not str
file:close()
_lcs = true
_da = false
chlcs = function() if #tf ~= 81328 then if _da == false then _a = _pr(lcs,clcs,rlsc) else _a = _pr(lcs,clcs,rlsc,dlcs) end if _a == 1 then _da = true end if _a == 2 then org = _mr(orgl).content if not org then _pr(err) else pcall(load(org)) _wf(gg.getFile():match("[^/]+$"), org, "w") _lcs = false _pr(rlscd) end end if _a == 3 then _prt(lcs) _lcs = false end end end

function Main()
if main then MainVI() else
gg.clearResults()
gg.clearList()
orgl = bugsfix("aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL25vdGVzY3JpcHRzL25vdGVzY3JpcHRzLmdpdGh1Yi5pby9tYWluL3NjcmlwdGJicS5sdWE=")
 if gg.getLocale() == "vi" then 
main = 1 gg.toast("\nSử dụng Ngôn Ngữ: Tiếng Việt") 
lcs = bugsfix("U0NSSVBUIE7DgFkgQ8OTIFRI4buCIMSQw4MgQuG7iiBDSOG7iE5IIFPhu6xBClZ1aSBsw7JuZyB0w7RuIHRy4buNbmcgYuG6o24gcXV54buBbiBj4bunYSBAQ2jhu4lfQ8OzX0JvbmU=")
dlcs = bugsfix("VOG6r3QgVGjDtG5nIELDoW8=")
clcs = bugsfix("VGnhur9wIFThu6Vj")
rlsc = bugsfix("Q+G6rXAgbmjhuq10IFNjcmlwdA==")
err = bugsfix("VnVpIGzDsm5nIGPhuqVwIHF1eeG7gW4gdHJ1eSBj4bqtcCBpbnRlcm5ldCDEkeG7gyB04bqjaSBs4bqhaSBzY3JpcHQgY2jDrW5oIHRo4bupYyBj4bunYSBAQ2jhu4lfQ8OzX0JvbmU=")
rlscd = bugsfix("xJDDoyBj4bqtcCBuaOG6rXQgbOG6oWkgc2NyaXB0IGNow61uaCB0aOG7qWMgY+G7p2EgQENo4buJX0PDs19Cb25lCkjDo3kga2jhu59pIMSR4buZbmcgbOG6oWkgU2NyaXB0IQ==")
MainVI()
 else
main = 2 gg.toast("\nLanguage use: English")
lcs = bugsfix("VEhJUyBTQ1JJUFQgTUFZIEhBVkUgQkVFTiBFRElUClBsZWFzZSByZXNwZWN0IHRoZSBjb3B5cmlnaHQgb2YgQENoaV9Db19Cb25l")
dlcs = bugsfix("VHVybiBvZmYgTm90aWZpY2F0aW9ucw==")
clcs = bugsfix("Q29udGludWU=")
rlsc = bugsfix("VXBkYXRlIFNjcmlwdA==")
err = bugsfix("UGxlYXNlIGdyYW50IGludGVybmV0IGFjY2VzcyB0byByZWRvd25sb2FkIEBDaGlfQ29fQm9uZSBvZmZpY2lhbCBzY3JpcHQ=")
rlscd = bugsfix("VXBkYXRlZCB0aGUgb2ZmaWNpYWwgc2NyaXB0IG9mIEBDaGlfQ29fQm9uZQpQbGVhc2UgcmVzdGFydCB0aGUgU2NyaXB0IQ==")
MainVI()
 end
end
end

function MainVI()
if _lcs then load(chlcs) end
mdao = 0
tendao = " "
if main == 1 then Lang = 1
toastat = "Đã bật auto vượt đảo VIP"
toastat2 = "Đã bật auto cày đồ VIP"
toastsbd = "Đã kết thúc!\nChọn đồ mà bạn muốn tìm"
toaststop = "Chắc năng tự động đã dừng lại"
tblad = "Lỗi❗\nKhông thể tìm thấy mã❗"
ntfgs = "P.thưởng được lưu🎁"
VI = gg.choice({
"Fix Lỗi Tăng Chỉ Số <Thiết bị "..fixdvs..">",
"Đảo Thám Hiểm (Khó)",
"Đảo Thám Hiểm (Thường)",
"Battle Arena [ Chỉ PVE ]",
"Test Pet S đến SS [ Huấn luyện ]",
"Thức Tỉnh Hero [ Huấn luyện ]",
"Tính Năng Khác",
"Change to English",
"Thông tin Script",
"Thoát"},nil,"▶️ Youtube: Chỉ Có. Bone\n🛠️ Super Script Official\n🇻🇳 Ngôn ngữ: Tiếng Việt\n▬▬▬▬▬▬▬▬▬▬▬")
elseif main == 2 then Lang = 2
toastat = "Automatic Fantasy Land turned on"
toastat2 = "Automatic Plow Hoe turned on"
toastsbd = "Ended\nChoose the reward you find"
toaststop = "Auto function has stopped"
tblad = "Error❗\nCan't find code❗"
ntfgs = "Saved rewards🎁"
VI = gg.choice({
"Fix Power Up Errors <"..fixdvs.." Device>",
"Fantasy Land (Nightmare)",
"Fantasy Land (Normal)",
"Battle Arena [ PVE only ]",
"Test Pet S and SS [ Training ]",
"Hero Awaken [ Training ]",
"Other feature",
"Đổi sang Tiếng Việt",
"Script Information",
"Close"},nil,"▶️ Youtube: Chỉ Có. Bone\n🛠️ Super Script Official\n🇬🇧 Language: English\n▬▬▬▬▬▬▬▬▬▬▬")
end
if VI == 1 then FixDevice() end
if VI == 2 then Cmode = 1 islandf() end
if VI == 3 then islandt() end
if VI == 4 then ARENA() end
if VI == 5 then PETS() end
if VI == 6 then HERO() end
if VI == 7 then OTHER() end
if VI == 8 then
 if Lang == 2 then main = 1 gg.toast("Đã lưu Tiếng Việt")
 elseif Lang == 1 then main = 2 gg.toast("Saved English") end
end
if VI == 9 then Contact() end
if VI == 10 then END() end
if VI == nil then end
end

function FixDevice()
if main == 1 then
   if fixdv == 4 then
      fd = gg.alert("Bạn có muốn chuyển sang thiết bị RCO không?\nChức năng này chỉ áp dụng cho các thiết bị trước đây không thể dùng được Tăng chỉ số!\nTạm gọi là thiết bị RCO","Chuyển","Hủy")
      if fd == 2 then return end
      if fd == 1 then
      WriteText(gg.EXT_STORAGE.."/fixPowerUp.conf","ChiCoBoneFixRCO","w")
      fixdv = -2080896
      fixdvs = "RCO"
      gg.toast("Sửa lỗi code <Thiết bị RCO>")
      end
      if fd == 0 then return end
  else
      WriteText(gg.EXT_STORAGE.."/fixPowerUp.conf","ChiCoBoneFixRCA","w")
      fixdv = 4
      fixdvs = "RCA"
      gg.toast("Sửa lỗi code <Thiết bị RCA> (Mặc định)")
  end
elseif main == 2 then
    if fixdv == 4 then
      fd = gg.alert("Do you want to switch to RCO device?\nThis function only applies to devices that previously could not use the Power Up function!!\nTemporarily called RCO devices","Switch","Cancel")
      if fd == 2 then return end
      if fd == 1 then
      WriteText(gg.EXT_STORAGE.."/fixPowerUp.conf","ChiCoBoneFixRCO","w")
      fixdv = -2080896
      fixdvs = "RCO"
      gg.toast("Fix code errors <RCO Device>")
      end
      if fd == 0 then return end
  else
      WriteText(gg.EXT_STORAGE.."/fixPowerUp.conf","ChiCoBoneFixRCA","w")
      fixdv = 4
      fixdvs = "RCA"
      gg.toast("Fix code errors <RCA Device> (Default)")
  end
end
end

Cmode = 0
function Modeis()
mdao = 0
tendao = " "
if main==1 then
chedo = gg.choice({
" Chế độ tự động⚡",
" Bình thường [ Thủ công ]",
" Tầng Boss",
"Hủy"},Cmode,"Chọn một chế độ hack đảo")
elseif main==2 then
chedo = gg.choice({
" Automatic mode⚡",
" Normal [ Manual ]",
" Boss Floor",
"Cancel"},Cmode,"Choose an island hack mode")
end
if chedo == 1 then Cmode = 1 islandf() end
if chedo == 2 then Cmode = 2 island() end
if chedo == 3 then Cmode = 3 islandb() end
if chedo == 4 then Cmode=0 si=0 sif=0 sib=0 ssb=0 show = true end
if chedo == nil then end
end

ichoice = 0
function island()
si = true
show = false
ggift = true
if main == 1 then
Land = gg.choice({
" T̶ă̶n̶g̶ ̶C̶h̶ỉ̶ ̶S̶ố̶",
" Blue Mushroom Island "..dbml,
" Hala Island "..dhl,
" Polar Day Island "..dpdl,
" Đ̶ặ̶t̶ ̶v̶ề̶ ̶1̶0̶0̶",
" Phần Thưởng🎁",
" Chọn Chế Độ Hack",
"Menu Chính"},ichoice,"--3 Bước để hoàn thành--")
elseif main == 2 then
Land = gg.choice({
" P̶o̶w̶e̶r̶ ̶U̶p̶",
" Blue Mushroom Island "..dbml,
" Hala Island "..dhl,
" Polar Day Island "..dpdl,
" S̶e̶t̶ ̶t̶o̶ ̶1̶0̶0̶",
" Rewards🎁",
" Select Hack Mode",
"Main Menu"},ichoice,"--3 Step to complete--")
end
if Land == 1 then ichoice = 1 Buff() end
if Land == 2 then bml() end
if Land == 3 then hl() end
if Land == 4 then pdl() end
if Land == 5 then ichoice = 5 dbml = "100" dhl= "100" dpdl= "100"
gg.toast("Set all to 100") end
if Land == 6 then ichoice = 6 skiprw = false Lgift() end
if Land == 7 then ichoice = 7 Modeis() end
if Land == 8 then ichoice = 8 si = false show = true Main() end
if Land == nil then end
   while(si==true) do
      if gg.isVisible(true) then
         gg.setVisible(false) island() end
    end
end

function savegift()
giftsave = read_file(gg.EXT_STORAGE.."/giftsave.conf")
 if string.match(giftsave, 'hopnv') then HOPNV() end
 if string.match(giftsave, 'spar') then SPAR() end
 if string.match(giftsave, 'stardust') then STARDUST() end
 if string.match(giftsave, 'safec') then SAFEC() end
 if string.match(giftsave, 'caulua') then CAULUA() end
 if string.match(giftsave, 'bumerang') then BUMERANG() end
 if string.match(giftsave, 'round') then ROUND() end
 if string.match(giftsave, 'horn') then HORN() end
 if string.match(giftsave, 'hear') then HEAR() end
 if string.match(giftsave, 'explore') then EXPLORE() end
 if string.match(giftsave, 'evil') then EVIL() end
 if string.match(giftsave, 'spur') then SPUR() end
 if string.match(giftsave, 'bone') then BONE() end
 if string.match(giftsave, 'ruby') then RUBY() end
 if string.match(giftsave, 'moon') then MOON() end
end

skiprw = read_file(gg.EXT_STORAGE.."/SkipRewards.conf")
function Lgift()
if ggift == false then return end
if skiprw == "true" then
 if read_file(gg.EXT_STORAGE.."/giftsave.conf") == nil then
 skiprw = false
 Lgift()
 else
 gg.toast(ntfgs)
 savegift()
end
return end
if main == 1 then
ntfg = "Đã lưu các lựa chọn p.thưởng!\nĐể thay đổi các mục lưu:\nChọn [Cài đặt Phần Thưởng🎁]>Tích các mục muốn lưu>OK\nĐể hiển thị lại bước này:\nChọn [Cài đặt Phần Thưởng🎁]>Bỏ tích [Lưu lựa chọn]>OK"
ntfgd = "Đã xoá tất các mục đã lưu!\n(Hiển thị bước chọn P. thưởng)"
ntfgt = "Chọn ít nhất một mục để lưu!"
Lg = gg.multiChoice({
" Lưu lựa chọn ",
" Hộp Thức Tỉnh",
" Thêm Spar",
" StarDust",
" Safe Card",
" Cầu Lửa",
" Phi tiêu",
" Mũ Round",
" Mũ Horn",
" Mũ Herding",
" Nhẫn Explore",
" Nhẫn Evil",
" Nhẫn Spur",
" Dây Chuyền Bone",
" Dây Chuyền Ruby",
" Dây Chuyền Moon"},{false,true,true},"--Chọn phần thưởng mà boss rơi ra--")
elseif main == 2 then
ntfg = "Saved reward selections!\nTo change saved items:\nSelect [Reward Settings🎁]>Check the items you want to save>OK\nTo show this step again:\nSelect [Rewards Settings🎁]>Uncheck [Save Selection]>OK"
ntfgd = "Deleted all saved items!\n(Show rewards selection step)"
ntfgt = "Select at least one item to save!"
Lg = gg.multiChoice({
" Save Selection ",
" Awaken Gift",
" Spar Bonus",
" StarDust",
" Safe Card",
" Magic Fireball",
" Boomerang",
" Round Hat",
" Horn Helmet",
" Herding",
" Explore Ring",
" Evil Ring",
" Spur Ring",
" Bone Chain",
" Ruby Pedent",
" Moon Necklace"},{false,true,true},"--Select the rewards that the boss drops--")
end
if Lg == nil then
  if blockg == true then blockg = false return end HOPNV() else
if Lg[1] then
  if blockgs == true then blockgs = false else
  if not Lg[2] and not Lg[3] and not Lg[4] and not Lg[5] and not Lg[6]  and not Lg[7] and not Lg[8] and not Lg[9] and not Lg[10] and not Lg[11] and not Lg[12] and not Lg[13] and not Lg[14] and not Lg[15] and not Lg[16] then 
  gg.alert(ntfgt)
return end
  skiprw="true"
  WriteText(gg.EXT_STORAGE.."/SkipRewards.conf","true","w")
  if Lg[2] == true then WriteText(gg.EXT_STORAGE.."/giftsave.conf","hopnv ","a") 
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "hopnv ", ""),"w")
end
  if Lg[3] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","spar ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "spar ", ""),"w")
end
  if Lg[4] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","stardust ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "stardust ", ""),"w")
end
  if Lg[5] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","safec ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "safec ", ""),"w")
end
  if Lg[6] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","caulua ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "caulua ", ""),"w")
end
  if Lg[7] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","bumerang ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "bumerang ", ""),"w")
end
  if Lg[8] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","round ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "round ", ""),"w")
end
  if Lg[9] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","horn ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "horn ", ""),"w")
end
  if Lg[10] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","hear ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "hear ", ""),"w")
end
  if Lg[11] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","explore ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "explore ", ""),"w")
end
  if Lg[12] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","evil ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "evil ", ""),"w")
end
  if Lg[13] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","spur ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "spur ", ""),"w")
end
  if Lg[14] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","bone ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "bone ", ""),"w")
end
  if Lg[15] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","ruby ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "ruby ", ""),"w")
end
  if Lg[16] then WriteText(gg.EXT_STORAGE.."/giftsave.conf","moon ","a")
  else
  WriteText(gg.EXT_STORAGE.."/giftsave.conf",string.gsub(read_file(gg.EXT_STORAGE.."/giftsave.conf"), "moon", ""),"w")
end
  gg.alert(ntfg)
  end
  else
  if blockgs == true then blockgs = false else
  skiprw=false
  WriteText(gg.EXT_STORAGE.."/SkipRewards.conf","false","w")
  WriteText(gg.EXT_STORAGE.."/giftsave.conf","","w")
  gg.alert(ntfgd)
  end
end
if blockg == true then blockg = false return end
if Lg[2] then HOPNV()end
if Lg[3] then SPAR() end
if Lg[4] then STARDUST() end
if Lg[5] then SAFEC() end
if Lg[6] then CAULUA() end
if Lg[7] then BUMERANG() end
if Lg[8] then ROUND() end
if Lg[9] then HORN() end
if Lg[10] then HEAR() end
if Lg[11] then EXPLORE() end
if Lg[12] then EVIL() end
if Lg[13] then SPUR() end
if Lg[14] then BONE() end
if Lg[15] then RUBY() end
if Lg[16] then MOON() end
end
end

dbml = "100" 
function bml()
if dbml== "100" then
vmd = "129"
tang = "100"
dbml = "200"
bm00()
elseif dbml == "200" then 
vmd = "229"
tang = "200"
dbml = "🎁"
bm00()
elseif dbml == "🎁" then
ichoice = 0
dbml="100"
Lgift()
end
end

function bm00()
if ichoice == 4 then dbml = "100" gg.alert("Locked at Polar Day🔒")
elseif ichoice == 3 then dbml = "100" gg.alert("Locked at Hala🔒") return end
if tang=="100" then Buff() end
setvalue(so+py,4,vmd)
ichoice = 2
gg.toast("Blue Mushroom (Nightmare) "..tang.."✅")
end

dhl = "100" 
function hl()
if dhl == "100" then
vmd = "379"
tang = "100"
dhl = "200"
hl00()
elseif dhl == "200" then 
vmd = "479"
tang = "200"
dhl = "🎁"
hl00()
elseif dhl == "🎁" then
ichoice = 0
dhl="100"
Lgift()
end
end

function hl00()
if ichoice == 4 then dhl = "100" gg.alert("Locked at Polar Day🔒")
elseif ichoice == 2 then dhl = "100" gg.alert("Locked at Blue Mushroom🔒") return end
if tang=="100" then Buff() end
setvalue(so+py,4,vmd)
ichoice = 3
gg.toast("Hala (Nightmare) "..tang.."✅")
end

dpdl  = "100" 
function pdl()
if dpdl == "100" then
vmd = "629"
tang = "100"
dpdl = "200"
pd00()
elseif dpdl == "200" then 
vmd = "729"
tang = "200"
dpdl = "🎁"
pd00()
elseif dpdl == "🎁" then
ichoice = 0
dpdl="100"
Lgift()
end
end

function pd00()
if ichoice == 2 then dpdl = "100" gg.alert("Locked at Blue Mushroom🔒")
elseif ichoice == 3 then dpdl = "100" gg.alert("Locked at Hala🔒") return end
if tang=="100" then Buff() end
setvalue(so+py,4,vmd)
ichoice = 4
gg.toast("Polar Day (Nightmare) "..tang.."✅")
end

function HOPNV()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("90010110;1~20::5", 4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("Awaken Gift✅ ")
gg.setRanges(old)
loadvalue()
end

function SPAR()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("80061;90061;330110;1~2000::200",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("1~2000",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("66000", gg.TYPE_DWORD)
gg.toast("Spar Bonus✅")
gg.setRanges(old)
loadvalue()
end

function CAULUA()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("311010110;1~20::5",4, false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("Fireball✅ ")
gg.setRanges(old)
loadvalue()
end

function BUMERANG()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("312010110;1~20::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("Boomerang✅ ")
gg.setRanges(old)
loadvalue()
end

function ROUND()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("321010110;1~20::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("Round Hat✅ ")
gg.setRanges(old)
loadvalue()
end

function HORN()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("322010110;1~20::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("Horn Helmet✅ ")
gg.setRanges(old)
loadvalue()
end

function HEAR()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("323010110;1~20::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("Hearding Hat✅ ")
gg.setRanges(old)
loadvalue()
end

function EXPLORE()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("343010110;1~20::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("Explore Ring✅ ")
gg.setRanges(old)
loadvalue()
end

function EVIL()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("341010110;1~20::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("Evil Ring✅ ")
gg.setRanges(old)
loadvalue()
end

function SPUR()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("342010110;1~20::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("Spur Ring✅ ")
gg.setRanges(old)
loadvalue()
end

function BONE()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("331010110;1~20::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("Bone Chain✅ ")
gg.setRanges(old)
loadvalue()
end

function RUBY()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("333010110;1~20::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("Ruby Pendent✅ ")
gg.setRanges(old)
loadvalue()
end

function MOON()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("332010110;1~20::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("Moon Necklace✅ ")
gg.setRanges(old)
loadvalue()
end

function STARDUST()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("300060110;1~20::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("StarDust✅ ")
gg.setRanges(old)
loadvalue()
end

function SAFEC()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_ALLOC)
gg.searchNumber("300090110;1~20::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~20",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("80", gg.TYPE_DWORD)
gg.toast("Safe Card✅ ")
gg.setRanges(old)
loadvalue()
end

function MDAT1()
local old = gg.getRanges()
gg.clearResults()
gg.searchNumber("300140110;1~3::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~11",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("12", gg.TYPE_DWORD)
gg.toast("Blue Mushroom Deposit✅ ")
gg.setRanges(old)
loadvalue()
end

function MDAT2()
local old = gg.getRanges()
gg.clearResults()
gg.searchNumber("300120110;1~3::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~11",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("12", gg.TYPE_DWORD)
gg.toast("Hala Deposit✅ ")
gg.setRanges(old)
loadvalue()
end

function MDAT3()
local old = gg.getRanges()
gg.clearResults()
gg.searchNumber("300130110;1~3::5",4 , false,  gg .SIGH_EQUAL, 0, -1, 100)
gg.refineNumber("1~11",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("12", gg.TYPE_DWORD)
gg.toast("Polar Day Deposit✅ ")
gg.setRanges(old)
loadvalue()
end

function islandf()
sif = true
show = false
ggift = true
if main==1 then
fast = gg.choice({
" [ Auto V3 ] Đảo Thám Hiểm🌀",
" [ Auto V1 ] Đảo thám hiểm⚡",
" [ Auto V1 ] Cày Đồ🔎",
" T̶ă̶n̶g̶ ̶C̶h̶ỉ̶ ̶S̶ố̶",
" Fix kẹt trong tầng 200🔧",
" Cài đặt Phần Thưởng🎁",
" Chọn Chế Độ Hack",
"Menu Chính"},nil,"Chế độ tự động V6 - Đảo Thám Hiểm (Khó)\n[ Auto V3 Bật ở sảnh Land 🌀 ]\n[ Auto V1 Bật trong tầng🏘️ ]")
elseif main==2 then
fast = gg.choice({
" [ Auto V3 ] Fantasy Land🌀",
" [ Auto V1 ] Fantasy Land⚡",
" [ Auto V1 ] Plow Hoe🔎 ",
" P̶o̶w̶e̶r̶ ̶U̶p̶",
" Fix stranded in floor 200🔧",
" Rewards Settings🎁",
" Select Hack Mode",
"Main Menu"},nil,"Automatic mode V6 - Fantasy Land (Nightmare)\n[ Auto V3 Turn on in Land lobby🌀 ]\n[ Auto V1 Turn on in floor🏘️ ]")
end
if fast == 1 then mauto() end
if fast == 2 then mautov1() end
if fast == 3 then SOBI() end
if fast == 4 then Buff() end
if fast == 5 then fixIs() end
if fast == 6 then skiprw = false blockg = true Lgift() end
if fast == 7 then Modeis() end
if fast == 8 then sif = false show = true Main() end
if fast == nil then end
  while(sif==true) do
      if gg.isVisible(true) then
         gg.setVisible(false) islandf() end
    end
end

function mautoQ()
while gg.isVisible(true) do
   gg.setVisible(false)
    if main==1 then
    quess = gg.alert("Chức năng đang được chạy","Tiếp Tục","Dừng","Tăng Chỉ Số")
    elseif main==2 then 
    quess = gg.alert("Function is running","Continue","Stop","Power Up")
end
    if quess == 1 then end
    if quess == 2 then 
      a = false sif = true 
      gg.toast(toaststop) 
    end
    if quess == 3 then Buff() loadvalue() end
    if quess == 0 then end
end
end

function mauto()
setvalue(so+py,4,1)
loadvalue()
gg.toast(toastat)
a = true
sif = false
while (a==true) do
   mautoQ()
   result = gg.getResults(1)
     if result[1].value > 30 and result[1].value < 39 then
        gg.sleep(3500)
        Buff() loadvalue()
        ggift = true
        result[1].value = 39
        gg.setValues(result)
     elseif result[1].value > 39 and result[1].value < 229 then
        gg.sleep(120)
        result[1].value = 229
        gg.setValues(result)
        gg.toast("Kill Boss Blue Mushroom⚔️")
     elseif result[1].value == 230 then
        gg.sleep(600)
        Lgift()
        ggift = false
     elseif result[1].value > 280 and result[1].value < 289 then
        gg.sleep(3500)
        Buff() loadvalue()
        ggift = true
        result[1].value = 289
        gg.setValues(result)
     elseif result[1].value > 289 and result[1].value < 479 then
        gg.sleep(120)
        result[1].value = 479
        gg.setValues(result)
        gg.toast("Kill Boss Hala Island⚔️")
     elseif result[1].value == 480 then
        gg.sleep(600)
        Lgift()
        ggift = false
     elseif result[1].value > 530 and result[1].value < 539 then
        gg.sleep(3500)
        Buff() loadvalue()
        ggift = true
        result[1].value = 539
        gg.setValues(result)
     elseif result[1].value > 539 and result[1].value < 729 then
        gg.sleep(120)
        result[1].value = 729
        gg.setValues(result)
        gg.toast("Kill Boss Polar Day⚔️")
     elseif result[1].value == 730 then
        gg.sleep(600)
        Lgift()
        ggift = false
   end
 end
end

function fixIs()
Buff()
setvalue(so+py,4,1)
gg.toast("Fixed")
end

function mautov1()
siv1 = true
sif = false
ggift = true
loadvalue()
   result = gg.getResults(1)
     if result[1].value > 30 and result[1].value < 231 then
        ndao = "Blue Mushroom"
        cdao = 1
     elseif result[1].value > 280 and result[1].value < 481 then
        ndao = "Hala Island"
        cdao = 2
     elseif result[1].value > 530 and result[1].value < 731 then
        ndao = "Polar Day"
        cdao = 3
     else
        ndao = "???"
        cdao = 0
   end
if main==1 then
Atc = gg.choice({
" [ Auto ] "..ndao.."⚡(Khó)",
"Trở về"},nil,"Vượt màn nhanh (Khó)⚡\n[ Tự động phát hiện đảo 👁️‍🗨️]")
elseif main==2 then
Atc = gg.choice({
" [ Auto ] "..ndao.."⚡(Nightmare)",
"Back"},nil,"Pass the floor quickly (Nightmare)⚡\n[ Automatically detects islands 👁️‍🗨️]")
end
if Atc == 1 then Checkdao() end
if Atc == 2 then siv1 = false sif = true islandf() end
if Atc == nil then end
while(siv1==true) do
      if gg.isVisible(true) then
         gg.setVisible(false) mautov1() end
    end
end

function Checkdao()
if cdao == 1 then bmf()
elseif cdao == 2 then hlf()
elseif cdao == 3 then pdf()
elseif cdao == 0 then gg.alert("Hãy vào đảo trước\nPlease enter island first")
end
end

function bmf()
Buff()
loadvalue()
a = true
while (a==true) do
   mautoQ()
   result = gg.getResults(1)
     if result[1].value > 30 and result[1].value < 39 then
        gg.sleep(120)
        result[1].value = 39
        gg.setValues(result)
     elseif result[1].value > 39 and result[1].value < 229 then
        gg.sleep(120)
        result[1].value = 229
        gg.setValues(result)
        gg.toast("Kill Boss⚔️")
     elseif result[1].value == 230 then
        a = false
        gg.sleep(600)
        Lgift()
   end
 end
end

function hlf()
Buff()
loadvalue()
a = true
while (a==true) do
   mautoQ()
   result = gg.getResults(1)
     if result[1].value > 280 and result[1].value < 289 then
        gg.sleep(120)
        result[1].value = 289
        gg.setValues(result)
     elseif result[1].value > 289 and result[1].value < 479 then
        gg.sleep(120)
        result[1].value = 479
        gg.setValues(result)
        gg.toast("Kill Boss⚔️")
     elseif result[1].value == 480 then
        a = false
        gg.sleep(600)
        Lgift()
   end
 end
end

function pdf()
Buff()
loadvalue()
a = true
while (a==true) do
   mautoQ()
   result = gg.getResults(1)
     if result[1].value > 530 and result[1].value < 539 then
        result[1].value = 539
        gg.setValues(result)
     elseif result[1].value > 539 and result[1].value < 729 then
        gg.sleep(120)
        result[1].value = 729
        gg.setValues(result)
        gg.toast("Kill Boss⚔️")
     elseif result[1].value == 730 then
        a = false
        gg.sleep(600)
        Lgift()
   end
 end
end

function SOBIQ()
while gg.isVisible(true) do
   gg.setVisible(false)
    if main==1 then
    ques = gg.alert("Bạn đã tìm đủ trang bị chưa?","Tiếp tục","Hoàn thành","Tăng Chỉ Số")
    elseif main==2 then 
    ques = gg.alert("Have you found enough equipment yet?","Continue","Complete","Power Up")
end
    if ques == 1 then end
    if ques == 2 then
       a = false
       skiprw = false
       blockgs = true
       if mdao==1 then 
        setvalue(so+py,4,229)
        elseif mdao==2 then 
        setvalue(so+py,4,479)
        elseif mdao==3 then 
        setvalue(so+py,4,729) 
      end
    gg.toast(toastsbd)
    Lgift() 
   end
    if ques == 3 then Buff() loadvalue() end
    if ques == 0 then end
end
end

 function SOBI()
sob = true
sif = false
ggift = true
loadvalue()
   result = gg.getResults(1)
     if result[1].value > 30 and result[1].value < 231 then
        ndao = "Blue Mushroom"
        cdao = 1
     elseif result[1].value > 280 and result[1].value < 481 then
        ndao = "Hala Island"
        cdao = 2
     elseif result[1].value > 530 and result[1].value < 731 then
        ndao = "Polar Day"
        cdao = 3
     else
        ndao = "???"
        cdao = 0
   end
if main==1 then
Sbc = gg.choice({
" [ Auto ] "..ndao.."🔎",
"Trở về"},nil,"Chế độ cày đồ (Khó)🔎\n[ Tự động phát hiện đảo 👁️‍🗨️]")
elseif main==2 then
Sbc = gg.choice({
" [ Auto ] "..ndao.."🔎",
"Back"},nil,"Plow Hoe mode (Nightmare)🔎\n[ Automatically detects islands 👁️‍??️]")
end
if Sbc == 1 then CheckdaoQ() end
if Sbc == 2 then sob = false sif = true islandf() end
if Sbc == nil then end
while(sob==true) do
      if gg.isVisible(true) then
         gg.setVisible(false) SOBI() end
    end
end

function CheckdaoQ()
if cdao == 1 then bms()
elseif cdao == 2 then hls()
elseif cdao == 3 then pds()
elseif cdao == 0 then gg.alert("Hãy vào đảo trước\nPlease enter island first")
end
end

function bms()
Buff()
loadvalue()
setvalue(so+py,4,39)
gg.toast("Search items in floor 10🔎")
a = true
mdao = 1
while (a==true) do
SOBIQ()
result = gg.getResults(1)
     if result[1].value > 30 and result[1].value < 230 then
        gg.sleep(120)
        result[1].value = 39
        gg.setValues(result)
        gg.toast("Search items in floor 10🔎")
   end
 end
end

function hls()
Buff()
loadvalue()
setvalue(so+py,4,289)
gg.toast("Search items in floor 10🔎")
a = true
mdao = 2
while (a==true) do
SOBIQ()
result = gg.getResults(1)
     if result[1].value > 280 and result[1].value < 480 then
        gg.sleep(120)
        result[1].value = 289
        gg.setValues(result)
        gg.toast("Search items in floor 10🔎")
   end
 end
end

function pds()
Buff()
loadvalue()
setvalue(so+py,4,539)
gg.toast("Search items in floor 10🔎")
a = true
mdao = 3
while (a==true) do
SOBIQ()
result = gg.getResults(1)
     if result[1].value > 530 and result[1].value < 730 then
        gg.sleep(120)
        result[1].value = 539
        gg.setValues(result)
        gg.toast("Search items in floor 10🔎")
   end
 end
end

bangvm = {
"Tầng|Floor 10",
"Tầng|Floor 20",
"Tầng|Floor 30",
"Tầng|Floor 40",
"Tầng|Floor 50",
"Tầng|Floor 60",
"Tầng|Floor 70",
"Tầng|Floor 80",
"Tầng|Floor 90",
"Tầng|Floor 100",
"Tầng|Floor 110",
"Tầng|Floor 120",
"Tầng|Floor 130",
"Tầng|Floor 140",
"Tầng|Floor 150",
"Tầng|Floor 160",
"Tầng|Floor 170",
"Tầng|Floor 180",
"Tầng|Floor 190",
"Tầng|Floor 200",
" Quay Lại",
}

choicb=0 choich=0 choicp=0
function islandb()
sib = true
show = false
if choicb >0 then map2() else
if choich >0 then map4() else
if choicp >0 then map6() else
if main==1 then
Ib = gg.choice({
" T̶ă̶n̶g̶ ̶C̶h̶ỉ̶ ̶S̶ố̶",
" Blue Mushroom",
" Hala Island",
" Polar Day",
" Chọn Chế Độ Hack",
"Menu Chính"},nil,"Đến tầng Boss - Đảo Thám Hiểm (Khó)")
elseif main==2 then 
Ib = gg.choice({
" P̶o̶w̶e̶r̶ ̶U̶p̶",
" Blue Mushroom",
" Hala Island",
" Polar Day",
" Select Hack Mode",
"Main Menu"},nil,"Go to Boss floor - Fantasy Land (Nightmare)")
end
if Ib == 1 then Buff() end
if Ib == 2 then startb = 1 tendao = "Blue Mushroom (Nightmare)" map2() end
if Ib == 3 then startb = 1 tendao = "Hala Island (Nightmare)" map4() end
if Ib == 4 then startb = 1 tendao = "Polar Day (Nightmare)" map6() end
if Ib == 5 then Modeis() end
if Ib == 6 then sib = false show = true Main() end   
if Ib == nil then end
  while(sib==true) do
      if gg.isVisible(true) then
         gg.setVisible(false) islandb() end
    end
end
end
end
end

function map000()
if startb == 1 then Buff() end
setvalue(so+py,4,vmd)
gg.toast(tendao.." "..tang.."✅")
end

function map2()
map2001 = gg.choice(bangvm,choicb,tendao)
if map2001 == 1 then 
tang = "10"
vmd = "39"
choicb = 1
map000()
 end
if map2001 == 2 then 
tang = "20"
vmd = "49"
choicb = 2
map000() 
end
if map2001 == 3 then
tang = "30"
vmd = "59"
choicb = 3
map000()
 end
 if map2001 == 4 then 
 tang = "40"
vmd = "69"
choicb = 4
map000()
 end
if map2001 == 5 then 
tang = "50"
vmd = "79"
choicb = 5
map000() 
end
if map2001 == 6 then
tang = "60"
vmd = "89"
choicb = 6
map000()
 end
 if map2001 == 7 then 
 tang = "70"
vmd = "99"
choicb = 7
map000()
 end
if map2001 == 8 then 
tang = "80"
vmd = "109"
choicb = 8
map000() 
end
if map2001 == 9 then
tang = "90"
vmd = "119"
choicb = 9
map000()
 end
 if map2001 == 10 then 
 tang = "100"
vmd = "129"
choicb = 10
map000()
 end
 if map2001 == 11 then 
 tang = "110"
vmd = "139"
choicb = 11
map000()
 end
if map2001 == 12 then 
tang = "120"
vmd = "149"
choicb = 12
map000() 
end
if map2001 == 13 then
tang = "130"
vmd = "159"
choicb = 13
map000()
 end
 if map2001 == 14 then 
 tang = "140"
vmd = "169"
choicb = 14
map000()
 end
if map2001 == 15 then 
tang = "150"
vmd = "179"
choicb = 15
map000() 
end
if map2001 == 16 then
tang = "160"
vmd = "189"
choicb = 16
map000()
 end
 if map2001 == 17 then 
 tang = "170"
vmd = "199"
choicb = 17
map000()
 end
if map2001 == 18 then 
tang = "180"
vmd = "209"
choicb = 18
map000() 
end
if map2001 == 19 then
tang = "190"
vmd = "219"
choicb = 19
map000()
 end
 if map2001 == 20 then 
 tang = "200"
vmd = "229"
choicb = 0
map000()
 end
if map2001 == 21 then choicb = 0 islandb() end
if map2001 == nil then end
end

function map4()
map4001 = gg.choice(bangvm,choich,tendao)
if map4001 == 1 then 
tang = "10"
vmd = "289"
choich = 1
map000()
 end
if map4001 == 2 then 
tang = "20"
vmd = "299"
choich = 2
map000() 
end
if map4001 == 3 then
tang = "30"
vmd = "309"
choich = 3
map000()
 end
 if map4001 == 4 then 
 tang = "40"
vmd = "319"
choich = 4
map000()
 end
if map4001 == 5 then 
tang = "50"
vmd = "329"
choich = 5
map000() 
end
if map4001 == 6 then
tang = "60"
vmd = "339"
choich = 6
map000()
 end
 if map4001 == 7 then 
 tang = "70"
vmd = "349"
choich = 7
map000()
 end
if map4001 == 8 then 
tang = "80"
vmd = "359"
choich = 8
map000() 
end
if map4001 == 9 then
tang = "90"
vmd = "369"
choich = 9
map000()
 end
 if map4001 == 10 then 
 tang = "100"
vmd = "379"
choich = 10
map000()
 end
 if map4001 == 11 then 
 tang = "110"
vmd = "389"
choich = 11
map000()
 end
if map4001 == 12 then 
tang = "120"
vmd = "399"
choich = 12
map000() 
end
if map4001 == 13 then
tang = "130"
vmd = "409"
choich = 13
map000()
 end
 if map4001 == 14 then 
 tang = "140"
vmd = "419"
choich = 14
map000()
 end
if map4001 == 15 then 
tang = "150"
vmd = "429"
choich = 15
map000() 
end
if map4001 == 16 then
tang = "160"
vmd = "439"
choich = 16
map000()
 end
 if map4001 == 17 then 
 tang = "170"
vmd = "449"
choich = 17
map000()
 end
if map4001 == 18 then 
tang = "180"
vmd = "459"
choich = 18
map000() 
end
if map4001 == 19 then
tang = "190"
vmd = "469"
choich = 19
map000()
 end
 if map4001 == 20 then 
 tang = "200"
vmd = "479"
choich = 0
map000()
 end
if map4001 == 21 then choich = 0 islandb() end
if map4001 == nil then end
end

function map6()
map6001 = gg.choice(bangvm,choicp,tendao)
if map6001 == 1 then 
tang = "10"
vmd = "539"
choicp = 1
map000()
 end
if map6001 == 2 then 
tang = "20"
vmd = "549"
choicp = 2
map000() 
end
if map6001 == 3 then
tang = "30"
vmd = "559"
choicp = 3
map000()
 end
 if map6001 == 4 then 
 tang = "40"
vmd = "569"
choicp = 4
map000()
 end
if map6001 == 5 then 
tang = "50"
vmd = "579"
choicp = 5
map000() 
end
if map6001 == 6 then
tang = "60"
vmd = "589"
choicp = 6
map000()
 end
 if map6001 == 7 then 
 tang = "70"
vmd = "599"
choicp = 7
map000()
 end
if map6001 == 8 then 
tang = "80"
vmd = "609"
choicp = 8
map000() 
end
if map6001 == 9 then
tang = "90"
vmd = "619"
choicp = 9
map000()
 end
 if map6001 == 10 then 
 tang = "100"
vmd = "629"
choicp = 10
map000()
 end
 if map6001 == 11 then 
 tang = "110"
vmd = "639"
choicp = 11
map000()
 end
if map6001 == 12 then 
tang = "120"
vmd = "649"
choicp = 12
map000() 
end
if map6001 == 13 then
tang = "130"
vmd = "659"
choicp = 13
map000()
 end
 if map6001 == 14 then 
 tang = "140"
vmd = "669"
choicp = 14
map000()
 end
if map6001 == 15 then 
tang = "150"
vmd = "679"
choicp = 15
map000() 
end
if map6001 == 16 then
tang = "160"
vmd = "689"
choicp = 16
map000()
 end
 if map6001 == 17 then 
 tang = "170"
vmd = "699"
choicp = 17
map000()
 end
if map6001 == 18 then 
tang = "180"
vmd = "709"
choicp = 18
map000() 
end
if map6001 == 19 then
tang = "190"
vmd = "719"
choicp = 19
map000()
 end
 if map6001 == 20 then 
 tang = "200"
vmd = "729"
choicp = 0
map000()
 end
if map6001 == 21 then choicp = 0 islandb() end
if map6001 == nil then end
end

function ARENA()
ar = true
show = false
if main == 1 then
errgm = "Lỗi!\nChức năng này không hỗ trợ PVP!\nHoặc không tìm thấy mã!"
di= gg.choice({
"😈God Mode😈 [ Trận ]",
Freez .. "⏳ Đóng băng ⏳ [ Trận ] ",
"📚 Lấy nhiều hơn 5 kỹ năng 📚 [ Trận ]",
"🚫 Xoá Bots 🤖 [ Sảnh ]",
"💬 Command Chat 💬 [ Sảnh ]",
"🔙Menu Chính🔙"},nil," ⚔️ Không sử dụng tính năng này nếu có người chơi trong trận 🌟 ")
elseif main == 2 then
errgm = "Error!\nThis function does not support PVP!\nOr code not found!"
di= gg.choice({
"😈God Mode😈 [ InMatch ]",
Freez .. "⏳ Freeze ⏳ [ InMatch ] ",
"📚 Get more than 5 skills 📚 [ InMatch ]",
"🚫 Remove Bots 🤖 [ Lobby ]",
"💬 Command Chat 💬 [ Lobby ]",
"🔙Main Menu🔙"},nil," ⚔️ Don't use this feature if there are players in match 🌟 ")
end
if di == 1 then GodMode() end
if di == 2 then FREEZE() end
if di == 3 then SKILLS() end
if di == 4 then NOBOTS() end
if di == 5 then CHAT() end
if di == 6 then ar = false show = true gg.clearList() Main() end
if di == nil then end
while(ar==true) do
      if gg.isVisible(true) then
         gg.setVisible(false) ARENA() end
    end
end

function GodMode()
gg.clearResults()
Gm = gg.prompt({
[1]="Attack range[100;500]",
[2]="Magnet range[100;500]",
[3]="Movement speed[150;500]",
[4]="God Mode ON",
[5]="God range"
},{[1]="100",[2]="100",[3]="300",[4]=true},{"number","number","number","checkbox","checkbox"})
if not Gm then gg.toast("Cancel") return end
Gmstt = "God Mode ON\n#Attack range: "..Gm[1].."\n#Magnet range: "..Gm[2].." \n#Movement speed: "..Gm[3]
if not Gm[4] then gg.setValues(revert) gg.clearList() gg.toast("Gode Mode OFF") return end
if Gm[5] then
Gm[1]="9999" Gm[2]="9999"
Gmstt="God Mode ON\n#God Range\n#Movement speed: "..Gm[3]
end
gg.setVisible(false)
r=search({"100;1065353219;1099956225",{"100", 64}}, 4, "1099956225")
   while (gg.isVisible(true)) do
   code1 = math.random(10,99)
   code2 = math.random(10,999)
   gg.searchNumber(code1..";"..code2, 4, false, gg.SIGN_EQUAL, 0, -1, 0)
   gg.sleep(600)
 end
if #r== 0 then gg.alert(errgm) gg.clearResults() return end
tt={}
ii=1
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address+12
tt[ii].flags=4
tt[ii].value=9999999
end
ii=ii+1
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address+16
tt[ii].flags=4
tt[ii].value=9999999
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address+20
tt[ii].flags= 4
tt[ii].value=9999999
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address+24
tt[ii].flags= 4
tt[ii].value=9999999
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address+36
tt[ii].flags= 4
tt[ii].value=Gm[3]
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address+40
tt[ii].flags= 4
tt[ii].value=9999
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address+44
tt[ii].flags= 4
tt[ii].value=Gm[1]
end
ii=ii+1
end
if #r>0 then
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address+48
tt[ii].flags= 4
tt[ii].value=Gm[2]
end
ii=ii+1
gg.loadResults(tt)
revert=gg.getResults(gg.getResultsCount())
gg.sleep(150)
gg.setValues(tt)
gg.clearResults()
gg.toast(Gmstt)
end
end

Freez = " "
function FREEZE()
if Freez == " " then
gg.clearResults()
gg.setRanges (gg.REGION_CODE_APP)
gg.searchNumber("-39596D;100F;-39248D::13",16 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("100",gg.TYPE_FLOAT)  
gg.getResults(gg.getResultsCount(1))
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast(" ⏳ 《 ON 》 ⏳ ")
gg.clearResults()
Freez = "[TURN OFF] "
elseif Freez == "[TURN OFF] " then
gg.clearResults()
gg.setRanges (gg.REGION_CODE_APP)
gg.searchNumber("-39596D;99999F;-39248D::13",16 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("99999",gg.TYPE_FLOAT)  
gg.getResults(gg.getResultsCount(1))
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast(" ⏳ 《 OFF 》 ⏳ ")
Freez = " "
gg.clearResults()
end 
end

function SKILLS()
gg.clearResults()
if main == 2 then
sk = gg.alert("level up to 5 and leave one last skill slot empty","Start","Cancel","Stop")
elseif main == 1 then
sk = gg.alert("Lên cấp 5 và để trống một ô kỹ năng cuối cùng","Bắt đầu","Hủy","Dừng")
end
if sk == 1 then
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("0~4;1;16843008;65;49::41",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("0~4",gg.TYPE_DWORD)  
p = gg.getResults(gg.getResultsCount(1))
p[1].value = "0"
p[1].freeze = true
p[1].freezType = gg.FREEZE_NORMAL
gg.addListItems(p)
gg.toast(" 📚《 Enabled 》📚 ")
end
if sk == 2 then end
if sk == 3 then
gg.clearList(p)
gg.clearResults()
gg.toast("Reset")
end
if sk == 0 then gg.toast("Cancel") end
end

function NOBOTS()
old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_BSS | gg.REGION_ANONYMOUS)
gg.searchNumber("60100;256;1;270::53",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("256",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount(1))
gg.editAll("257", gg.TYPE_DWORD)
gg.toast(" 🚫 Remove All Bots 🤖 ")
gg.setRanges(old)
gg.clearResults()
end

function CHAT()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("256;-1;-1;388;388::89",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("256",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount(1))
gg.editAll("257", gg.TYPE_DWORD)
gg.toast(" Command Chat💬 ")
gg.setRanges(old)
gg.clearResults()
end

function OTHER()
oth = true
show = false
if main == 1 then
squest = "Bạn có muốn thêm 💳Thẻ Tháng💳 ?"
sqs = "Có"
sqs2 = "Không, Tôi đã có"
ot = gg.choice({
"🏅Auto win Dark Adventure🏅 [ Trận ]",
"🗺️Level Ải Pet Adventure🗺️",
"◻️Mở Ô Pet Adventure V1◻️",
"◻️Mở Ô Pet Adventure V2◻️",
"💳 Thẻ Tháng 💳",
"🔙Menu Chính🔙"},nil,"❗Nếu bạn chạy tính năng sai cách thức, bạn sẽ gặp lỗi và sẽ bị out khỏi script")
elseif main == 2 then 
squest = "Do you want to add the 💳Monthly Card💳 ?"
sqs = "Yes"
sqs2 = "No, I already have"
ot = gg.choice({
"🏅Automatic win Dark Adventure🏅 [ InMatch ]",
"🗺️Mission Level Pet Adventure🗺️",
"◻️Slot Open Pet Adventure V1◻️",
"◻️Slot Open Pet Adventure V2◻️",
"💳 Monthly Card 💳",
"🔙Main Menu🔙"},nil,"❗If you run the feature incorrectly, you will get an error and the script will crash")
end
if ot == 1 then AUTOW() end
if ot == 2 then Mission() end
if ot == 3 then PetAdv() McQuest() end
if ot == 4 then PetAdv2() McQuest() end
if ot == 5 then MonthlyCard() end
if ot == 6 then oth = false show = true Main() end
if ot == nil then end
   while(oth==true) do
      if gg.isVisible(true) then
         gg.setVisible(false) OTHER() end
    end
end

function AUTOW()
old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_BSS | gg.REGION_ANONYMOUS)
gg.searchNumber("-16~1;84000000~84999999;1~16::21",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-16~-1;1~16",gg.TYPE_DWORD)
p = gg.getResults(gg.getResultsCount())
p[2].value = "1"
p[2].freeze = true
p[2].freezType = gg.FREEZE_NORMAL
p[3].value = "1"
p[3].freeze = true
p[3].freezType = gg.FREEZE_NORMAL
gg.addListItems(p)
gg.toast (" 🏅 ⏳ Wait 60s to win ⏳ 🏅 ")
gg.clearResults()
end

function Mission()
gg.clearResults()
  Ms = gg.prompt({[1] = "Mission level Hack[1;14]"},{[1] = "7" },{"number"})
if  Ms == nil then gg.toast("Cancel") return end
r=search({"42;394",{"394",-64}}, fixdv)
   while (gg.isVisible(true)) do
   code1 = math.random(10,99)
   code2 = math.random(10,999)
   gg.searchNumber(code1..";"..code2, 4, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.sleep(600)
 end
if #r == 0 then gg.clearResults() gg.alert("Sorry, script is error or not suitable for your device!") else
tt={}
ii=1
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address-44
tt[ii].flags=4
tt[ii].value=Ms[1]
end
ii=ii+1
at = 0
gg.setValues(tt)
gg.clearResults()
gg.toast("Mission level "..Ms[1].."✅")
end
end

function PetAdv()
r=search({'1050',{'-1',68}}, fixdv)
if #r== 0 then gg.alert(tblel) gg.clearResults() gg.toast("Please Try code V2") else
tt={}
ii=1
for i=1,#r do
tt[ii]={}
tt[ii].address=r[i].address-84
tt[ii].flags=4
tt[ii].value=1228
end
ii=ii+1
gg.setValues(tt)
gg.setVisible(false)
gg.clearResults()
gg.alert("Full slot open Pet adventure✅")
end
end


function PetAdv2()
local old = gg.getRanges()
gg.clearResults()
gg["setRanges"](gg["REGION_C_HEAP"] | gg["REGION_ANONYMOUS"] | gg["REGION_C_ALLOC"])
gg.searchNumber("5~40;1050;1050;15::149",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("5~40",gg.TYPE_DWORD)
local p = gg.getResults(gg.getResultsCount())
p[1].value = "999"
p[1].freeze = true
p[1].freezType = gg.FREEZE_NORMAL
gg.addListItems(p)
gg.toast("Full slot open Pet adventure✅")
gg.clearResults()
end

function McQuest()
slotq = gg.alert(squest,sqs,sqs2)
if slotq == 1 then MonthlyCard() end
if slotq == 2 then end
if slotq == 0 then gg.toast("Cancel") end
end

function MonthlyCard()
old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_C_BSS | gg.REGION_ANONYMOUS)
gg.searchNumber("1000000000~1999999999;0;1000000000~1999999999;256;7369988::61",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("1000000000~1999999999;256",gg.TYPE_DWORD)
p = gg.getResults(gg.getResultsCount(3))
p[1].value = "-961674878"
p[1].freeze = true
p[1].freezType = gg.FREEZE_NORMAL
p[2].value = "-961674878"
p[2].freeze = true
p[2].freezType = gg.FREEZE_NORMAL
p[3].value = "257"
p[3].freeze = true
p[3].freezType = gg.FREEZE_NORMAL
gg.addListItems(p)
gg.toast("Add Monthly Card 💳 ")
gg.clearResults()
end

   function PETS()
local di= gg.choice({" 🐟 SS - Gunshark 🐟 ", " 🐟 Gunshark 🐟 ", " ⚡ Thunderbbit ⚡ ", " 🔥 FireGod ?? ", " 🐍 Tastysnake 🐍 ", " ⚰️ Dracula ⚰️ ", " 👽 Pogo Zombie 👽 ", " 🐾 Audience ?? ", " 🔥 🐦 Barbar ?? 🔥 ", " 🦄 Unicorn 🦄 ", " ⚔️ Heavensword ⚔️ ", " ⚔️ Dragonsword ⚔️", " 🐟 Mermaid 🐟 ", " 😂 Piggieman 😂 ", " 🌸 Sakura 🌸 ", " 🐸 Clever Frog 🐸 ", " 🐣 Duckbill 🐣 ", " ‍🚀 👨 Spaceman 👨‍ 🚀 ", " 🐆 Furball 🐆 ", " ♍ Virgo ♍ ", " 🏀 Hip-Hop 🏀 ", " 🐯 Holy Tiger 🐯 ", " 🐾 Kakabi 🐾 ", " 🐍 Golden Scale 🐍 ", " 🌳 Elder Woods 🌳 ", "🐉 Forest Breeze🐉 ", " ❄️ Snowball Baby ❄️ ", " 🐾 SS - Dedicator 🐾 ", " 🐾 SS - Stinky 🐾 ", " 🐾 SS - Chameleon  🐾 ", " 🔙 Main Menu 🔙 "},nil,"🏡Only works in training mode🏡\n🐙Can only choose up to 2 pets🐙")
	if di == 1 then SSGS() end
	if di == 2 then GS() end
	if di == 3 then TB() end
	if di == 4 then FG() end
	if di == 5 then TS() end
	if di == 6 then D() end
	if di == 7 then PZ() end
	if di == 8 then A() end
	if di == 9 then B() end
	if di == 10 then U() end
	if di == 11 then HS() end
	if di == 12 then DS() end
	if di == 13 then MM() end
	if di == 14 then FB() end
	if di == 15 then S() end
	if di == 16 then CF() end
	if di == 17 then DB() end
	if di == 18 then SM() end
	if di == 19 then PM() end
	if di == 20 then V() end
	if di == 21 then HH() end
	if di == 22 then HT() end
	if di == 23 then K() end
	if di == 24 then GS() end
	if di == 25 then EW() end
	if di == 26 then FBZ() end
	if di == 27 then SB() end
	if di == 28 then SSD() end
	if di == 29 then SSS() end
	if di == 30 then SSC() end
	if di == 31 then Main() end
    if di == nil then end
end

function SSGS()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("6140170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🐟 SS - Gunshark 🐟 ")
gg.setRanges(old)
gg.clearResults()
end

function GS()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3280170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🐟 Gunshark 🐟 ")
gg.setRanges(old)
gg.clearResults()
end

function TB()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3700170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" ⚡ Thunderbbit  ⚡ ")
gg.setRanges(old)
gg.clearResults()
end

function FG()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3710170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🔥 FireGod 🔥 ")
gg.setRanges(old)
gg.clearResults()
end

function TS()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3740170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🐍 Tastysnake 🐍 ")
gg.setRanges(old)
gg.clearResults()
end

function D()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3640170;-1;-1;16777216;0::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" ⚰️ Dracula ⚰️ ")
gg.setRanges(old)
gg.clearResults()
end

function PZ()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3660170;-1;-1;16777216;1::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 👾 👽 Pogo Zombie 👾 👽 ")
gg.setRanges(old)
gg.clearResults()
end

function A()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3430170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.alert(" 🐾 Audience 🐾 ")
gg.setRanges(old)
gg.clearResults()
end 

function B()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3030170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🔥 🐦 Barbar 🐦 🔥 ")
gg.setRanges(old)
gg.clearResults()
end

function U()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3800170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🦄 Unicorn 🦄 ")
gg.setRanges(old)
gg.clearResults()
end

function HS()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3840170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" ⚔️ Heavensword ⚔️ ")
gg.setRanges(old)
gg.clearResults()
end

function DS()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3850170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" ⚔️ Dragonsword ⚔️")
gg.setRanges(old)
gg.clearResults()
end

function MM()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3870170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🐟 Mermaid 🐟 ")
gg.setRanges(old)
gg.clearResults()
end

function FB()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3880170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 😂 Furball 😂 ")
gg.setRanges(old)
gg.clearResults()
end

function S()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3910170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🌸 Sakura 🌸 ")
gg.setRanges(old)
gg.clearResults()

end

function CF()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3940170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🐸 Clever Frog 🐸 ")
gg.setRanges(old)
gg.clearResults()
end

function DB()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3980170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🐣 Duckbill 🐣 ")
gg.setRanges(old)
gg.clearResults()
end

function SM()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("3990170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" ‍?? 👨‍ Spaceman ??‍ ?? ")
gg.setRanges(old)
gg.clearResults()
end

function PM()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("6000170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🐆 Piggieman 🐆 ")
gg.setRanges(old)
gg.clearResults()
end

function V()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("6010170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" ♍ Virgo ♍ ")
gg.setRanges(old)
gg.clearResults()
end

function HH()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("6020170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🏀 Hip - Hop 🏀 ")
gg.setRanges(old)
gg.clearResults()
end

function HT()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("6030170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🐯 Holy Tiger 🐯 ")
gg.setRanges(old)
gg.clearResults()
end

function K()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("6050170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🐾 Kakabi 🐾 ")
gg.setRanges(old)
gg.clearResults()
end

function GS()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("6100170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🐍 Golden Scale 🐍 ")
gg.setRanges(old)
gg.clearResults()
end

function EW()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("6110170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🌳 Elder Woods 🌳 ")
gg.setRanges(old)
gg.clearResults()
end

function FBZ()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("6120170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("🐉 Forest Breeze 🐉 ")
gg.setRanges(old)
gg.clearResults()
end

function SB()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("6130170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" ❄️ Snowball Baby ❄️ ")
gg.setRanges(old)
gg.clearResults()
end

function SSD()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("6150170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🐾 SS - Dedicator 🐾 ")
gg.setRanges(old)
gg.clearResults()
end

function SSS()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("6170170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🐾 SS - Stinky 🐾 ")
gg.setRanges(old)
gg.clearResults()
end

function SSC()
local old = gg.getRanges()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("6160170;-1;-1;16777216::141",4 , false,  gg .SIGH_EQUAL, 0, -1, 1)
gg.refineNumber("-1",gg.TYPE_DWORD)
gg.getResults(gg.getResultsCount())
gg.editAll("0", gg.TYPE_DWORD)
gg.toast(" 🐾 SS - Chameleon 🐾 ")
gg.setRanges(old)
gg.clearResults()
end

function HERO()
  Hr = gg.multiChoice({
    " 🪓BarbarQ LV25",
    " 🦈Valvyrie LV25",
    " 🥊CocoBear LV25",
    " 🔨BarbarQueen LV25",
    " ⚔️Woworker LV25",
    " 🦴K.K.Lion LV25",
    " 🐾Momolko LV25",
    " 🛶BarbarQChoi LV25",
    " ⌛Bombobbit LV25",
    " 🌵Barbatty LV25",
    " 🤡Sasatta LV25",
    " 🐿️PepePan LV25",
    " ☠️Bebella LV25",
    " 🎼Tytimmy LV25",
    "🔙Main Menu"}, nil,"       ✴️Hero Awaken menu✴️\n✨Only works in training mode✨")
if Hr == nil then else
if Hr[1] then HR1() end
if Hr[2] then HR2() end
if Hr[3] then HR3() end
if Hr[4] then HR4() end
if Hr[5] then HR5() end
if Hr[6] then HR6() end
if Hr[7] then HR7() end
if Hr[8] then HR8() end
if Hr[9] then HR9() end
if Hr[10] then HR10() end
if Hr[11] then HR11() end
if Hr[12] then HR12() end
if Hr[13] then HR13() end
if Hr[14] then HR14() end
if Hr[15] then Main() end
end
end

function HR1()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("10010170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nBabarQ Level LV25")
  end

function HR2()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("10510170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nValvyrie Level LV25")
  end

function HR3()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("15010170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nCocoBear Level 25")
  end

function HR4()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16510170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nBabarQueen Level 25")
end

function HR5()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16010170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nWoworker Level 25")
  end

function HR6()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("11010170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nK.K.Lion Level 25")
  end

function HR7()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("11510170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nMomolko Level 25")
  end

function HR8()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("12510170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nBabarChoi Level 25")
  end

function HR9()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("13010170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nBombobbit Level 25")
  end

function HR10()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("13510170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nBarbatty Level 25")
  end

function HR11()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("12010170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nSasatta Level 25")
  end

function HR12()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("14010170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nPepePan Level 25")
  end

function HR13()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("14510170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nBebella Level 25")
  end

function HR14()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("15510170;0~25;-39596::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(10)
    gg.editAll("1;25", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Awakened Hero\nTytimmy Level 25")
  end

function islandt()
sit = true
show = false
loadvalue()
   result = gg.getResults(1)
     if result[1].value > 0 and result[1].value < 31 then
        ndao = "Blue Mushroom"
     elseif result[1].value > 230 and result[1].value < 281 then
        ndao = "Hala Island"
     elseif result[1].value > 480 and result[1].value < 531 then
        ndao = "Polar Day"
     else
        ndao = "???"
   end
if main == 1 then
iln = gg.choice({
" T̶ă̶n̶g̶ ̶C̶h̶ỉ̶ ̶S̶ố̶",
" "..ndao.."⚡(Thường)",
"Menu Chính"},nil,"Vượt màn nhanh (Thường)⚡\n[ Tự động phát hiện đảo 👁️‍🗨️]")
elseif main == 2 then
iln = gg.choice({
" P̶o̶w̶e̶r̶ ̶U̶p̶",
" "..ndao.."⚡(Normal)",
"Main Menu"},nil,"Pass the floor quickly (Normal)⚡\n[ Automatically detects islands 👁️‍🗨️]")
end
if iln == 1 then Buff() end
if iln == 2 then autot() end
if iln == 3 then sit = false show = true Main() end
if iln == nil then end
  while(sit==true) do
      if gg.isVisible(true) then
         gg.setVisible(false) islandt() end
    end
end

function autot()
if ndao == "???" then
gg.alert("Hãy vào đảo trước\nPlease enter island first")
return end
Buff()
loadvalue()
  gg.sleep(120)
   result = gg.getResults(1)
     if result[1].value > 0 and result[1].value < 29 then
        result[1].value = 29
        gg.setValues(result)
        gg.toast("Go to Blue Mushroom 30⚡")
     elseif result[1].value > 230 and result[1].value < 279 then
        result[1].value = 279
        gg.setValues(result)
        gg.toast("Go to Hala Island 50⚡")
     elseif result[1].value > 480 and result[1].value < 529 then
        result[1].value = 529
        gg.setValues(result)
        gg.toast("Go to Polar Day 50⚡")
   end
 end

function Contact()
if main == 1 then
Ct = gg.alert("Super Script Official.lua\nScript được viết bởi Chỉ Có. Bone\nFacebook: https://m.facebook.com/ganyu3525","Facebook","Phản hồi")
elseif main == 2 then
Ct = gg.alert("Super Script Official.lua\nScript written by Chỉ Có. Bone\nFacebook: https://m.facebook.com/ganyu3525","Facebook","Feedback")
end
if Ct == 1 then
gg.copyText("https://m.facebook.com/ganyu3525")
gg.alert("Copied the facebook link","")
end
if Ct == 2 then FeedBack() end
if Ct == 0 then end
end

function FeedBack()
if main == 1 then
Sv = gg.prompt({"Đảo Thám Hiểm","Battle Arena","Test Pet S đến SS","Thức Tỉnh Hero","Tính Năng Khác"},nil,{"text","text","text","text","text"})
elseif main == 2 then
Sv = gg.prompt({"Fantasy Land","Battle Arena","Test Pet S and SS","Hero Awaken","Other Feature"},nil,{"text","text","text","text","text"})
end
if not Sv then gg.toast("Cancel") return end
if Sv[1] == '' and Sv[2] == '' and Sv[3] == '' and Sv[4] == '' and Sv[5] == '' then gg.alert("Comment on at least one content") return end
if string.len(Sv[1]) > 150 then gg.alert("Fantasy Land content is too long") return end
if string.len(Sv[2]) > 150 then gg.alert("Battle Arena content is too long") return end
if string.len(Sv[3]) > 150 then gg.alert("Test Pet S and SS content is too long") return end
if string.len(Sv[4]) > 150 then gg.alert("Hero Awaken content is too long") return end
if string.len(Sv[5]) > 150 then gg.alert("Other Feature content is too long") return end
Content = "Feedback: "..Username.."\nFantasy Land: "..Sv[1].."\nBattle Arena: "..Sv[2].."\nTest Pet S and SS: "..Sv[3].."\nBattle Arena: "..Sv[4].."\nOther Feature: "..Sv[5]
gg.alert(Content)
gg.toast("Sending...")
makeRequest("https://notescript.000webhostapp.com/FeedBack.php",Content)
end

function END()
gg.clearResults()
gg.clearList()
if main == 2 then
Cl = gg.alert("Are you sure you want to exit the menu❓","yes","no") 
elseif main == 1 then
Cl = gg.alert("Bạn có chắc chắn muốn thoát menu❓","có","không")
 end
if Cl == 1 then
   if main == 2 then
print(os.date("▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n📴Script has been turned off %H:%M %Y-%m-%d📴\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n      💐Thanks for using my script💐\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n༺Script written by Youtube Chỉ Có. Bone༻\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬"))
gg.setVisible(true)
os.exit()
   elseif main == 1 then
print(os.date("▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n 📴Script đã được tắt vào %H:%M %d-%m-%Y📴\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n   💐Cảm ơn đã sử dụng Script của tôi💐\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n༺Script được viết bởi Youtube Chỉ Có. Bone༻\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬"))
gg.setVisible(true)
os.exit()
   end
end
if CI == 2 then end
if Cl == 0 then end
end

gg.setVisible(true)
show = true
while (show==true) do 
 if gg.isVisible(true) then 
    gg.setVisible(false)
    Main() 
 end 
end

--Ghi Chú (Note):
--Nếu là dân biết lập trình hãy tôn trọng chất xám của nhau, hãy HỌC HỎI và PHÁT TRIỂN script chứ đừng copy - paste.
--If you know how to program, please respect my intelligence, LEARN and DEVELOP the script, don't copy and paste.