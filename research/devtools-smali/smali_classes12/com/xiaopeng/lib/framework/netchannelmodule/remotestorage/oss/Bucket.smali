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

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->Xb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v5/aliyun/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->TOKEN_URL_V5:Ljava/lang/String;

    .line 22
    const-string v0, "https://oss-cn-hangzhou.aliyuncs.com/"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->END_POINT:Ljava/lang/String;

    .line 23
    const-string v0, "https://%s.oss-cn-hangzhou.aliyuncs.com/"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->BUCKET_AND_ENDPOINT:Ljava/lang/String;

    .line 29
    const-string v0, "https://oss.xiaopeng.com/"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->END_POINT_PRIVATE:Ljava/lang/String;

    .line 30
    const-string v0, "https://%s.oss.xiaopeng.com/"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->BUCKET_AND_ENDPOINT_PRIVATE:Ljava/lang/String;

    .line 39
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getVersionInCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 40
    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Bucket"

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

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    if-eqz v0, :cond_0

    .line 43
    const-string v0, "https://xmart-eu.xiaopeng.com/biz/v5/aliyun/token"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->TOKEN_URL_V5:Ljava/lang/String;

    .line 44
    const-string v0, "https://oss-eu-central-1.aliyuncs.com/"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->END_POINT:Ljava/lang/String;

    .line 45
    const-string v0, "https://%s.oss-eu-central-1.aliyuncs.com/"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->BUCKET_AND_ENDPOINT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mRootName:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->BUCKET_AND_ENDPOINT:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mUrl:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->BUCKET_AND_ENDPOINT_PRIVATE:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mPrivateUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static get(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;
    .locals 1

    .line 53
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$1;->$SwitchMap$com$xiaopeng$lib$framework$moduleinterface$netchannelmodule$remotestorage$IRemoteStorage$CATEGORY:[I

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 61
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Wrong bucket was specified!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :pswitch_0
    new-instance p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CduBucket;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CduBucket;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$1;)V

    return-object p0

    .line 55
    :pswitch_1
    new-instance p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CanBucket;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CanBucket;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$1;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVersionInCountryCode()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 129
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 130
    return-object v0

    .line 132
    :cond_0
    return-object v0
.end method


# virtual methods
.method public generateObjectKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mRootName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->getSystemVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/a;->n(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->ln()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ".zip"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    return-object p1
.end method

.method public getMaxObjectSize()J
    .locals 2

    .line 87
    const-wide/32 v0, 0x1400000

    return-wide v0
.end method

.method public getPrivateUrl()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mPrivateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRootName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mRootName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->mUrl:Ljava/lang/String;

    return-object v0
.end method
