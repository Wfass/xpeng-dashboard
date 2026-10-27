.class public final Lbrave/Tracing$Builder;
.super Ljava/lang/Object;
.source "Tracing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/Tracing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field clock:Lbrave/Clock;

.field currentTraceContext:Lbrave/propagation/CurrentTraceContext;

.field errorParser:Lbrave/ErrorParser;

.field finishedSpanHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbrave/handler/FinishedSpanHandler;",
            ">;"
        }
    .end annotation
.end field

.field localIp:Ljava/lang/String;

.field localPort:I

.field localServiceName:Ljava/lang/String;

.field propagationFactory:Lbrave/propagation/Propagation$Factory;

.field sampler:Lbrave/sampler/Sampler;

.field spanReporter:Lzipkin2/reporter/Reporter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/reporter/Reporter<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation
.end field

.field supportsJoin:Z

.field traceId128Bit:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "unknown"

    .line 126
    iput-object v0, p0, Lbrave/Tracing$Builder;->localServiceName:Ljava/lang/String;

    .line 130
    sget-object v0, Lbrave/sampler/Sampler;->ALWAYS_SAMPLE:Lbrave/sampler/Sampler;

    iput-object v0, p0, Lbrave/Tracing$Builder;->sampler:Lbrave/sampler/Sampler;

    .line 131
    invoke-static {}, Lbrave/propagation/CurrentTraceContext$Default;->inheritable()Lbrave/propagation/CurrentTraceContext;

    move-result-object v0

    iput-object v0, p0, Lbrave/Tracing$Builder;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lbrave/Tracing$Builder;->traceId128Bit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbrave/Tracing$Builder;->supportsJoin:Z

    .line 133
    sget-object v0, Lbrave/propagation/B3Propagation;->FACTORY:Lbrave/propagation/Propagation$Factory;

    iput-object v0, p0, Lbrave/Tracing$Builder;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    .line 134
    new-instance v0, Lbrave/ErrorParser;

    invoke-direct {v0}, Lbrave/ErrorParser;-><init>()V

    iput-object v0, p0, Lbrave/Tracing$Builder;->errorParser:Lbrave/ErrorParser;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrave/Tracing$Builder;->finishedSpanHandlers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFinishedSpanHandler(Lbrave/handler/FinishedSpanHandler;)Lbrave/Tracing$Builder;
    .locals 1

    const-string v0, "finishedSpanHandler == null"

    .line 323
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lbrave/Tracing$Builder;->finishedSpanHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lbrave/Tracing;
    .locals 1

    .line 330
    iget-object v0, p0, Lbrave/Tracing$Builder;->clock:Lbrave/Clock;

    if-nez v0, :cond_0

    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/internal/Platform;->clock()Lbrave/Clock;

    move-result-object v0

    iput-object v0, p0, Lbrave/Tracing$Builder;->clock:Lbrave/Clock;

    .line 331
    :cond_0
    iget-object v0, p0, Lbrave/Tracing$Builder;->localIp:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/internal/Platform;->linkLocalIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrave/Tracing$Builder;->localIp:Ljava/lang/String;

    .line 332
    :cond_1
    iget-object v0, p0, Lbrave/Tracing$Builder;->spanReporter:Lzipkin2/reporter/Reporter;

    if-nez v0, :cond_2

    new-instance v0, Lbrave/Tracing$LoggingReporter;

    invoke-direct {v0}, Lbrave/Tracing$LoggingReporter;-><init>()V

    iput-object v0, p0, Lbrave/Tracing$Builder;->spanReporter:Lzipkin2/reporter/Reporter;

    .line 333
    :cond_2
    new-instance v0, Lbrave/Tracing$Default;

    invoke-direct {v0, p0}, Lbrave/Tracing$Default;-><init>(Lbrave/Tracing$Builder;)V

    return-object v0
.end method

.method public clock(Lbrave/Clock;)Lbrave/Tracing$Builder;
    .locals 1

    const-string v0, "clock == null"

    .line 230
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    iput-object p1, p0, Lbrave/Tracing$Builder;->clock:Lbrave/Clock;

    return-object p0
.end method

.method public currentTraceContext(Lbrave/propagation/CurrentTraceContext;)Lbrave/Tracing$Builder;
    .locals 1

    const-string v0, "currentTraceContext == null"

    .line 257
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    iput-object p1, p0, Lbrave/Tracing$Builder;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    return-object p0
.end method

.method public endpoint(Lzipkin2/Endpoint;)Lbrave/Tracing$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "endpoint == null"

    .line 190
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p1}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrave/Tracing$Builder;->localServiceName:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbrave/Tracing$Builder;->localIp:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Lzipkin2/Endpoint;->portAsInt()I

    move-result p1

    iput p1, p0, Lbrave/Tracing$Builder;->localPort:I

    return-object p0
.end method

.method public errorParser(Lbrave/ErrorParser;)Lbrave/Tracing$Builder;
    .locals 0

    .line 298
    iput-object p1, p0, Lbrave/Tracing$Builder;->errorParser:Lbrave/ErrorParser;

    return-object p0
.end method

.method public localIp(Ljava/lang/String;)Lbrave/Tracing$Builder;
    .locals 2

    .line 163
    invoke-static {p1}, Lbrave/internal/IpLiteral;->ipOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iput-object v0, p0, Lbrave/Tracing$Builder;->localIp:Ljava/lang/String;

    return-object p0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a valid IP"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public localPort(I)Lbrave/Tracing$Builder;
    .locals 3

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 178
    :cond_0
    iput p1, p0, Lbrave/Tracing$Builder;->localPort:I

    return-object p0

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid localPort "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public localServiceName(Ljava/lang/String;)Lbrave/Tracing$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbrave/Tracing$Builder;->localServiceName:Ljava/lang/String;

    return-object p0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a valid serviceName"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public propagationFactory(Lbrave/propagation/Propagation$Factory;)Lbrave/Tracing$Builder;
    .locals 1

    const-string v0, "propagationFactory == null"

    .line 268
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 269
    iput-object p1, p0, Lbrave/Tracing$Builder;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    return-object p0
.end method

.method public sampler(Lbrave/sampler/Sampler;)Lbrave/Tracing$Builder;
    .locals 1

    const-string/jumbo v0, "sampler == null"

    .line 242
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 243
    iput-object p1, p0, Lbrave/Tracing$Builder;->sampler:Lbrave/sampler/Sampler;

    return-object p0
.end method

.method public spanReporter(Lzipkin2/reporter/Reporter;)Lbrave/Tracing$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/reporter/Reporter<",
            "Lzipkin2/Span;",
            ">;)",
            "Lbrave/Tracing$Builder;"
        }
    .end annotation

    const-string/jumbo v0, "spanReporter == null"

    .line 215
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    iput-object p1, p0, Lbrave/Tracing$Builder;->spanReporter:Lzipkin2/reporter/Reporter;

    return-object p0
.end method

.method public supportsJoin(Z)Lbrave/Tracing$Builder;
    .locals 0

    .line 293
    iput-boolean p1, p0, Lbrave/Tracing$Builder;->supportsJoin:Z

    return-object p0
.end method

.method public traceId128Bit(Z)Lbrave/Tracing$Builder;
    .locals 0

    .line 275
    iput-boolean p1, p0, Lbrave/Tracing$Builder;->traceId128Bit:Z

    return-object p0
.end method
