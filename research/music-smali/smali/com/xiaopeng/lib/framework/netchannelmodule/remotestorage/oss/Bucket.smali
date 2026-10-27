.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;
.super Ljava/lang/Object;
.source "Bucket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CanBucket;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CduBucket;
    }
.end annotation


# static fields
.field public static BUCKET_AND_ENDPOINT:Ljava/lang/String; = null

.field public static BUCKET_AND_ENDPOINT_PRIVATE:Ljava/lang/String; = null

.field public static END_POINT:Ljava/lang/String; = null

.field public static final END_POINT_DOMAIN:Ljava/lang/String; = "oss-cn-hangzhou.aliyuncs.com/"

.field public static final END_POINT_DOMAIN_INT:Ljava/lang/String; = "oss-eu-central-1.aliyuncs.com/"

.field public static final END_POINT_DOMAIN_PRIVATE:Ljava/lang/String; = "oss.xiaopeng.com/"

.field public static END_POINT_PRIVATE:Ljava/lang/String; = null

.field private static final MAX_LOG_LENGTH:J = 0x1400000L

.field private static final SCHEMA:Ljava/lang/String; = "https://"

.field public static SECURE_TOKEN_URL_V5:Ljava/lang/String;

.field public static TOKEN_URL_V5:Ljava/lang/String;


# instance fields
.field private mPrivateUrl:Ljava/lang/String;

.field private mRootName:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_BUSINESS_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v5/aliyun/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->TOKEN_URL_V5:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_BUSINESS_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v5/authHub/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->SECURE_TOKEN_URL_V5:Ljava/lang/String;

    const-string v0, "https://oss-cn-hangzhou.aliyuncs.com/"

    .line 23
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->END_POINT:Ljava/lang/String;

    const-string v0, "https://%s.oss-cn-hangzhou.aliyuncs.com/"

    .line 24
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->BUCKET_AND_ENDPOINT:Ljava/lang/String;

    const-string v0, "https://oss.xiaopeng.com/"

    .line 30
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->END_POINT_PRIVATE:Ljava/lang/String;

    const-string v0, "https://%s.oss.xiaopeng.com/"

    .line 31
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->BUCKET_AND_ENDPOINT_PRIVATE:Ljava/lang/String;

    .line 40
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getVersionInCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Bucket"

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getVersionInCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", international = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v0, "https://xmart-eu.xiaopeng.com/biz/v5/aliyun/token"

    .line 44
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->TOKEN_URL_V5:Ljava/lang/String;

    const-string v0, "https://oss-eu-central-1.aliyuncs.com/"

    .line 45
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->END_POINT:Ljava/lang/String;

    const-string v0, "https://%s.oss-eu-central-1.aliyuncs.com/"

    .line 46
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->BUCKET_AND_ENDPOINT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mRootName:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->BUCKET_AND_ENDPOINT:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mUrl:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->BUCKET_AND_ENDPOINT_PRIVATE:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mPrivateUrl:Ljava/lang/String;

    return-void
.end method

.method public static get(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;
    .locals 2

    .line 54
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$1;->$SwitchMap$com$xiaopeng$lib$framework$moduleinterface$netchannelmodule$remotestorage$IRemoteStorage$CATEGORY:[I

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 59
    new-instance p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CduBucket;

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CduBucket;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$1;)V

    return-object p0

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Wrong bucket was specified!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_1
    new-instance p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CanBucket;

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CanBucket;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$1;)V

    return-object p0
.end method

.method public static getVersionInCountryCode()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v1, "ro.xiaopeng.software"

    .line 128
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    const/4 v0, 0x7

    .line 130
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public generateObjectKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mRootName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/DateUtils;->formatDate7(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVehicleId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ".zip"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaxObjectSize()J
    .locals 2

    const-wide/32 v0, 0x1400000

    return-wide v0
.end method

.method public getPrivateUrl()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mPrivateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRootName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mRootName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mUrl:Ljava/lang/String;

    return-object v0
.end method
