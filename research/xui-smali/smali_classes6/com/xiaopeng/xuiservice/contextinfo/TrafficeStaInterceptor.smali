.class public Lcom/xiaopeng/xuiservice/contextinfo/TrafficeStaInterceptor;
.super Ljava/lang/Object;
.source "TrafficeStaInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final PACKNAME:Ljava/lang/String; = "com.xiaopeng.xuiservice"

.field private static final TAG:Ljava/lang/String; = "TrafficeStaInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "TrafficeStaInterceptor"

    const-string v1, "new TrafficeStaInterceptor"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method private static setTraficInfo()V
    .locals 6

    .line 27
    const v0, 0x186a5

    .line 28
    .local v0, "uid":I
    const v1, -0xf90001

    .line 29
    .local v1, "tag":I
    invoke-static {v1}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v2

    .line 30
    .local v2, "oldTag":I
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 31
    const-string v3, "TrafficeStaInterceptor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTraficInfo:\t uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/TrafficeStaInterceptor;->setTraficInfo()V

    .line 22
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
