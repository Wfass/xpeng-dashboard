.class final Lzipkin2/internal/Trace$EndpointTracker;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EndpointTracker"
.end annotation


# instance fields
.field ipv4:Ljava/lang/String;

.field ipv6:Ljava/lang/String;

.field port:I

.field serviceName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method tryMerge(Lzipkin2/Endpoint;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 174
    :cond_0
    iget-object v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->serviceName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {p1}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->serviceName:Ljava/lang/String;

    invoke-virtual {p1}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 178
    :cond_1
    iget-object v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->ipv4:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->ipv4:Ljava/lang/String;

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 181
    :cond_2
    iget-object v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->ipv6:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->ipv6:Ljava/lang/String;

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 184
    :cond_3
    iget v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->port:I

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lzipkin2/Endpoint;->portAsInt()I

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->port:I

    invoke-virtual {p1}, Lzipkin2/Endpoint;->portAsInt()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 187
    :cond_4
    iget-object v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->serviceName:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->serviceName:Ljava/lang/String;

    .line 188
    :cond_5
    iget-object v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->ipv4:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->ipv4:Ljava/lang/String;

    .line 189
    :cond_6
    iget-object v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->ipv6:Ljava/lang/String;

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->ipv6:Ljava/lang/String;

    .line 190
    :cond_7
    iget v1, p0, Lzipkin2/internal/Trace$EndpointTracker;->port:I

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lzipkin2/Endpoint;->portAsInt()I

    move-result p1

    iput p1, p0, Lzipkin2/internal/Trace$EndpointTracker;->port:I

    :cond_8
    return v0
.end method
