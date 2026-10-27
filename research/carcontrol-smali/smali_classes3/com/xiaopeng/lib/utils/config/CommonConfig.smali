.class public Lcom/xiaopeng/lib/utils/config/CommonConfig;
.super Ljava/lang/Object;
.source "CommonConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;,
        Lcom/xiaopeng/lib/utils/config/CommonConfig$TestEnvironmentHost;,
        Lcom/xiaopeng/lib/utils/config/CommonConfig$XpFeatureConfig;
    }
.end annotation


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

.field public static final BRAND:Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

.field public static final BUCKET_AND_ENDPOINT:Ljava/lang/String; = "http://xmart-cdu-service-log.oss-cn-hangzhou.aliyuncs.com/"

.field public static final BUCKET_NAME:Ljava/lang/String; = "xmart-cdu-service-log"

.field public static final CAR_APP_ID:Ljava/lang/String; = "xmart:appid:002"

.field public static final CAR_CLIENT_DEFAULT:Ljava/lang/String;

.field public static final END_POINT:Ljava/lang/String; = "http://oss-cn-hangzhou.aliyuncs.com/"

.field public static final EXTRA_THEME_TYPE:Ljava/lang/String; = "extra_theme_type"

.field public static final HTTP_BUSINESS_HOST:Ljava/lang/String;

.field public static HTTP_CHARGE_HOST:Ljava/lang/String; = null

.field public static HTTP_CHARGE_HOST_DEFAULT:Ljava/lang/String; = null

.field public static HTTP_DEPLOY_CHARGE_HOST:Ljava/lang/String; = null

.field public static HTTP_HOST:Ljava/lang/String; = null

.field public static final HTTP_HOST_DEFAULT:Ljava/lang/String; = "https://xmart.xiaopeng.com"

.field public static HTTP_HOST_EU:Ljava/lang/String; = null

.field public static final HTTP_HOST_EU_DEFAULT:Ljava/lang/String; = "https://xmart-eu.xiaopeng.com"

.field public static HTTP_IOT_WEB_HOST:Ljava/lang/String; = null

.field public static HTTP_IOT_WEB_HOST_DEFAULT:Ljava/lang/String; = null

.field public static HTTP_SPEECH_HOST:Ljava/lang/String; = null

.field public static HTTP_SPEECH_HOST_DEFAULT:Ljava/lang/String; = null

.field public static HTTP_SPEECH_HOST_EU:Ljava/lang/String; = null

.field public static HTTP_SPEECH_HOST_EU_DEFAULT:Ljava/lang/String; = null

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
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "car.xmart.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->CAR_CLIENT_DEFAULT:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->XIAOPENG:Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    .line 60
    invoke-virtual {v0}, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->getBrandName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "config_car_brand"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->getXpFeatureDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->getBrand(Ljava/lang/String;)Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->BRAND:Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    .line 62
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->getMainHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->getMainHostEu()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST_EU:Ljava/lang/String;

    const-string v0, "https://speech.xiaopeng.com"

    .line 65
    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_SPEECH_HOST_DEFAULT:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->getSpeechHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_SPEECH_HOST:Ljava/lang/String;

    const-string v0, "https://speech-eu.xiaopeng.com"

    .line 67
    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_SPEECH_HOST_EU_DEFAULT:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->getSpeechHostEu()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_SPEECH_HOST_EU:Ljava/lang/String;

    const-string v0, "https://iot-web.xiaopeng.com"

    .line 69
    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_IOT_WEB_HOST_DEFAULT:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->getIotWebHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_IOT_WEB_HOST:Ljava/lang/String;

    const-string v0, "https://chargegateway.xiaopeng.com"

    .line 71
    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_CHARGE_HOST_DEFAULT:Ljava/lang/String;

    const-string v1, "config_charge_host"

    .line 72
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->getXpFeatureDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_CHARGE_HOST:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_CHARGE_HOST_DEFAULT:Ljava/lang/String;

    const-string v1, "config_deploy_charge_host"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->getXpFeatureDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_DEPLOY_CHARGE_HOST:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v0

    const-string v1, "/biz"

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST_EU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_BUSINESS_HOST:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_BUSINESS_HOST:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIotWebHost()Ljava/lang/String;
    .locals 2

    .line 184
    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_IOT_WEB_HOST_DEFAULT:Ljava/lang/String;

    const-string v1, "config_iot_web_host"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->getXpFeatureDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getIotWebHostInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMainHost()Ljava/lang/String;
    .locals 2

    const-string v0, "config_main_host"

    const-string v1, "https://xmart.xiaopeng.com"

    .line 160
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->getXpFeatureDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->isVolkswagen()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://xmart.test.mm.volkswagen-anhui.com"

    .line 162
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getHostInString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "https://10.0.13.28:8553"

    .line 163
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getHostInString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getMainHostEu()Ljava/lang/String;
    .locals 2

    const-string v0, "config_main_host_eu"

    const-string v1, "https://xmart-eu.xiaopeng.com"

    .line 167
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->getXpFeatureDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->isVolkswagen()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://xmart.test.mm.volkswagen-anhui.com"

    .line 169
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getHostInString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "https://10.0.13.28:8556"

    .line 170
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getHostInString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getSpeechHost()Ljava/lang/String;
    .locals 2

    .line 174
    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_SPEECH_HOST_DEFAULT:Ljava/lang/String;

    const-string v1, "config_speech_host"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->getXpFeatureDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getSpeechHostInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSpeechHostEu()Ljava/lang/String;
    .locals 2

    .line 179
    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_SPEECH_HOST_EU_DEFAULT:Ljava/lang/String;

    const-string v1, "config_speech_host_eu"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/config/CommonConfig;->getXpFeatureDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getSpeechHostInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getXpFeatureDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValue"
        }
    .end annotation

    .line 189
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/XpFeature;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static isVolkswagen()Z
    .locals 2

    .line 156
    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->BRAND:Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->VOLKSWAGEN:Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
