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
    .locals 10

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "logan_sample_rate"

    .line 39
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampleRate:F

    .line 40
    const-string v0, "Tracer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init TracingHolder, mSampleRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

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

    move-result-object v0

    .line 44
    .local v0, "serviceName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, "ip":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    .line 46
    .local v8, "port":I
    new-instance v9, Lbrave/internal/handler/ZipkinFinishedSpanHandler;

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingReporter;

    invoke-direct {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingReporter;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mErrorParser:Lbrave/ErrorParser;

    move-object v1, v9

    move-object v4, v0

    move-object v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lbrave/internal/handler/ZipkinFinishedSpanHandler;-><init>(Lzipkin2/reporter/Reporter;Lbrave/ErrorParser;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mHandler:Lbrave/internal/handler/ZipkinFinishedSpanHandler;

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->buildTracer()V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder$1;

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

    .line 57
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
    .param p1, "sampleRateStr"    # Ljava/lang/String;

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    return-void

    .line 76
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 77
    .local v0, "sampleRate":Ljava/lang/Float;
    iget v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampleRate:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 78
    const-string v1, "Tracer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update rate from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampleRate:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampleRate:F

    .line 80
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lbrave/sampler/Sampler;->create(F)Lbrave/sampler/Sampler;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mSampler:Lbrave/sampler/Sampler;

    .line 81
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "logan_sample_rate"

    .line 82
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->putFloat(Ljava/lang/String;F)V

    .line 83
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mTracing:Lbrave/Tracing;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->mTracing:Lbrave/Tracing;

    invoke-virtual {v1}, Lbrave/Tracing;->close()V

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->buildTracer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "sampleRate":Ljava/lang/Float;
    :cond_2
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Tracer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid header rate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
