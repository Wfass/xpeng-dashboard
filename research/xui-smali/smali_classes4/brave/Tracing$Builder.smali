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

    .line 126
    const-string v0, "unknown"

    iput-object v0, p0, Lbrave/Tracing$Builder;->localServiceName:Ljava/lang/String;

    .line 130
    sget-object v0, Lbrave/sampler/Sampler;->ALWAYS_SAMPLE:Lbrave/sampler/Sampler;

    iput-object v0, p0, Lbrave/Tracing$Builder;->sampler:Lbrave/sampler/Sampler;

    .line 131
    invoke-static {}, Lbrave/propagation/CurrentTraceContext$Default;->inheritable()Lbrave/propagation/CurrentTraceContext;

    move-result-object v0

    iput-object v0, p0, Lbrave/Tracing$Builder;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    .line 132
    const/4 v0, 0x0

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

    .line 337
    return-void
.end method


# virtual methods
.method public addFinishedSpanHandler(Lbrave/handler/FinishedSpanHandler;)Lbrave/Tracing$Builder;
    .locals 2
    .param p1, "finishedSpanHandler"    # Lbrave/handler/FinishedSpanHandler;

    .line 322
    if-eqz p1, :cond_0

    .line 325
    iget-object v0, p0, Lbrave/Tracing$Builder;->finishedSpanHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-object p0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "finishedSpanHandler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .locals 2
    .param p1, "clock"    # Lbrave/Clock;

    .line 230
    if-eqz p1, :cond_0

    .line 231
    iput-object p1, p0, Lbrave/Tracing$Builder;->clock:Lbrave/Clock;

    .line 232
    return-object p0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "clock == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public currentTraceContext(Lbrave/propagation/CurrentTraceContext;)Lbrave/Tracing$Builder;
    .locals 2
    .param p1, "currentTraceContext"    # Lbrave/propagation/CurrentTraceContext;

    .line 256
    if-eqz p1, :cond_0

    .line 259
    iput-object p1, p0, Lbrave/Tracing$Builder;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    .line 260
    return-object p0

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "currentTraceContext == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endpoint(Lzipkin2/Endpoint;)Lbrave/Tracing$Builder;
    .locals 2
    .param p1, "endpoint"    # Lzipkin2/Endpoint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    if-eqz p1, :cond_1

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

    move-result v0

    iput v0, p0, Lbrave/Tracing$Builder;->localPort:I

    .line 194
    return-object p0

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endpoint == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public errorParser(Lbrave/ErrorParser;)Lbrave/Tracing$Builder;
    .locals 0
    .param p1, "errorParser"    # Lbrave/ErrorParser;

    .line 298
    iput-object p1, p0, Lbrave/Tracing$Builder;->errorParser:Lbrave/ErrorParser;

    .line 299
    return-object p0
.end method

.method public localIp(Ljava/lang/String;)Lbrave/Tracing$Builder;
    .locals 4
    .param p1, "localIp"    # Ljava/lang/String;

    .line 163
    invoke-static {p1}, Lbrave/internal/IpLiteral;->ipOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "maybeIp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 165
    iput-object v0, p0, Lbrave/Tracing$Builder;->localIp:Ljava/lang/String;

    .line 166
    return-object p0

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a valid IP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public localPort(I)Lbrave/Tracing$Builder;
    .locals 3
    .param p1, "localPort"    # I

    .line 176
    const v0, 0xffff

    if-gt p1, v0, :cond_1

    .line 177
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 178
    :cond_0
    iput p1, p0, Lbrave/Tracing$Builder;->localPort:I

    .line 179
    return-object p0

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid localPort "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public localServiceName(Ljava/lang/String;)Lbrave/Tracing$Builder;
    .locals 3
    .param p1, "localServiceName"    # Ljava/lang/String;

    .line 147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrave/Tracing$Builder;->localServiceName:Ljava/lang/String;

    .line 151
    return-object p0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid serviceName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public propagationFactory(Lbrave/propagation/Propagation$Factory;)Lbrave/Tracing$Builder;
    .locals 2
    .param p1, "propagationFactory"    # Lbrave/propagation/Propagation$Factory;

    .line 268
    if-eqz p1, :cond_0

    .line 269
    iput-object p1, p0, Lbrave/Tracing$Builder;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    .line 270
    return-object p0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "propagationFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sampler(Lbrave/sampler/Sampler;)Lbrave/Tracing$Builder;
    .locals 2
    .param p1, "sampler"    # Lbrave/sampler/Sampler;

    .line 242
    if-eqz p1, :cond_0

    .line 243
    iput-object p1, p0, Lbrave/Tracing$Builder;->sampler:Lbrave/sampler/Sampler;

    .line 244
    return-object p0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sampler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spanReporter(Lzipkin2/reporter/Reporter;)Lbrave/Tracing$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/reporter/Reporter<",
            "Lzipkin2/Span;",
            ">;)",
            "Lbrave/Tracing$Builder;"
        }
    .end annotation

    .line 215
    .local p1, "spanReporter":Lzipkin2/reporter/Reporter;, "Lzipkin2/reporter/Reporter<Lzipkin2/Span;>;"
    if-eqz p1, :cond_0

    .line 216
    iput-object p1, p0, Lbrave/Tracing$Builder;->spanReporter:Lzipkin2/reporter/Reporter;

    .line 217
    return-object p0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spanReporter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsJoin(Z)Lbrave/Tracing$Builder;
    .locals 0
    .param p1, "supportsJoin"    # Z

    .line 293
    iput-boolean p1, p0, Lbrave/Tracing$Builder;->supportsJoin:Z

    .line 294
    return-object p0
.end method

.method public traceId128Bit(Z)Lbrave/Tracing$Builder;
    .locals 0
    .param p1, "traceId128Bit"    # Z

    .line 275
    iput-boolean p1, p0, Lbrave/Tracing$Builder;->traceId128Bit:Z

    .line 276
    return-object p0
.end method
