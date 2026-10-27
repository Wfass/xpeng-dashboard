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
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:Lzipkin2/reporter/Reporter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/reporter/Reporter<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation
.end field

.field e:Lbrave/Clock;

.field f:Lbrave/sampler/Sampler;

.field g:Lbrave/propagation/CurrentTraceContext;

.field h:Z

.field i:Z

.field j:Lbrave/propagation/Propagation$Factory;

.field k:Lbrave/ErrorParser;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbrave/handler/FinishedSpanHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    .line 126
    iput-object v0, p0, Lbrave/Tracing$Builder;->a:Ljava/lang/String;

    .line 130
    sget-object v0, Lbrave/sampler/Sampler;->ALWAYS_SAMPLE:Lbrave/sampler/Sampler;

    iput-object v0, p0, Lbrave/Tracing$Builder;->f:Lbrave/sampler/Sampler;

    .line 131
    invoke-static {}, Lbrave/propagation/CurrentTraceContext$Default;->inheritable()Lbrave/propagation/CurrentTraceContext;

    move-result-object v0

    iput-object v0, p0, Lbrave/Tracing$Builder;->g:Lbrave/propagation/CurrentTraceContext;

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lbrave/Tracing$Builder;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbrave/Tracing$Builder;->i:Z

    .line 133
    sget-object v0, Lbrave/propagation/B3Propagation;->FACTORY:Lbrave/propagation/Propagation$Factory;

    iput-object v0, p0, Lbrave/Tracing$Builder;->j:Lbrave/propagation/Propagation$Factory;

    .line 134
    new-instance v0, Lbrave/ErrorParser;

    invoke-direct {v0}, Lbrave/ErrorParser;-><init>()V

    iput-object v0, p0, Lbrave/Tracing$Builder;->k:Lbrave/ErrorParser;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrave/Tracing$Builder;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFinishedSpanHandler(Lbrave/handler/FinishedSpanHandler;)Lbrave/Tracing$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 325
    iget-object v0, p0, Lbrave/Tracing$Builder;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 323
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "finishedSpanHandler == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lbrave/Tracing;
    .locals 1

    .line 330
    iget-object v0, p0, Lbrave/Tracing$Builder;->e:Lbrave/Clock;

    if-nez v0, :cond_0

    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/internal/Platform;->clock()Lbrave/Clock;

    move-result-object v0

    iput-object v0, p0, Lbrave/Tracing$Builder;->e:Lbrave/Clock;

    .line 331
    :cond_0
    iget-object v0, p0, Lbrave/Tracing$Builder;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/internal/Platform;->linkLocalIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrave/Tracing$Builder;->b:Ljava/lang/String;

    .line 332
    :cond_1
    iget-object v0, p0, Lbrave/Tracing$Builder;->d:Lzipkin2/reporter/Reporter;

    if-nez v0, :cond_2

    new-instance v0, Lbrave/Tracing$LoggingReporter;

    invoke-direct {v0}, Lbrave/Tracing$LoggingReporter;-><init>()V

    iput-object v0, p0, Lbrave/Tracing$Builder;->d:Lzipkin2/reporter/Reporter;

    .line 333
    :cond_2
    new-instance v0, Lbrave/Tracing$Default;

    invoke-direct {v0, p0}, Lbrave/Tracing$Default;-><init>(Lbrave/Tracing$Builder;)V

    return-object v0
.end method

.method public clock(Lbrave/Clock;)Lbrave/Tracing$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 231
    iput-object p1, p0, Lbrave/Tracing$Builder;->e:Lbrave/Clock;

    return-object p0

    .line 230
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "clock == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public currentTraceContext(Lbrave/propagation/CurrentTraceContext;)Lbrave/Tracing$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 259
    iput-object p1, p0, Lbrave/Tracing$Builder;->g:Lbrave/propagation/CurrentTraceContext;

    return-object p0

    .line 257
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "currentTraceContext == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endpoint(Lzipkin2/Endpoint;)Lbrave/Tracing$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrave/Tracing$Builder;->a:Ljava/lang/String;

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
    iput-object v0, p0, Lbrave/Tracing$Builder;->b:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Lzipkin2/Endpoint;->portAsInt()I

    move-result p1

    iput p1, p0, Lbrave/Tracing$Builder;->c:I

    return-object p0

    .line 190
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "endpoint == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public errorParser(Lbrave/ErrorParser;)Lbrave/Tracing$Builder;
    .locals 0

    .line 298
    iput-object p1, p0, Lbrave/Tracing$Builder;->k:Lbrave/ErrorParser;

    return-object p0
.end method

.method public localIp(Ljava/lang/String;)Lbrave/Tracing$Builder;
    .locals 2

    .line 163
    invoke-static {p1}, Lbrave/internal/IpLiteral;->ipOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iput-object v0, p0, Lbrave/Tracing$Builder;->b:Ljava/lang/String;

    return-object p0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid IP"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    iput p1, p0, Lbrave/Tracing$Builder;->c:I

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

    iput-object p1, p0, Lbrave/Tracing$Builder;->a:Ljava/lang/String;

    return-object p0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid serviceName"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public propagationFactory(Lbrave/propagation/Propagation$Factory;)Lbrave/Tracing$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 269
    iput-object p1, p0, Lbrave/Tracing$Builder;->j:Lbrave/propagation/Propagation$Factory;

    return-object p0

    .line 268
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "propagationFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sampler(Lbrave/sampler/Sampler;)Lbrave/Tracing$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 243
    iput-object p1, p0, Lbrave/Tracing$Builder;->f:Lbrave/sampler/Sampler;

    return-object p0

    .line 242
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sampler == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz p1, :cond_0

    .line 216
    iput-object p1, p0, Lbrave/Tracing$Builder;->d:Lzipkin2/reporter/Reporter;

    return-object p0

    .line 215
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "spanReporter == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public supportsJoin(Z)Lbrave/Tracing$Builder;
    .locals 0

    .line 293
    iput-boolean p1, p0, Lbrave/Tracing$Builder;->i:Z

    return-object p0
.end method

.method public traceId128Bit(Z)Lbrave/Tracing$Builder;
    .locals 0

    .line 275
    iput-boolean p1, p0, Lbrave/Tracing$Builder;->h:Z

    return-object p0
.end method
