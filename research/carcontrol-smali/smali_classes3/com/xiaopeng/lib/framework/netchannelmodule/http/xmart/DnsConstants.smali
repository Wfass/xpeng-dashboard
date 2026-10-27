.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/DnsConstants;
.super Ljava/lang/Object;
.source "DnsConstants.java"


# static fields
.field public static final HTTP_DNS_APP_NAME:Ljava/lang/String; = "appname"

.field public static final HTTP_DNS_APP_VERSION:Ljava/lang/String; = "appversion"

.field public static final HTTP_DNS_CDU_ID:Ljava/lang/String; = "cduid"

.field public static final HTTP_DNS_ICCID:Ljava/lang/String; = "iccid"

.field public static final HTTP_DNS_OS_TYPE:Ljava/lang/String; = "ostype"

.field public static final HTTP_DNS_OS_VERSION:Ljava/lang/String; = "osversion"

.field public static final HTTP_DNS_OS_XMART:Ljava/lang/String; = "xmartos"

.field public static final HTTP_DNS_UID:Ljava/lang/String; = "uid"

.field public static final HTTP_DNS_VIN:Ljava/lang/String; = "vin"

.field public static final LOCAL_DNS_DOWNGRADE_INTERFACE:Ljava/lang/String;

.field public static final LOCAL_DNS_HOST:Ljava/lang/String; = "d"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://httpdns-extender-pre.xiaopeng.com/local"

    goto :goto_0

    :cond_0
    const-string v0, "https://httpdns.xiaopeng.com/local"

    :goto_0
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/DnsConstants;->LOCAL_DNS_DOWNGRADE_INTERFACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
