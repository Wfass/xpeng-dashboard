.class public Lcom/xiaopeng/commonfunc/utils/AfterSalesHelper;
.super Ljava/lang/Object;
.source "AfterSalesHelper.java"


# static fields
.field public static final REPAIRMODE_ACTION_ACTIVATE_XPU:Ljava/lang/String; = "activate XPU"

.field public static final REPAIRMODE_ACTION_AUTO_CATCH_LOG:Ljava/lang/String; = "set auto catch log"

.field public static final REPAIRMODE_ACTION_BACKLIGHT_DIAGNOSIS:Ljava/lang/String; = "back light diagnosis"

.field public static final REPAIRMODE_ACTION_BTHCI_LOG:Ljava/lang/String; = "set bt hci log"

.field public static final REPAIRMODE_ACTION_BT_DIAGNOSIS:Ljava/lang/String; = "bt diagnosis"

.field public static final REPAIRMODE_ACTION_BY_PC_COMMAND:Ljava/lang/String; = "by PC command"

.field public static final REPAIRMODE_ACTION_CAMERA_DIAGNOSIS:Ljava/lang/String; = "camera diagnosis"

.field public static final REPAIRMODE_ACTION_CAT:Ljava/lang/String; = "cat"

.field public static final REPAIRMODE_ACTION_CLEAR_INDIV:Ljava/lang/String; = "clear indiv data"

.field public static final REPAIRMODE_ACTION_CLEAR_LOG:Ljava/lang/String; = "clear log"

.field public static final REPAIRMODE_ACTION_COLLECT_CANDATA:Ljava/lang/String; = "collect candata"

.field public static final REPAIRMODE_ACTION_CONNECT_CERT_WIFI:Ljava/lang/String; = "connect security wifi"

.field public static final REPAIRMODE_ACTION_CONSOLE:Ljava/lang/String; = "set console"

.field public static final REPAIRMODE_ACTION_COPY_LOG:Ljava/lang/String; = "copy log"

.field public static final REPAIRMODE_ACTION_COPY_RECORD_MEDIA:Ljava/lang/String; = "copy record diagnosis media"

.field public static final REPAIRMODE_ACTION_DF:Ljava/lang/String; = "df -h"

.field public static final REPAIRMODE_ACTION_DU:Ljava/lang/String; = "du -sh"

.field public static final REPAIRMODE_ACTION_DUMPSYS:Ljava/lang/String; = "dumpsys meminfo"

.field public static final REPAIRMODE_ACTION_ETH_DIAGNOSIS:Ljava/lang/String; = "ethernet diagnosis"

.field public static final REPAIRMODE_ACTION_EXEC_ENCRYPTSH:Ljava/lang/String; = "execute xiaopeng tool"

.field public static final REPAIRMODE_ACTION_FAIL:Ljava/lang/String; = "fail"

.field public static final REPAIRMODE_ACTION_FREE_STORAGE:Ljava/lang/String; = "free storage"

.field public static final REPAIRMODE_ACTION_GEN_NAVI_UUID:Ljava/lang/String; = "generate navigation activation UUID"

.field public static final REPAIRMODE_ACTION_GETPROP:Ljava/lang/String; = "getprop"

.field public static final REPAIRMODE_ACTION_GET_CDU_KEY:Ljava/lang/String; = "get cdu cert"

.field public static final REPAIRMODE_ACTION_GET_INDIV:Ljava/lang/String; = "get indiv data"

.field public static final REPAIRMODE_ACTION_GET_PSO_KEY:Ljava/lang/String; = "get pso key"

.field public static final REPAIRMODE_ACTION_GET_TBOX_KEY:Ljava/lang/String; = "get tbox cert"

.field public static final REPAIRMODE_ACTION_GET_WIFI_KEY:Ljava/lang/String; = "get wifi cert"

.field public static final REPAIRMODE_ACTION_GPS_COLD_RESET:Ljava/lang/String; = "GPS cold reset"

.field public static final REPAIRMODE_ACTION_GPS_DIAGNOSIS:Ljava/lang/String; = "gps diagnosis"

.field public static final REPAIRMODE_ACTION_GPS_HOT_RESET:Ljava/lang/String; = "GPS hot reset"

.field public static final REPAIRMODE_ACTION_GPS_WARM_RESET:Ljava/lang/String; = "GPS warm reset"

.field public static final REPAIRMODE_ACTION_IFCONFIG:Ljava/lang/String; = "ifconfig"

.field public static final REPAIRMODE_ACTION_LCD_DIAGNOSIS:Ljava/lang/String; = "screen diagnosis"

.field public static final REPAIRMODE_ACTION_LSAL:Ljava/lang/String; = "ls -al"

.field public static final REPAIRMODE_ACTION_LTE_DIAGNOSIS:Ljava/lang/String; = "lte diagnosis"

.field public static final REPAIRMODE_ACTION_MIC_DIAGNOSIS:Ljava/lang/String; = "mic diagnosis"

.field public static final REPAIRMODE_ACTION_MODEM_LOG:Ljava/lang/String; = "set modem log"

.field public static final REPAIRMODE_ACTION_MOUNT:Ljava/lang/String; = "mount"

.field public static final REPAIRMODE_ACTION_NAVI_LOG:Ljava/lang/String; = "set navi log"

.field public static final REPAIRMODE_ACTION_RAMDUMP:Ljava/lang/String; = "set ramdump"

.field public static final REPAIRMODE_ACTION_REBOOT:Ljava/lang/String; = "reboot system"

.field public static final REPAIRMODE_ACTION_REPLACE_BLE:Ljava/lang/String; = "replace BLE"

.field public static final REPAIRMODE_ACTION_REPLACE_CDU:Ljava/lang/String; = "replace CDU"

.field public static final REPAIRMODE_ACTION_REPLACE_NFC:Ljava/lang/String; = "replace NFC"

.field public static final REPAIRMODE_ACTION_REPLACE_TBOX:Ljava/lang/String; = "replace TBOX"

.field public static final REPAIRMODE_ACTION_RESET:Ljava/lang/String; = "reset system"

.field public static final REPAIRMODE_ACTION_SOUND_DIAGNOSIS:Ljava/lang/String; = "sound diagnosis"

.field public static final REPAIRMODE_ACTION_SUCCESS:Ljava/lang/String; = "success"

.field public static final REPAIRMODE_ACTION_TBOX_LOG:Ljava/lang/String; = "set tbox log"

.field public static final REPAIRMODE_ACTION_TBOX_ROUTING:Ljava/lang/String; = "set tbox routing"

.field public static final REPAIRMODE_ACTION_TCPDUMP:Ljava/lang/String; = "set tcpdump"

.field public static final REPAIRMODE_ACTION_TEMP_DIAGNOSIS:Ljava/lang/String; = "temperature diagnosis"

.field public static final REPAIRMODE_ACTION_TOP:Ljava/lang/String; = "top"

.field public static final REPAIRMODE_ACTION_TOUCH_DIAGNOSIS:Ljava/lang/String; = "touch panel diagnosis"

.field public static final REPAIRMODE_ACTION_TRIGGERED:Ljava/lang/String; = "triggered"

.field public static final REPAIRMODE_ACTION_USB_DIAGNOSIS:Ljava/lang/String; = "usb diagnosis"

.field public static final REPAIRMODE_ACTION_WIFI_DIAGNOSIS:Ljava/lang/String; = "wifi diagnosis"

.field private static final TAG:Ljava/lang/String; = "AfterSalesHelper"

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAfterSalesManager()Lcom/xiaopeng/aftersales/AfterSalesManager;
    .locals 2

    .line 93
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/AfterSalesHelper;->sContext:Landroid/content/Context;

    const-string v1, "xiaopeng_aftersales"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 93
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 89
    sput-object p0, Lcom/xiaopeng/commonfunc/utils/AfterSalesHelper;->sContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method public static recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/String;

    .line 98
    const-string v0, "\r\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    const-string v2, ""

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "temp_action":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/AfterSalesHelper;->sContext:Landroid/content/Context;

    const-string v2, "xiaopeng_aftersales"

    .line 101
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 102
    .local v1, "manager":Lcom/xiaopeng/aftersales/AfterSalesManager;
    invoke-virtual {v1, v0, p1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method
