.class public Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;
.super Ljava/lang/Object;
.source "TrafficStatsEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;
    }
.end annotation


# static fields
.field public static final FIRST_NETWORK_UID:I = 0x186a0

.field public static final LAST_NETWORK_UID:I = 0x1adb0

.field public static final TAG:Ljava/lang/String; = "TrafficStatsEntry"

.field public static final TAG_APP_AUTOPILOT:I = -0xfb0001

.field public static final TAG_APP_AUTO_SHOW:I = -0xdd0001

.field public static final TAG_APP_AVATAR_SERVICE:I = -0xef0001

.field public static final TAG_APP_BLUETOOTH_PHONE:I = -0xf60001

.field public static final TAG_APP_BUG_HUNTER:I = -0xde0001

.field public static final TAG_APP_CAR_ACCOUNT:I = -0xea0001

.field public static final TAG_APP_CAR_CAMERA:I = -0xed0001

.field public static final TAG_APP_CAR_CONTROL:I = -0xe90001

.field public static final TAG_APP_CAR_DIAGNOSIS:I = -0xdb0001

.field public static final TAG_APP_CAR_GALLERY:I = -0xec0001

.field public static final TAG_APP_CAR_REMOTE_CONTROL:I = -0xe60001

.field public static final TAG_APP_CAR_SERVICE:I = -0xeb0001

.field public static final TAG_APP_CAR_SETTINGS:I = -0xe80001

.field public static final TAG_APP_CAR_SPEECH_SERVICE:I = -0xe70001

.field public static final TAG_APP_DATA_COLLECTOR:I = -0xf80001

.field public static final TAG_APP_DATA_UPLOADER:I = -0xf70001

.field public static final TAG_APP_DEVICE_COMMUNICATION:I = -0xee0001

.field public static final TAG_APP_DEV_TOOLS:I = -0xfa0001

.field public static final TAG_APP_ENGINE:I = -0xfc0001

.field public static final TAG_APP_FACTORY:I = -0xdc0001

.field public static final TAG_APP_IPC:I = -0xdf0001

.field public static final TAG_APP_NETWORK_MONITOR:I = -0xda0001

.field public static final TAG_APP_OOBE:I = -0xfd0001

.field public static final TAG_APP_OTA:I = -0xfe0001

.field public static final TAG_APP_PSO_SERVICE:I = -0xd90001

.field public static final TAG_APP_XUI_SERVICE:I = -0xf90001

.field private static final sEntry:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    .line 59
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 60
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.ota"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186a0

    const v4, -0xfe0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.oobe"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186a1

    const v4, -0xfd0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.appengine"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186a2

    const v4, -0xfc0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.autopilot"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186a3

    const v4, -0xfb0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.devtools"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186a4

    const v4, -0xfa0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.xuiservice"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186a5

    const v4, -0xf90001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.data.collector"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186a6

    const v4, -0xf80001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.data.uploader"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186a7

    const v4, -0xf70001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.btphone"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186a8

    const v4, -0xf60001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.aiavatarservice"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186a9

    const v4, -0xef0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.device.communication"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186aa

    const v4, -0xee0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.xmart.camera"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186ab

    const v4, -0xed0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.xmart.cargallery"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186ac

    const v4, -0xec0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.android.car"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186ad

    const v4, -0xeb0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.caraccount"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186ae

    const v4, -0xea0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.carcontrol"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186af

    const v4, -0xe90001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.car.settings"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186b0

    const v4, -0xe80001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.xpspeechservice"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186b1

    const v4, -0xe70001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xpeng.xpcarremotecontrol"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186b2

    const v4, -0xe60001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.ipc"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186b3

    const v4, -0xdf0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.bughunter"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186b4

    const v4, -0xde0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.autoshow"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186b5

    const v4, -0xdd0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.factory"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186b6

    const v4, -0xdc0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.cardiagnosis"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186b7

    const v4, -0xdb0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.networkmonitor"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186b8

    const v4, -0xda0001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    const-string v1, "android.E28psoService"

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    const v3, 0x186b9

    const v4, -0xd90001

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEntry(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 174
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    return-object v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPackageName(II)Ljava/lang/String;
    .locals 4
    .param p0, "tag"    # I
    .param p1, "uid"    # I

    .line 132
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 133
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    .line 135
    .local v2, "entry":Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;
    if-eqz v2, :cond_1

    .line 136
    iget v3, v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;->tag:I

    if-eq v3, p0, :cond_0

    iget v3, v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;->uid:I

    if-ne v3, p1, :cond_1

    .line 137
    :cond_0
    return-object v1

    .line 140
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "entry":Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;
    :cond_1
    goto :goto_0

    .line 142
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTag(Ljava/lang/String;)I
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 116
    invoke-static {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->getEntry(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    move-result-object v0

    .line 117
    .local v0, "entry":Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;
    if-eqz v0, :cond_0

    .line 118
    iget v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;->tag:I

    return v1

    .line 120
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getTrafficInfo()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/xp_traffic_stats_maps.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v2, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 204
    .local v3, "sr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 206
    .local v4, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 207
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 210
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 211
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    .local v5, "jObject":Lorg/json/JSONObject;
    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 213
    .local v7, "jArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_4

    .line 214
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 215
    .local v8, "length":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_4

    .line 216
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 217
    .local v10, "object":Lorg/json/JSONObject;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "packageName"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 219
    const-string v12, "packageName"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 220
    .local v12, "packageName":Ljava/lang/String;
    const-string v13, "packageName"

    invoke-virtual {v11, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v12, "uid"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 223
    const-string v12, "uid"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 224
    .local v12, "uid":I
    const-string v13, "uid"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .end local v12    # "uid":I
    :cond_2
    const-string v12, "tag"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 227
    const-string v12, "tag"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 228
    .local v12, "tag":Ljava/lang/String;
    const-string v13, "tag"

    invoke-virtual {v11, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .end local v12    # "tag":Ljava/lang/String;
    :cond_3
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v10    # "object":Lorg/json/JSONObject;
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 235
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "sr":Ljava/io/InputStreamReader;
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "jObject":Lorg/json/JSONObject;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "jArray":Lorg/json/JSONArray;
    .end local v8    # "length":I
    .end local v9    # "i":I
    :cond_4
    goto :goto_2

    .line 234
    :catch_0
    move-exception v1

    .line 236
    :goto_2
    return-object v0
.end method

.method public static getUid(Ljava/lang/String;)I
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 124
    invoke-static {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->getEntry(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    move-result-object v0

    .line 125
    .local v0, "entry":Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;
    if-eqz v0, :cond_0

    .line 126
    iget v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;->uid:I

    return v1

    .line 128
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static isEntryTag(I)Z
    .locals 4
    .param p0, "tag"    # I

    .line 146
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 147
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    .line 149
    .local v2, "entry":Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;
    if-eqz v2, :cond_0

    .line 150
    iget v3, v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;->tag:I

    if-ne v3, p0, :cond_0

    .line 151
    const/4 v0, 0x1

    return v0

    .line 154
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "entry":Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;
    :cond_0
    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isEntryUid(I)Z
    .locals 4
    .param p0, "uid"    # I

    .line 160
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->sEntry:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;

    .line 163
    .local v2, "entry":Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;
    if-eqz v2, :cond_0

    .line 164
    iget v3, v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;->uid:I

    if-ne v3, p0, :cond_0

    .line 165
    const/4 v0, 0x1

    return v0

    .line 168
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "entry":Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;
    :cond_0
    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static set(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "tag"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 193
    invoke-static {p1}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    .line 194
    .local v0, "oldTag":I
    invoke-static {p0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 195
    return-void
.end method

.method public static setTraficInfo()V
    .locals 8
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 246
    .local v0, "version":I
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 247
    return-void

    .line 249
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 250
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 251
    return-void

    .line 253
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->getTag(Ljava/lang/String;)I

    move-result v3

    .line 255
    .local v3, "tag":I
    invoke-static {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->getUid(Ljava/lang/String;)I

    move-result v4

    .line 257
    .local v4, "uid":I
    const-string v5, "TrafficStatsEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTraficInfo:\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\ttag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\tuid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {v4, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->set(II)V

    .line 259
    return-void
.end method
