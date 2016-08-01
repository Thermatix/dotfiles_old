

wifi_quality() {
   _adapter_id="${1:-wlan0}"	
   if [ $(ifconfig $_adapter_id | grep UP | wc -l) -eq 1 ]
   then
      _linkQual="$(airport -I | grep -E CtlRSSI | cut -d'-' -f2)" 
     # _linkQual="`iwconfig $_adapter_id | grep Quality | cut -d'=' -f2 | cut -d' ' -f1 | cut -d'/' -f1`" # this is for linux
     if [ $_linkQual -gt 52 ] # >75% link qual
     then
       _linkSparked=$(spark 1 2 3 4)
     elif [ $_linkQual -gt 35 ] # >50% link qual
     then
       _linkSparked=$(spark 1 2 3 0)
     elif [ $_linkQual -gt 17 ] # 25% link qual
     then
       _linkSparked=$(spark 1 2 0 0)
     elif [ $_linkQual -gt 7 ] # 25% link qual
     then
       _linkSparked=$(spark 1 0 0 0)
     else # < 25%
       _linkSparked=$(spark 0 0 0 0)
     fi

     echo $_linkSparked
   fi
}

function gitdelbranchfunc(){
  git branch -d $1
  git push origin :$1
}

function tinput() {
  tail -f $1 | repeat ${2:-2} IFS= read -re
}

function loadmysqldump() {
	pv $1 | mysql -u root $1
}

