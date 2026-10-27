.class public Lcom/alibaba/sdk/android/httpdns/InitConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;
    }
.end annotation


# static fields
.field public static final NOT_SET:Ljava/lang/String;

.field private static final configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/InitConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCacheTtlChanger:Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;

.field private final mDegradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

.field private final mEnableCacheIp:Z

.field private final mEnableCrashDefend:Z

.field private final mEnableDegradationLocalDns:Z

.field private final mEnableExpiredIp:Z

.field private final mEnableHttps:Z

.field private final mHostListWithFixedIp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIPRankingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotUseHttpDnsFilter:Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;

.field private final mRegion:Ljava/lang/String;

.field private final mResolveAfterNetworkChange:Z

.field private final mSdnsGlobalParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->configs:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->NOT_SET:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$000(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mEnableExpiredIp:Z

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$100(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mEnableCacheIp:Z

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$200(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mTimeout:I

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$300(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mEnableHttps:Z

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$400(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mIPRankingList:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$500(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mRegion:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$600(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mCacheTtlChanger:Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$700(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mHostListWithFixedIp:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$800(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mResolveAfterNetworkChange:Z

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$900(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mDegradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$1000(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mNotUseHttpDnsFilter:Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$1100(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mEnableCrashDefend:Z

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$1200(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mSdnsGlobalParams:Ljava/util/Map;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->access$1300(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mEnableDegradationLocalDns:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;Lcom/alibaba/sdk/android/httpdns/InitConfig$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;-><init>(Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;)V

    return-void
.end method

.method static addConfig(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/InitConfig;)V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->configs:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInitConfig(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/InitConfig;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->configs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;

    return-object p0
.end method

.method public static removeConfig(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->configs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->configs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public getCacheTtlChanger()Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mCacheTtlChanger:Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;

    return-object v0
.end method

.method public getDegradationFilter()Lcom/alibaba/sdk/android/httpdns/DegradationFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mDegradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    return-object v0
.end method

.method public getHostListWithFixedIp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mHostListWithFixedIp:Ljava/util/List;

    return-object v0
.end method

.method public getIPRankingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mIPRankingList:Ljava/util/List;

    return-object v0
.end method

.method public getNotUseHttpDnsFilter()Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mNotUseHttpDnsFilter:Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getSdnsGlobalParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mSdnsGlobalParams:Ljava/util/Map;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mTimeout:I

    return v0
.end method

.method public isEnableCacheIp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mEnableCacheIp:Z

    return v0
.end method

.method public isEnableCrashDefend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mEnableCrashDefend:Z

    return v0
.end method

.method public isEnableDegradationLocalDns()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mEnableDegradationLocalDns:Z

    return v0
.end method

.method public isEnableExpiredIp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mEnableExpiredIp:Z

    return v0
.end method

.method public isEnableHttps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mEnableHttps:Z

    return v0
.end method

.method public isResolveAfterNetworkChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/InitConfig;->mResolveAfterNetworkChange:Z

    return v0
.end method
