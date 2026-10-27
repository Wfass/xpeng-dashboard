.class public final Lbrave/internal/handler/ZipkinFinishedSpanHandler;
.super Lbrave/handler/FinishedSpanHandler;
.source "ZipkinFinishedSpanHandler.java"


# instance fields
.field final a:Lzipkin2/reporter/Reporter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/reporter/Reporter<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lbrave/internal/handler/MutableSpanConverter;


# direct methods
.method public constructor <init>(Lzipkin2/reporter/Reporter;Lbrave/ErrorParser;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
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
    invoke-direct {p0}, Lbrave/handler/FinishedSpanHandler;-><init>()V

    .line 17
    iput-object p1, p0, Lbrave/internal/handler/ZipkinFinishedSpanHandler;->a:Lzipkin2/reporter/Reporter;

    .line 18
    new-instance p1, Lbrave/internal/handler/MutableSpanConverter;

    invoke-direct {p1, p2, p3, p4, p5}, Lbrave/internal/handler/MutableSpanConverter;-><init>(Lbrave/ErrorParser;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p1, p0, Lbrave/internal/handler/ZipkinFinishedSpanHandler;->b:Lbrave/internal/handler/MutableSpanConverter;

    return-void
.end method


# virtual methods
.method public handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z
    .locals 3

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
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->debug()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, v1}, Lzipkin2/Span$Builder;->debug(Z)Lzipkin2/Span$Builder;

    .line 30
    :cond_1
    iget-object p1, p0, Lbrave/internal/handler/ZipkinFinishedSpanHandler;->b:Lbrave/internal/handler/MutableSpanConverter;

    invoke-virtual {p1, p2, v0}, Lbrave/internal/handler/MutableSpanConverter;->a(Lbrave/handler/MutableSpan;Lzipkin2/Span$Builder;)V

    .line 31
    iget-object p1, p0, Lbrave/internal/handler/ZipkinFinishedSpanHandler;->a:Lzipkin2/reporter/Reporter;

    invoke-virtual {v0}, Lzipkin2/Span$Builder;->build()Lzipkin2/Span;

    move-result-object p2

    invoke-interface {p1, p2}, Lzipkin2/reporter/Reporter;->report(Ljava/lang/Object;)V

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lbrave/internal/handler/ZipkinFinishedSpanHandler;->a:Lzipkin2/reporter/Reporter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
