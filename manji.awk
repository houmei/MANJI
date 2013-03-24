#! /usr/local/bin/gawk -f
#
BEGIN{

	# MANJI-KUZUSHI pattern 10x10
	MX=10;MY=10;
	M[0]="／　／＼／＼　　／　";
	M[1]="　　＼　　／　／　／";
	M[2]="／＼　＼　＼／　／　";
	M[3]="＼　＼　＼　　／　　";
	M[4]="／　　＼　＼　＼／＼";
	M[5]="＼／＼　＼　＼　　／";
	M[6]="　　／　　＼　＼　＼";
	M[7]="　／　／＼　＼　＼／";
	M[8]="／　／　／　　＼　　";
	M[9]="　／　　＼／＼／　／";


	SX=3; SY=4;	# X-Y offset
	LX=14; LY=30;	# LX:line length LY:lines

	O1X=2; O2X=2;	# Left-Right mergin
	O1Y=2; O2Y=2;	# start-end mergin

	t=SY;
	for(i=0;i<LY;i++){
		if (t>0) {t--;continue;};
		a="";
		for(j=0;j<int(LX/MX)+1;j++) {
			a=a M[(i+SY)%MX];
		}
		Str=substr(a,SX)substr(a,1,length(a)-SX+1);
		print Str;
	}
}
