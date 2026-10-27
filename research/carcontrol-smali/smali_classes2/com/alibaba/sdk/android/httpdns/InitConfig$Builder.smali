.class public Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/httpdns/InitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cacheTtlChanger:Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;

.field private degradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

.field private enableCacheIp:Z

.field private enableCrashDefend:Z

.field private enableDegradationLocalDns:Z

.field private enableExpiredIp:Z

.field private enableHttps:Z

.field private hostListWithFixedIp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ipRankingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;",
            ">;"
        }
    .end annotation
.end field

.field private notUseHttpDnsFilter:Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;

.field private region:Ljava/lang/String;

.field private resolveAfterNetworkChange:Z

.field private sdnsGlobalParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableExpiredIp:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableCacheIp:Z

    const/16 v2, 0x7d0

    iput v2, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->timeout:I

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableDegradationLocalDns:Z

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableHttps:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->ipRankingList:Ljava/util/List;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/InitConfig;->NOT_SET:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->region:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->cacheTtlChanger:Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;

    iput-object v2, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->hostListWithFixedIp:Ljava/util/List;

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->resolveAfterNetworkChange:Z

    iput-object v2, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->degradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    iput-object v2, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->notUseHttpDnsFilter:Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableCrashDefend:Z

    iput-object v2, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->sdnsGlobalParams:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableExpiredIp:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableCacheIp:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->notUseHttpDnsFilter:Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableCrashDefend:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->sdnsGlobalParams:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableDegradationLocalDns:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->timeout:I

    return p0
.end method

.method static synthetic access$300(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableHttps:Z

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->ipRankingList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->region:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->cacheTtlChanger:Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->hostListWithFixedIp:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->resolveAfterNetworkChange:Z

    return p0
.end method

.method static synthetic access$900(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Lcom/alibaba/sdk/android/httpdns/DegradationFilter;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->degradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/alibaba/sdk/android/httpdns/InitConfig;
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/InitConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;-><init>(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;Lcom/alibaba/sdk/android/httpdns/InitConfig$a;)V

    return-object v0
.end method

.method public buildFor(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/InitConfig;
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/InitConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;-><init>(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;Lcom/alibaba/sdk/android/httpdns/InitConfig$a;)V

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->addConfig(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/InitConfig;)V

    return-object v0
.end method

.method public configCacheTtlChanger(Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->cacheTtlChanger:Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;

    return-object p0
.end method

.method public configHostWithFixedIp(Ljava/util/List;)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->hostListWithFixedIp:Ljava/util/List;

    return-object p0
.end method

.method public enableCrashDefend(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableCrashDefend:Z

    return-object p0
.end method

.method public setDegradationFilter(Lcom/alibaba/sdk/android/httpdns/DegradationFilter;)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->degradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    return-object p0
.end method

.method public setEnableCacheIp(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableCacheIp:Z

    return-object p0
.end method

.method public setEnableDegradationLocalDns(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableDegradationLocalDns:Z

    return-object p0
.end method

.method public setEnableExpiredIp(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableExpiredIp:Z

    return-object p0
.end method

.method public setEnableHttps(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->enableHttps:Z

    return-object p0
.end method

.method public setIPRankingList(Ljava/util/List;)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;",
            ">;)",
            "Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->ipRankingList:Ljava/util/List;

    return-object p0
.end method

.method public setNotUseHttpDnsFilter(Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->notUseHttpDnsFilter:Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;

    return-object p0
.end method

.method public setPreResolveAfterNetworkChanged(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->resolveAfterNetworkChange:Z

    return-object p0
.end method

.method public setRegion(Lcom/alibaba/sdk/android/httpdns/Region;)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/Region;->getRegion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->region:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->region:Ljava/lang/String;

    return-object p0
.end method

.method public setSdnsGlobalParams(Ljava/util/Map;)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->sdnsGlobalParams:Ljava/util/Map;

    return-object p0
.end method

.method public setTimeout(I)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->timeout:I

    return-object p0
.end method

.method public setTimeoutMillis(I)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->timeout:I

    return-object p0
.end method
