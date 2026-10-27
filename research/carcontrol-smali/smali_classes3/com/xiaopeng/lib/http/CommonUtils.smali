.class public Lcom/xiaopeng/lib/http/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field public static final ACTION_BROADCAST_ISF_SECURE_STORE_RELOAD:Ljava/lang/String;

.field public static final ACTION_BROADCAST_SECURE_STORE_RELOAD:Ljava/lang/String; = "com.xiaopeng.action.SECURE_STORE_RELOAD"

.field public static final CAR_APP_ID:Ljava/lang/String; = "xmart:appid:002"

.field public static final CAR_APP_SEC:Ljava/lang/String; = "B638C588DCAD7C1A43E6FB"

.field public static final CAR_CLIENT_DEFAULT:Ljava/lang/String;

.field public static HTTP_HOST:Ljava/lang/String; = null

.field public static final KEY_CLIENT:Ljava/lang/String; = "Client"

.field private static final TAG:Ljava/lang/String; = "CommonUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    sput-object v0, Lcom/xiaopeng/lib/http/CommonUtils;->HTTP_HOST:Ljava/lang/String;

    .line 22
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

    sput-object v0, Lcom/xiaopeng/lib/http/CommonUtils;->CAR_CLIENT_DEFAULT:Ljava/lang/String;

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const-string v0, "com.xiaopeng.action.ISF_SECURE_STORE_RELOAD"

    .line 37
    sput-object v0, Lcom/xiaopeng/lib/http/CommonUtils;->ACTION_BROADCAST_ISF_SECURE_STORE_RELOAD:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaopeng.action.SECURE_STORE_RELOAD"

    .line 39
    sput-object v0, Lcom/xiaopeng/lib/http/CommonUtils;->ACTION_BROADCAST_ISF_SECURE_STORE_RELOAD:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPreEnv()Z
    .locals 1

    .line 48
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->hasValidConfig()Z

    move-result v0

    return v0
.end method
