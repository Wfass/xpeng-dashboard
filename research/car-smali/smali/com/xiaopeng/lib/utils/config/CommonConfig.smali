.class public Lcom/xiaopeng/lib/utils/config/CommonConfig;
.super Ljava/lang/Object;
.source "CommonConfig.java"


# static fields
.field public static final ACTION_BROADCAST_ADB_OTA:Ljava/lang/String; = "com.xiaopeng.broadcast.ACTION_ADB_OTA"

.field public static final ACTION_BROADCAST_CAMERA_CLOSE:Ljava/lang/String; = "com.xiaopeng.action.CAMERA_CLOSE"

.field public static final ACTION_BROADCAST_CAMERA_OPEN:Ljava/lang/String; = "com.xiaopeng.action.CAMERA_OPEN"

.field public static final ACTION_BROADCAST_CLIENT_SSL_UPDATE:Ljava/lang/String; = "com.xiaopeng.action.CLIENT_SSL_UPDATE"

.field public static final ACTION_BROADCAST_GET_TOKEN:Ljava/lang/String; = "com.xiaopeng.broadcast.ACTION_GET_TOKEN"

.field public static final ACTION_BROADCAST_HIGH_LAMP_CLOSE:Ljava/lang/String; = "com.xiaopeng.action.HIGH_LAMP_CLOSE"

.field public static final ACTION_BROADCAST_HIGH_LAMP_OPEN:Ljava/lang/String; = "com.xiaopeng.action.HIGH_LAMP_OPEN"

.field public static final ACTION_BROADCAST_NEAR_LAMP_CLOSE:Ljava/lang/String; = "com.xiaopeng.action.NEAR_LAMP_CLOSE"

.field public static final ACTION_BROADCAST_NEAR_LAMP_OPEN:Ljava/lang/String; = "com.xiaopeng.action.NEAR_LAMP_OPEN"

.field public static final ACTION_BROADCAST_PM_STATUS_CHANGE:Ljava/lang/String; = "com.xiaopeng.broadcast.ACTION_PM_STATUS_CHANGE"

.field public static final ACTION_BROADCAST_SCREEN_THEMES_CHANGE:Ljava/lang/String; = "com.xiaopeng.broadcast.ACTION_SCREEN_THEMES_CHANGE"

.field public static final ACTION_BROADCAST_TOKEN_GOTTEN:Ljava/lang/String; = "com.xiaopeng.broadcast.ACTION_TOKEN_GOTTEN"

.field public static final ACTION_BROADCAST_TO_SPEAK:Ljava/lang/String; = "aios.intent.action.TO_SPEAK"

.field public static final ACTION_CONBIND_KEY_UPLOAD_LOG:Ljava/lang/String; = "com.xiaopeng.scu.ACTION_UP_LOAD_CAN_LOG"

.field public static final ACTION_CONBIND_KEY_UPLOAD_LOG_CS:Ljava/lang/String; = "com.xiaopeng.scu.ACTION_UP_LOAD_CAN_LOG_CS"

.field public static final AIOS_PRIORITY:Ljava/lang/String; = "aios.intent.extra.PRIORITY"

.field public static final AIOS_PRIORITY_DEFAULT:I = 0x3

.field public static final AIOS_TEXT:Ljava/lang/String; = "aios.intent.extra.TEXT"

.field public static final BUCKET_AND_ENDPOINT:Ljava/lang/String; = "http://xmart-cdu-service-log.oss-cn-hangzhou.aliyuncs.com/"

.field public static final BUCKET_NAME:Ljava/lang/String; = "xmart-cdu-service-log"

.field public static final CAR_APP_ID:Ljava/lang/String; = "xmart:appid:002"

.field public static final CAR_CLIENT_DEFAULT:Ljava/lang/String;

.field public static final END_POINT:Ljava/lang/String; = "http://oss-cn-hangzhou.aliyuncs.com/"

.field public static final EXTRA_THEME_TYPE:Ljava/lang/String; = "extra_theme_type"

.field public static final HTTP_BUSINESS_HOST:Ljava/lang/String;

.field public static HTTP_HOST:Ljava/lang/String; = null

.field public static HTTP_HOST_EU:Ljava/lang/String; = null

.field public static final KEY_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final KEY_CLIENT:Ljava/lang/String; = "Client"

.field public static final KEY_VALUE_STATUS:Ljava/lang/String; = "status"

.field public static final MAX_LOG_LENGTH:J = 0xa00000L

.field public static final PM_FAKE_OFF:I = 0x1

.field public static final PM_NORMAL:I = 0x0

.field public static final PM_SLEEP:I = 0x2

.field public static final RESPONSE_OK:I = 0xc8

.field public static final THEME_AUTO:I = 0x3

.field public static final THEME_DAY:I = 0x1

.field public static final THEME_NIGHT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "car.xmart.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->CAR_CLIENT_DEFAULT:Ljava/lang/String;

    .line 57
    const-string v0, "https://10.0.13.28:8553"

    const-string v1, "https://xmart.xiaopeng.com"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getHostInString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    .line 58
    const-string v0, "https://10.0.13.28:8556"

    const-string v1, "https://xmart-eu.xiaopeng.com"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getHostInString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST_EU:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST_EU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/biz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_BUSINESS_HOST:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/biz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_BUSINESS_HOST:Ljava/lang/String;

    .line 68
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
