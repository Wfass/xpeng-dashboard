"""Run the read-only ICM FTP client using the credential bundled in the OEM tool. Never print it."""
import re, subprocess, shlex, pathlib, sys
base=pathlib.Path(__file__).resolve().parent
source=base/'devtools-smali/smali_classes12/com/xiaopeng/devtools/presenter/b/a.smali'
m=re.search(r'const-string v3, "([^"\n]*@icm[^"\n]*)"',source.read_text())
if not m: raise SystemExit('OEM login data not found')
args=sys.argv[1:]
if len(args)<2 or args[0] not in ('LIST','GET'): raise SystemExit('LIST path | GET remote local')
cmd='ICM_FTP_PASS='+shlex.quote(m.group(1))+' CLASSPATH=/data/local/tmp/icm-read-only.jar app_process /system/bin IcmReadOnlyFtp '+shlex.join(args)
r=subprocess.run(['adb','shell',cmd],capture_output=True,text=True,timeout=240)
print(r.stdout);print(r.stderr)
raise SystemExit(r.returncode)
