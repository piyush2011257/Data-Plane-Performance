interrupts='
0:
8:
9:
16:
18:
23:
88:
89:
90:
91:
92:
93:
94:
95:
96:
97:
98:
99:
100:
101:
153:
154:
155:
156:
157:
158:
159:
160:
161:
162:
163:
164:
165:
166:
167:
168:
169:
170:
171:
172:
173:
174:
175:
176:
177:
178:
179:
180:
181:
182:
183:
184:
185:
186:
NMI:
LOC:
SPU:
PMI:
IWI:
RTR:
RES:
CAL:
TLB:
TRM:
THR:
MCE:
MCP:
ERR:
MIS:
'
for i in {103..127};
do
        echo $i
	for j in {3..26};
	do
		#echo $file
        	#echo $i
		#echo $j
		#before=$(cat interrupts_before.log | grep $i: | tr -s " " | cut -d " " -f $j)
		#after=$(cat interrupts_after.log | grep $i: | tr -s " " | cut -d " " -f $j)
		before=`cat interrupts_before.log | grep $i: | tr -s " " | cut -d " " -f $j`
		after=`cat interrupts_after.log | grep $i: | tr -s " " | cut -d " " -f $j`
		#echo $before
		#echo $after
		echo "=$after-$before"
        	#echo $res
	done
done
