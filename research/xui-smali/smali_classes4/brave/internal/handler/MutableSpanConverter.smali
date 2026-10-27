.class public final Lbrave/internal/handler/MutableSpanConverter;
.super Ljava/lang/Object;
.source "MutableSpanConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/internal/handler/MutableSpanConverter$Consumer;
    }
.end annotation


# instance fields
.field final errorParser:Lbrave/ErrorParser;

.field final localEndpoint:Lzipkin2/Endpoint;

.field final localIp:Ljava/lang/String;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation
.end field

.field final localPort:I

.field final localServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbrave/ErrorParser;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "errorParser"    # Lbrave/ErrorParser;
    .param p2, "localServiceName"    # Ljava/lang/String;
    .param p3, "localIp"    # Ljava/lang/String;
    .param p4, "localPort"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-eqz p1, :cond_1

    .line 23
    iput-object p1, p0, Lbrave/internal/handler/MutableSpanConverter;->errorParser:Lbrave/ErrorParser;

    .line 24
    if-eqz p2, :cond_0

    .line 25
    iput-object p2, p0, Lbrave/internal/handler/MutableSpanConverter;->localServiceName:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lbrave/internal/handler/MutableSpanConverter;->localIp:Ljava/lang/String;

    .line 27
    iput p4, p0, Lbrave/internal/handler/MutableSpanConverter;->localPort:I

    .line 28
    nop

    .line 29
    invoke-static {}, Lzipkin2/Endpoint;->newBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzipkin2/Endpoint$Builder;->serviceName(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lzipkin2/Endpoint$Builder;->ip(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lzipkin2/Endpoint$Builder;->port(I)Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object v0

    iput-object v0, p0, Lbrave/internal/handler/MutableSpanConverter;->localEndpoint:Lzipkin2/Endpoint;

    .line 30
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localServiceName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "errorParser == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method addLocalEndpoint(Ljava/lang/String;Ljava/lang/String;ILzipkin2/Span$Builder;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param
    .param p3, "port"    # I
    .param p4, "span"    # Lzipkin2/Span$Builder;

    .line 67
    if-nez p1, :cond_0

    iget-object p1, p0, Lbrave/internal/handler/MutableSpanConverter;->localServiceName:Ljava/lang/String;

    .line 68
    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lbrave/internal/handler/MutableSpanConverter;->localIp:Ljava/lang/String;

    .line 69
    :cond_1
    if-gtz p3, :cond_2

    iget p3, p0, Lbrave/internal/handler/MutableSpanConverter;->localPort:I

    .line 70
    :cond_2
    iget-object v0, p0, Lbrave/internal/handler/MutableSpanConverter;->localServiceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbrave/internal/handler/MutableSpanConverter;->localIp:Ljava/lang/String;

    if-nez v0, :cond_3

    if-nez p2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbrave/internal/handler/MutableSpanConverter;->localIp:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    iget v0, p0, Lbrave/internal/handler/MutableSpanConverter;->localPort:I

    if-ne v0, p3, :cond_4

    .line 73
    iget-object v0, p0, Lbrave/internal/handler/MutableSpanConverter;->localEndpoint:Lzipkin2/Endpoint;

    invoke-virtual {p4, v0}, Lzipkin2/Span$Builder;->localEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    goto :goto_1

    .line 75
    :cond_4
    invoke-static {}, Lzipkin2/Endpoint;->newBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzipkin2/Endpoint$Builder;->serviceName(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzipkin2/Endpoint$Builder;->ip(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lzipkin2/Endpoint$Builder;->port(I)Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object v0

    invoke-virtual {p4, v0}, Lzipkin2/Span$Builder;->localEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    .line 77
    :goto_1
    return-void
.end method

.method convert(Lbrave/handler/MutableSpan;Lzipkin2/Span$Builder;)V
    .locals 10
    .param p1, "span"    # Lbrave/handler/MutableSpan;
    .param p2, "result"    # Lzipkin2/Span$Builder;

    .line 33
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lzipkin2/Span$Builder;->name(Ljava/lang/String;)Lzipkin2/Span$Builder;

    .line 35
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->startTimestamp()J

    move-result-wide v0

    .local v0, "start":J
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->finishTimestamp()J

    move-result-wide v2

    .line 36
    .local v2, "finish":J
    invoke-virtual {p2, v0, v1}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    .line 37
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long v4, v2, v0

    const-wide/16 v6, 0x1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    .line 40
    :cond_0
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->kind()Lbrave/Span$Kind;

    move-result-object v4

    .line 41
    .local v4, "kind":Lbrave/Span$Kind;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lbrave/Span$Kind;->ordinal()I

    move-result v5

    invoke-static {}, Lzipkin2/Span$Kind;->values()[Lzipkin2/Span$Kind;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 42
    invoke-static {}, Lzipkin2/Span$Kind;->values()[Lzipkin2/Span$Kind;

    move-result-object v5

    invoke-virtual {v4}, Lbrave/Span$Kind;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p2, v5}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 45
    :cond_1
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->localServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->localIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->localPort()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7, p2}, Lbrave/internal/handler/MutableSpanConverter;->addLocalEndpoint(Ljava/lang/String;Ljava/lang/String;ILzipkin2/Span$Builder;)V

    .line 46
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->remoteServiceName()Ljava/lang/String;

    move-result-object v5

    .local v5, "remoteServiceName":Ljava/lang/String;
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->remoteIp()Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, "remoteIp":Ljava/lang/String;
    if-nez v5, :cond_2

    if-eqz v6, :cond_3

    .line 48
    :cond_2
    invoke-static {}, Lzipkin2/Endpoint;->newBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v7

    .line 49
    invoke-virtual {v7, v5}, Lzipkin2/Endpoint$Builder;->serviceName(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object v7

    .line 50
    invoke-virtual {v7, v6}, Lzipkin2/Endpoint$Builder;->ip(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object v7

    .line 51
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->remotePort()I

    move-result v8

    invoke-virtual {v7, v8}, Lzipkin2/Endpoint$Builder;->port(I)Lzipkin2/Endpoint$Builder;

    move-result-object v7

    .line 52
    invoke-virtual {v7}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object v7

    .line 48
    invoke-virtual {p2, v7}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    .line 55
    :cond_3
    const-string v7, "error"

    invoke-virtual {p1, v7}, Lbrave/handler/MutableSpan;->tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "errorTag":Ljava/lang/String;
    if-nez v7, :cond_4

    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->error()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 57
    iget-object v8, p0, Lbrave/internal/handler/MutableSpanConverter;->errorParser:Lbrave/ErrorParser;

    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->error()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9, p1}, Lbrave/ErrorParser;->error(Ljava/lang/Throwable;Lbrave/handler/MutableSpan;)V

    .line 60
    :cond_4
    sget-object v8, Lbrave/internal/handler/MutableSpanConverter$Consumer;->INSTANCE:Lbrave/internal/handler/MutableSpanConverter$Consumer;

    invoke-virtual {p1, v8, p2}, Lbrave/handler/MutableSpan;->forEachTag(Lbrave/handler/MutableSpan$TagConsumer;Ljava/lang/Object;)V

    .line 61
    sget-object v8, Lbrave/internal/handler/MutableSpanConverter$Consumer;->INSTANCE:Lbrave/internal/handler/MutableSpanConverter$Consumer;

    invoke-virtual {p1, v8, p2}, Lbrave/handler/MutableSpan;->forEachAnnotation(Lbrave/handler/MutableSpan$AnnotationConsumer;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->shared()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    .line 63
    :cond_5
    return-void
.end method
