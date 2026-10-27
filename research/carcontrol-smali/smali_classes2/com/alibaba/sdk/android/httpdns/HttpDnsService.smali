.class public interface abstract Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cleanHostCache(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAllByHostAsync(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHttpDnsResultForHostAsync(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHttpDnsResultForHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHttpDnsResultForHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHttpDnsResultForHostAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHttpDnsResultForHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V
.end method

.method public abstract getHttpDnsResultForHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V
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
.end method

.method public abstract getHttpDnsResultForHostSync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
.end method

.method public abstract getHttpDnsResultForHostSync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
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
.end method

.method public abstract getHttpDnsResultForHostSyncNonBlocking(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
.end method

.method public abstract getHttpDnsResultForHostSyncNonBlocking(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
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
.end method

.method public abstract getIPv4ForHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIPv4ListForHostAsync(Ljava/lang/String;)[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIPv6ByHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIPv6ForHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIPv6ListForHostASync(Ljava/lang/String;)[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIPv6sByHostAsync(Ljava/lang/String;)[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIpsByHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIpsByHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIpsByHostAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIpsByHostAsync(Ljava/lang/String;)[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract setAuthCurrentTime(J)V
.end method

.method public abstract setPreResolveHosts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPreResolveHosts(Ljava/util/List;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)V
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
.end method

.method public abstract setRegion(Lcom/alibaba/sdk/android/httpdns/Region;)V
.end method

.method public abstract setRegion(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
