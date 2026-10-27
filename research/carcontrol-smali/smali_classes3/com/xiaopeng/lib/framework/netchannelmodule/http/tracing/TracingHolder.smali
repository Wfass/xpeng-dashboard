.class Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;
.super Ljava/lang/Object;
.source "TracingHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder$HOLDER;
    }
.end annotation


# static fields
.field private static final DEFAULT_SAMPLE_RATE:F = 0.1f

.field private static final KEY_SAMPLE_RATE:Ljava/lang/String; = "logan_sample_rate"

.field private static final TAG:Ljava/lang/String; = "Tracer"


# instance fields
.field private mErrorParser:Lbrave/ErrorParser;

.field private mHandler:Lbrave/internal/handler/ZipkinFinishedSpanHandler;

.field private mSampleRate:F

.field private mSampler:Lbrave/sampler/Sampler;

.field private mTracer:Lbrave/Tracer;

.field private mTracing:Lbrave/Tracing;


# direct methods
.method private constructor <init>()V
    .locals 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "logan_sample_rate"

    const v2, 0x3dcccccd    # 0.1f

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampleRate:F

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init TracingHolder, mSampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampleRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tracer"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampleRate:F

    invoke-static {v0}, Lbrave/sampler/Sampler;->create(F)Lbrave/sampler/Sampler;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampler:Lbrave/sampler/Sampler;

    .line 42
    new-instance v0, Lbrave/ErrorParser;

    invoke-direct {v0}, Lbrave/ErrorParser;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mErrorParser:Lbrave/ErrorParser;

    .line 43
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 46
    new-instance v0, Lbrave/internal/handler/ZipkinFinishedSpanHandler;

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingReporter;

    invoke-direct {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingReporter;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mErrorParser:Lbrave/ErrorParser;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lbrave/internal/handler/ZipkinFinishedSpanHandler;-><init>(Lzipkin2/reporter/Reporter;Lbrave/ErrorParser;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mHandler:Lbrave/internal/handler/ZipkinFinishedSpanHandler;

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->buildTracer()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;-><init>()V

    return-void
.end method

.method private buildTracer()V
    .locals 2

    .line 51
    invoke-static {}, Lbrave/Tracing;->newBuilder()Lbrave/Tracing$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mErrorParser:Lbrave/ErrorParser;

    .line 52
    invoke-virtual {v0, v1}, Lbrave/Tracing$Builder;->errorParser(Lbrave/ErrorParser;)Lbrave/Tracing$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampler:Lbrave/sampler/Sampler;

    .line 53
    invoke-virtual {v0, v1}, Lbrave/Tracing$Builder;->sampler(Lbrave/sampler/Sampler;)Lbrave/Tracing$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mHandler:Lbrave/internal/handler/ZipkinFinishedSpanHandler;

    .line 54
    invoke-virtual {v0, v1}, Lbrave/Tracing$Builder;->addFinishedSpanHandler(Lbrave/handler/FinishedSpanHandler;)Lbrave/Tracing$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lbrave/Tracing$Builder;->build()Lbrave/Tracing;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mTracing:Lbrave/Tracing;

    .line 56
    invoke-static {}, Lbrave/Tracing;->currentTracer()Lbrave/Tracer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mTracer:Lbrave/Tracer;

    return-void
.end method

.method static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;
    .locals 1

    .line 60
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder$HOLDER;->access$100()Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getSampler()Lbrave/sampler/Sampler;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampler:Lbrave/sampler/Sampler;

    return-object v0
.end method

.method getTracer()Lbrave/Tracer;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mTracer:Lbrave/Tracer;

    return-object v0
.end method

.method updateSampleRate(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Tracer"

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 76
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 77
    iget v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampleRate:F

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update rate from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampleRate:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampleRate:F

    .line 80
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lbrave/sampler/Sampler;->create(F)Lbrave/sampler/Sampler;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampler:Lbrave/sampler/Sampler;

    .line 81
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    move-result-object v2

    const-string v3, "logan_sample_rate"

    .line 82
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->putFloat(Ljava/lang/String;F)V

    .line 83
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mTracing:Lbrave/Tracing;

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v1}, Lbrave/Tracing;->close()V

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->buildTracer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid header rate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
