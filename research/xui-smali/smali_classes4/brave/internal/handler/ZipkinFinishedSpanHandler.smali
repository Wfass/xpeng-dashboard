.class public final Lbrave/internal/handler/ZipkinFinishedSpanHandler;
.super Lbrave/handler/FinishedSpanHandler;
.source "ZipkinFinishedSpanHandler.java"


# instance fields
.field final converter:Lbrave/internal/handler/MutableSpanConverter;

.field final spanReporter:Lzipkin2/reporter/Reporter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/reporter/Reporter<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzipkin2/reporter/Reporter;Lbrave/ErrorParser;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p2, "errorParser"    # Lbrave/ErrorParser;
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "ip"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/reporter/Reporter<",
            "Lzipkin2/Span;",
            ">;",
            "Lbrave/ErrorParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 16
    .local p1, "spanReporter":Lzipkin2/reporter/Reporter;, "Lzipkin2/reporter/Reporter<Lzipkin2/Span;>;"
    invoke-direct {p0}, Lbrave/handler/FinishedSpanHandler;-><init>()V

    .line 17
    iput-object p1, p0, Lbrave/internal/handler/ZipkinFinishedSpanHandler;->spanReporter:Lzipkin2/reporter/Reporter;

    .line 18
    new-instance v0, Lbrave/internal/handler/MutableSpanConverter;

    invoke-direct {v0, p2, p3, p4, p5}, Lbrave/internal/handler/MutableSpanConverter;-><init>(Lbrave/ErrorParser;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lbrave/internal/handler/ZipkinFinishedSpanHandler;->converter:Lbrave/internal/handler/MutableSpanConverter;

    .line 19
    return-void
.end method


# virtual methods
.method public handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z
    .locals 4
    .param p1, "context"    # Lbrave/propagation/TraceContext;
    .param p2, "span"    # Lbrave/handler/MutableSpan;

    .line 22
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->sampled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 24
    :cond_0
    invoke-static {}, Lzipkin2/Span;->newBuilder()Lzipkin2/Span$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzipkin2/Span$Builder;->traceId(Ljava/lang/String;)Lzipkin2/Span$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->parentIdString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzipkin2/Span$Builder;->parentId(Ljava/lang/String;)Lzipkin2/Span$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->spanIdString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzipkin2/Span$Builder;->id(Ljava/lang/String;)Lzipkin2/Span$Builder;

    move-result-object v0

    .line 28
    .local v0, "builderWithContextData":Lzipkin2/Span$Builder;
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->debug()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lzipkin2/Span$Builder;->debug(Z)Lzipkin2/Span$Builder;

    .line 30
    :cond_1
    iget-object v2, p0, Lbrave/internal/handler/ZipkinFinishedSpanHandler;->converter:Lbrave/internal/handler/MutableSpanConverter;

    invoke-virtual {v2, p2, v0}, Lbrave/internal/handler/MutableSpanConverter;->convert(Lbrave/handler/MutableSpan;Lzipkin2/Span$Builder;)V

    .line 31
    iget-object v2, p0, Lbrave/internal/handler/ZipkinFinishedSpanHandler;->spanReporter:Lzipkin2/reporter/Reporter;

    invoke-virtual {v0}, Lzipkin2/Span$Builder;->build()Lzipkin2/Span;

    move-result-object v3

    invoke-interface {v2, v3}, Lzipkin2/reporter/Reporter;->report(Ljava/lang/Object;)V

    .line 32
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lbrave/internal/handler/ZipkinFinishedSpanHandler;->spanReporter:Lzipkin2/reporter/Reporter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
