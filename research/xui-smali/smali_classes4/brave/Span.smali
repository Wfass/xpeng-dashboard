.class public abstract Lbrave/Span;
.super Ljava/lang/Object;
.source "Span.java"

# interfaces
.implements Lbrave/SpanCustomizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/Span$Kind;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method


# virtual methods
.method public abstract abandon()V
.end method

.method public abstract annotate(JLjava/lang/String;)Lbrave/Span;
.end method

.method public abstract annotate(Ljava/lang/String;)Lbrave/Span;
.end method

.method public bridge synthetic annotate(Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lbrave/Span;->annotate(Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    return-object p1
.end method

.method public abstract context()Lbrave/propagation/TraceContext;
.end method

.method public abstract customizer()Lbrave/SpanCustomizer;
.end method

.method public abstract error(Ljava/lang/Throwable;)Lbrave/Span;
.end method

.method public abstract finish()V
.end method

.method public abstract finish(J)V
.end method

.method public abstract flush()V
.end method

.method public abstract isNoop()Z
.end method

.method public abstract kind(Lbrave/Span$Kind;)Lbrave/Span;
.end method

.method public abstract name(Ljava/lang/String;)Lbrave/Span;
.end method

.method public bridge synthetic name(Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lbrave/Span;->name(Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    return-object p1
.end method

.method public remoteEndpoint(Lzipkin2/Endpoint;)Lbrave/Span;
    .locals 2
    .param p1, "endpoint"    # Lzipkin2/Endpoint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    if-nez p1, :cond_0

    return-object p0

    .line 123
    :cond_0
    invoke-virtual {p1}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbrave/Span;->remoteServiceName(Ljava/lang/String;)Lbrave/Span;

    .line 124
    :cond_1
    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "ip":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lzipkin2/Endpoint;->portAsInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lbrave/Span;->remoteIpAndPort(Ljava/lang/String;I)Z

    .line 126
    return-object p0
.end method

.method public abstract remoteIpAndPort(Ljava/lang/String;I)Z
    .param p1    # Ljava/lang/String;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param
.end method

.method public abstract remoteServiceName(Ljava/lang/String;)Lbrave/Span;
.end method

.method public abstract start()Lbrave/Span;
.end method

.method public abstract start(J)Lbrave/Span;
.end method

.method public abstract tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;
.end method

.method public bridge synthetic tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    return-object p1
.end method
