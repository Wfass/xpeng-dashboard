.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;
.super Ljava/lang/Object;
.source "TracingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final B3_HEADER_PARENT_ID:Ljava/lang/String; = "X-B3-ParentSpanId"

.field private static final B3_HEADER_SAMPLED:Ljava/lang/String; = "X-B3-Sampled"

.field private static final B3_HEADER_SPAN_ID:Ljava/lang/String; = "X-B3-SpanId"

.field private static final B3_HEADER_TRACE_ID:Ljava/lang/String; = "X-B3-TraceId"

.field private static final HOST_XIAOPENG_LAN:Ljava/lang/String; = "10.0.13.28"

.field private static final HOST_XIAOPENG_WAN:Ljava/lang/String; = "xiaopeng.com"

.field private static final RESPONSE_HEADER_SAMPLE_RATE:Ljava/lang/String; = "logan-sample-rates"

.field private static final TAG:Ljava/lang/String; = "Tracer"

.field private static final TAG_KEY_CDUID:Ljava/lang/String; = "car.cdu_id"

.field private static final TAG_KEY_HOST:Ljava/lang/String; = "http.host"

.field private static final TAG_KEY_METHOD:Ljava/lang/String; = "http.method"

.field private static final TAG_KEY_NET:Ljava/lang/String; = "car.net"

.field private static final TAG_KEY_PATH:Ljava/lang/String; = "http.path"

.field private static final TAG_KEY_SID:Ljava/lang/String; = "car.sid"

.field private static final TAG_KEY_STATUS:Ljava/lang/String; = "http.status_code"

.field private static final TAG_KEY_URL:Ljava/lang/String; = "http.url"

.field private static final TAG_KEY_VID:Ljava/lang/String; = "car.vid"

.field private static final TAG_KEY_VIN:Ljava/lang/String; = "car.vin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decorateAndFinishSpan(Lbrave/Span;Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl;ILjava/lang/Exception;)V
    .locals 1

    .line 130
    invoke-virtual {p1, p2}, Lbrave/Span;->name(Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    sget-object p2, Lbrave/Span$Kind;->CLIENT:Lbrave/Span$Kind;

    .line 131
    invoke-virtual {p1, p2}, Lbrave/Span;->kind(Lbrave/Span$Kind;)Lbrave/Span;

    move-result-object p1

    .line 132
    invoke-virtual {p4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p2

    const-string v0, "http.host"

    invoke-virtual {p1, v0, p2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    const-string p2, "http.method"

    .line 133
    invoke-virtual {p1, p2, p3}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    .line 134
    invoke-virtual {p4}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "http.path"

    invoke-virtual {p1, p3, p2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    .line 135
    invoke-virtual {p4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "http.url"

    invoke-virtual {p1, p3, p2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    .line 136
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "http.status_code"

    invoke-virtual {p1, p3, p2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    .line 137
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVehicleId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "car.vid"

    invoke-virtual {p1, p3, p2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    .line 138
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVIN()Ljava/lang/String;

    move-result-object p2

    const-string p3, "car.vin"

    invoke-virtual {p1, p3, p2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    .line 139
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "car.cdu_id"

    invoke-virtual {p1, p3, p2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    .line 140
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getSoftwareId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "car.sid"

    invoke-virtual {p1, p3, p2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    .line 141
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/NetUtils;->getNetworkType(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "car.net"

    invoke-virtual {p1, p3, p2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    .line 142
    invoke-virtual {p1, p6}, Lbrave/Span;->error(Ljava/lang/Throwable;)Lbrave/Span;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lbrave/Span;->finish()V

    return-void
.end method

.method private isXiaopengHost(Ljava/lang/String;)Z
    .locals 1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 106
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "10.0.13.28"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    const-string v0, "xiaopeng.com"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 14

    .line 50
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    .line 52
    invoke-virtual {v8}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->isXiaopengHost(Ljava/lang/String;)Z

    move-result v1

    const-string v9, "Tracer"

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isXiaopengHost(url.host()) == false, host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 57
    :cond_0
    invoke-virtual {v8}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 59
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->getTracer()Lbrave/Tracer;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lbrave/Tracer;->newTrace()Lbrave/Span;

    move-result-object v2

    invoke-virtual {v2}, Lbrave/Span;->start()Lbrave/Span;

    move-result-object v11

    .line 61
    invoke-virtual {v1, v11}, Lbrave/Tracer;->withSpanInScope(Lbrave/Span;)Lbrave/Tracer$SpanInScope;

    .line 62
    invoke-virtual {v1}, Lbrave/Tracer;->nextSpan()Lbrave/Span;

    move-result-object v12

    .line 63
    invoke-virtual {v11}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object v1

    invoke-virtual {v1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v11}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object v2

    invoke-virtual {v2}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v12}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object v3

    invoke-virtual {v3}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v11}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object v4

    invoke-virtual {v4}, Lbrave/propagation/TraceContext;->sampled()Ljava/lang/Boolean;

    move-result-object v4

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tracing intercept operationName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " traceId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " spanId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " sampled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v5

    .line 71
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "X-B3-TraceId"

    invoke-virtual {v5, v6, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 72
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "X-B3-SpanId"

    invoke-virtual {v1, v5, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 73
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "X-B3-Sampled"

    invoke-virtual {v1, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 74
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-B3-ParentSpanId"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 77
    :try_start_0
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    const-string v1, "logan-sample-rates"

    .line 78
    invoke-virtual {p1, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->updateSampleRate(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v13

    .line 82
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v12

    move-object v3, v10

    move-object v5, v8

    move v6, v13

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->decorateAndFinishSpan(Lbrave/Span;Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl;ILjava/lang/Exception;)V

    .line 83
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v11

    move-object v3, v10

    move-object v5, v8

    move v6, v13

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->decorateAndFinishSpan(Lbrave/Span;Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl;ILjava/lang/Exception;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracing intercept finish, code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, v12

    move-object v3, v10

    move-object v5, v8

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->decorateAndFinishSpan(Lbrave/Span;Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl;ILjava/lang/Exception;)V

    .line 89
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    move-object v2, v11

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->decorateAndFinishSpan(Lbrave/Span;Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl;ILjava/lang/Exception;)V

    const-string v0, "Tracing intercept finish, code:-1"

    .line 90
    invoke-static {v9, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    throw p1
.end method
