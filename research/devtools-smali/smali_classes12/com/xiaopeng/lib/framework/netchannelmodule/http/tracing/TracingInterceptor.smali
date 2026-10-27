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

    const-string p2, "http.host"

    .line 132
    invoke-virtual {p4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    const-string p2, "http.method"

    .line 133
    invoke-virtual {p1, p2, p3}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    const-string p2, "http.path"

    .line 134
    invoke-virtual {p4}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    const-string p2, "http.url"

    .line 135
    invoke-virtual {p4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    const-string p2, "http.status_code"

    .line 136
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    const-string p2, "car.vid"

    .line 137
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->ln()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    const-string p2, "car.vin"

    .line 138
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->eG()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    const-string p2, "car.cdu_id"

    .line 139
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->getHardwareId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    const-string p2, "car.sid"

    .line 140
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->oQ()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    const-string p2, "car.net"

    .line 141
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaopeng/lib/utils/e;->av(Landroid/content/Context;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    .line 142
    invoke-virtual {p1, p6}, Lbrave/Span;->error(Ljava/lang/Throwable;)Lbrave/Span;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lbrave/Span;->finish()V

    .line 144
    return-void
.end method

.method private isXiaopengHost(Ljava/lang/String;)Z
    .locals 1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 p1, 0x0

    return p1

    .line 106
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "10.0.13.28"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 109
    :cond_1
    const-string v0, "xiaopeng.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    if-nez v1, :cond_0

    .line 54
    const-string v1, "Tracer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isXiaopengHost(url.host()) == false, host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 57
    :cond_0
    invoke-virtual {v8}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 59
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->getTracer()Lbrave/Tracer;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lbrave/Tracer;->newTrace()Lbrave/Span;

    move-result-object v2

    invoke-virtual {v2}, Lbrave/Span;->start()Lbrave/Span;

    move-result-object v10

    .line 61
    invoke-virtual {v1, v10}, Lbrave/Tracer;->withSpanInScope(Lbrave/Span;)Lbrave/Tracer$SpanInScope;

    .line 62
    invoke-virtual {v1}, Lbrave/Tracer;->nextSpan()Lbrave/Span;

    move-result-object v11

    .line 63
    invoke-virtual {v10}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object v1

    invoke-virtual {v1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v10}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object v2

    invoke-virtual {v2}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v11}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object v3

    invoke-virtual {v3}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v10}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object v4

    invoke-virtual {v4}, Lbrave/propagation/TraceContext;->sampled()Ljava/lang/Boolean;

    move-result-object v4

    .line 67
    const-string v5, "Tracer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tracing intercept operationName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " traceId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " spanId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " sampled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v5

    const-string v6, "X-B3-TraceId"

    .line 71
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v5, "X-B3-SpanId"

    .line 72
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v3, "X-B3-Sampled"

    .line 73
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v3, "X-B3-ParentSpanId"

    .line 74
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 77
    :try_start_0
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 78
    const-string v1, "logan-sample-rates"

    invoke-virtual {p1, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->updateSampleRate(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v12

    .line 82
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v11

    move-object v3, v9

    move-object v5, v8

    move v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->decorateAndFinishSpan(Lbrave/Span;Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl;ILjava/lang/Exception;)V

    .line 83
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v10

    move-object v3, v9

    move-object v5, v8

    move v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->decorateAndFinishSpan(Lbrave/Span;Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl;ILjava/lang/Exception;)V

    .line 84
    const-string v1, "Tracer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracing intercept finish, code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-object p1

    .line 86
    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, v11

    move-object v3, v9

    move-object v5, v8

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->decorateAndFinishSpan(Lbrave/Span;Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl;ILjava/lang/Exception;)V

    .line 89
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    move-object v2, v10

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->decorateAndFinishSpan(Lbrave/Span;Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl;ILjava/lang/Exception;)V

    .line 90
    const-string v0, "Tracer"

    const-string v1, "Tracing intercept finish, code:-1"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    throw p1
.end method
