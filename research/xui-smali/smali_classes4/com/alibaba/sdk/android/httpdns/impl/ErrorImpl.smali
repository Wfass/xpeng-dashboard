.class public Lcom/alibaba/sdk/android/httpdns/impl/ErrorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
.implements Lcom/alibaba/sdk/android/httpdns/SyncService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanHostCache(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getAllByHostAsync(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0

    const-string p1, "init error"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public getByHost(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0

    const-string p1, "init error"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public getHttpDnsResultForHostAsync(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public getHttpDnsResultForHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public getHttpDnsResultForHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public getHttpDnsResultForHostAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public getHttpDnsResultForHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V
    .locals 0

    return-void
.end method

.method public getHttpDnsResultForHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public getHttpDnsResultForHostSync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public getHttpDnsResultForHostSync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public getHttpDnsResultForHostSyncNonBlocking(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public getHttpDnsResultForHostSyncNonBlocking(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public getIPv4ForHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIPv4ListForHostAsync(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getIPv6ByHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "init error"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIPv6ForHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIPv6ListForHostASync(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getIPv6sByHostAsync(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    const-string p1, "init error"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "init error"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIpsByHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public getIpsByHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    const-string p1, "init error"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public getIpsByHostAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    const-string p1, "init error"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public getIpsByHostAsync(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    const-string p1, "init error"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setAuthCurrentTime(J)V
    .locals 0

    return-void
.end method

.method public setPreResolveHosts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setPreResolveHosts(Ljava/util/List;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setRegion(Lcom/alibaba/sdk/android/httpdns/Region;)V
    .locals 0

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
