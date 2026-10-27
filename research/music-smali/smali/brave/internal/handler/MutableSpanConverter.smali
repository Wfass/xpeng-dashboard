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
.field final a:Lbrave/ErrorParser;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation
.end field

.field final d:I

.field final e:Lzipkin2/Endpoint;


# direct methods
.method public constructor <init>(Lbrave/ErrorParser;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 23
    iput-object p1, p0, Lbrave/internal/handler/MutableSpanConverter;->a:Lbrave/ErrorParser;

    if-eqz p2, :cond_0

    .line 25
    iput-object p2, p0, Lbrave/internal/handler/MutableSpanConverter;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lbrave/internal/handler/MutableSpanConverter;->c:Ljava/lang/String;

    .line 27
    iput p4, p0, Lbrave/internal/handler/MutableSpanConverter;->d:I

    .line 29
    invoke-static {}, Lzipkin2/Endpoint;->newBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lzipkin2/Endpoint$Builder;->serviceName(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lzipkin2/Endpoint$Builder;->ip(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lzipkin2/Endpoint$Builder;->port(I)Lzipkin2/Endpoint$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object p1

    iput-object p1, p0, Lbrave/internal/handler/MutableSpanConverter;->e:Lzipkin2/Endpoint;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "localServiceName == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "errorParser == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a(Lbrave/handler/MutableSpan;Lzipkin2/Span$Builder;)V
    .locals 7

    .line 33
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lzipkin2/Span$Builder;->name(Ljava/lang/String;)Lzipkin2/Span$Builder;

    .line 35
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->startTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->finishTimestamp()J

    move-result-wide v2

    .line 36
    invoke-virtual {p2, v0, v1}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1

    .line 37
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    .line 40
    :cond_0
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->kind()Lbrave/Span$Kind;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Lbrave/Span$Kind;->ordinal()I

    move-result v1

    invoke-static {}, Lzipkin2/Span$Kind;->values()[Lzipkin2/Span$Kind;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 42
    invoke-static {}, Lzipkin2/Span$Kind;->values()[Lzipkin2/Span$Kind;

    move-result-object v1

    invoke-virtual {v0}, Lbrave/Span$Kind;->ordinal()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {p2, v0}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 45
    :cond_1
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->localServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->localIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->localPort()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lbrave/internal/handler/MutableSpanConverter;->a(Ljava/lang/String;Ljava/lang/String;ILzipkin2/Span$Builder;)V

    .line 46
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->remoteServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->remoteIp()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 48
    :cond_2
    invoke-static {}, Lzipkin2/Endpoint;->newBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v0}, Lzipkin2/Endpoint$Builder;->serviceName(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v1}, Lzipkin2/Endpoint$Builder;->ip(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->remotePort()I

    move-result v1

    invoke-virtual {v0, v1}, Lzipkin2/Endpoint$Builder;->port(I)Lzipkin2/Endpoint$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object v0

    .line 48
    invoke-virtual {p2, v0}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    :cond_3
    const-string v0, "error"

    .line 55
    invoke-virtual {p1, v0}, Lbrave/handler/MutableSpan;->tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 56
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lbrave/internal/handler/MutableSpanConverter;->a:Lbrave/ErrorParser;

    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->error()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lbrave/ErrorParser;->error(Ljava/lang/Throwable;Lbrave/handler/MutableSpan;)V

    .line 60
    :cond_4
    sget-object v0, Lbrave/internal/handler/MutableSpanConverter$Consumer;->INSTANCE:Lbrave/internal/handler/MutableSpanConverter$Consumer;

    invoke-virtual {p1, v0, p2}, Lbrave/handler/MutableSpan;->forEachTag(Lbrave/handler/MutableSpan$TagConsumer;Ljava/lang/Object;)V

    .line 61
    sget-object v0, Lbrave/internal/handler/MutableSpanConverter$Consumer;->INSTANCE:Lbrave/internal/handler/MutableSpanConverter$Consumer;

    invoke-virtual {p1, v0, p2}, Lbrave/handler/MutableSpan;->forEachAnnotation(Lbrave/handler/MutableSpan$AnnotationConsumer;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p1}, Lbrave/handler/MutableSpan;->shared()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    :cond_5
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ILzipkin2/Span$Builder;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lbrave/internal/handler/MutableSpanConverter;->b:Ljava/lang/String;

    :cond_0
    if-nez p2, :cond_1

    .line 68
    iget-object p2, p0, Lbrave/internal/handler/MutableSpanConverter;->c:Ljava/lang/String;

    :cond_1
    if-gtz p3, :cond_2

    .line 69
    iget p3, p0, Lbrave/internal/handler/MutableSpanConverter;->d:I

    .line 70
    :cond_2
    iget-object v0, p0, Lbrave/internal/handler/MutableSpanConverter;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbrave/internal/handler/MutableSpanConverter;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    if-nez p2, :cond_4

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    iget v0, p0, Lbrave/internal/handler/MutableSpanConverter;->d:I

    if-ne v0, p3, :cond_4

    .line 73
    iget-object p1, p0, Lbrave/internal/handler/MutableSpanConverter;->e:Lzipkin2/Endpoint;

    invoke-virtual {p4, p1}, Lzipkin2/Span$Builder;->localEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    goto :goto_1

    .line 75
    :cond_4
    invoke-static {}, Lzipkin2/Endpoint;->newBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzipkin2/Endpoint$Builder;->serviceName(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lzipkin2/Endpoint$Builder;->ip(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lzipkin2/Endpoint$Builder;->port(I)Lzipkin2/Endpoint$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object p1

    invoke-virtual {p4, p1}, Lzipkin2/Span$Builder;->localEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    :goto_1
    return-void
.end method
