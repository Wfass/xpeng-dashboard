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
    .locals 3
    .param p1, "span"    # Lbrave/Span;
    .param p2, "operationName"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "url"    # Lokhttp3/HttpUrl;
    .param p5, "responseCode"    # I
    .param p6, "error"    # Ljava/lang/Exception;

    .line 130
    invoke-virtual {p1, p2}, Lbrave/Span;->name(Ljava/lang/String;)Lbrave/Span;

    move-result-object v0

    sget-object v1, Lbrave/Span$Kind;->CLIENT:Lbrave/Span$Kind;

    .line 131
    invoke-virtual {v0, v1}, Lbrave/Span;->kind(Lbrave/Span$Kind;)Lbrave/Span;

    move-result-object v0

    const-string v1, "http.host"

    .line 132
    invoke-virtual {p4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object v0

    const-string v1, "http.method"

    .line 133
    invoke-virtual {v0, v1, p3}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object v0

    const-string v1, "http.path"

    .line 134
    invoke-virtual {p4}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object v0

    const-string v1, "http.url"

    .line 135
    invoke-virtual {p4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object v0

    const-string v1, "http.status_code"

    .line 136
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object v0

    const-string v1, "car.vid"

    .line 137
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVehicleId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object v0

    const-string v1, "car.vin"

    .line 138
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object v0

    const-string v1, "car.cdu_id"

    .line 139
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object v0

    const-string v1, "car.sid"

    .line 140
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getSoftwareId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object v0

    const-string v1, "car.net"

    .line 141
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/NetUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbrave/Span;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p6}, Lbrave/Span;->error(Ljava/lang/Throwable;)Lbrave/Span;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lbrave/Span;->finish()V

    .line 144
    return-void
.end method

.method private isXiaopengHost(Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "10.0.13.28"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 109
    :cond_1
    const-string v0, "xiaopeng.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 24
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    .line 51
    .local v2, "request":Lokhttp3/Request;
    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    .line 52
    .local v10, "url":Lokhttp3/HttpUrl;
    invoke-virtual {v10}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p0

    invoke-direct {v11, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->isXiaopengHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string v0, "Tracer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isXiaopengHost(url.host()) == false, host:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {v1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    invoke-virtual {v10}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v12

    .line 58
    .local v12, "urlStr":Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 59
    .local v13, "operationName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->getTracer()Lbrave/Tracer;

    move-result-object v14

    .line 60
    .local v14, "tracer":Lbrave/Tracer;
    invoke-virtual {v14}, Lbrave/Tracer;->newTrace()Lbrave/Span;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/Span;->start()Lbrave/Span;

    move-result-object v15

    .line 61
    .local v15, "rootSpan":Lbrave/Span;
    invoke-virtual {v14, v15}, Lbrave/Tracer;->withSpanInScope(Lbrave/Span;)Lbrave/Tracer$SpanInScope;

    .line 62
    invoke-virtual {v14}, Lbrave/Tracer;->nextSpan()Lbrave/Span;

    move-result-object v9

    .line 63
    .local v9, "requestSpan":Lbrave/Span;
    invoke-virtual {v15}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "traceId":Ljava/lang/String;
    invoke-virtual {v15}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "parentId":Ljava/lang/String;
    invoke-virtual {v9}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "spanId":Ljava/lang/String;
    invoke-virtual {v15}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/propagation/TraceContext;->sampled()Ljava/lang/Boolean;

    move-result-object v5

    .line 67
    .local v5, "sampled":Ljava/lang/Boolean;
    const-string v0, "Tracer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracing intercept operationName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " traceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " spanId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sampled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v3, "X-B3-TraceId"

    .line 71
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v3, "X-B3-SpanId"

    .line 72
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v3, "X-B3-Sampled"

    .line 73
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v3, "X-B3-ParentSpanId"

    .line 74
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    move-object v4, v0

    .line 77
    .local v4, "newRequest":Lokhttp3/Request;
    :try_start_0
    invoke-interface {v1, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 78
    .local v0, "response":Lokhttp3/Response;
    const-string v3, "logan-sample-rates"

    invoke-virtual {v0, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "sampleRate":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;->updateSampleRate(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    .line 82
    .local v1, "responseCode":I
    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v17, 0x0

    move-object/from16 v18, v3

    move-object v3, v11

    .end local v3    # "sampleRate":Ljava/lang/String;
    .local v18, "sampleRate":Ljava/lang/String;
    move-object/from16 v19, v4

    move-object v4, v9

    .end local v4    # "newRequest":Lokhttp3/Request;
    .local v19, "newRequest":Lokhttp3/Request;
    move-object/from16 v20, v5

    move-object v5, v13

    .end local v5    # "sampled":Ljava/lang/Boolean;
    .local v20, "sampled":Ljava/lang/Boolean;
    move-object/from16 v21, v6

    move-object/from16 v6, v16

    .end local v6    # "spanId":Ljava/lang/String;
    .local v21, "spanId":Ljava/lang/String;
    move-object/from16 v16, v7

    move-object v7, v10

    .end local v7    # "parentId":Ljava/lang/String;
    .local v16, "parentId":Ljava/lang/String;
    move-object/from16 v22, v8

    move v8, v1

    .end local v8    # "traceId":Ljava/lang/String;
    .local v22, "traceId":Ljava/lang/String;
    move-object/from16 v23, v9

    move-object/from16 v9, v17

    .end local v9    # "requestSpan":Lbrave/Span;
    .local v23, "requestSpan":Lbrave/Span;
    :try_start_1
    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->decorateAndFinishSpan(Lbrave/Span;Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl;ILjava/lang/Exception;)V

    .line 83
    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    move-object v3, v11

    move-object v4, v15

    move-object v5, v13

    move-object v7, v10

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->decorateAndFinishSpan(Lbrave/Span;Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl;ILjava/lang/Exception;)V

    .line 84
    const-string v3, "Tracer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tracing intercept finish, code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    return-object v0

    .line 86
    .end local v0    # "response":Lokhttp3/Response;
    .end local v1    # "responseCode":I
    .end local v18    # "sampleRate":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v16    # "parentId":Ljava/lang/String;
    .end local v19    # "newRequest":Lokhttp3/Request;
    .end local v20    # "sampled":Ljava/lang/Boolean;
    .end local v21    # "spanId":Ljava/lang/String;
    .end local v22    # "traceId":Ljava/lang/String;
    .end local v23    # "requestSpan":Lbrave/Span;
    .restart local v4    # "newRequest":Lokhttp3/Request;
    .restart local v5    # "sampled":Ljava/lang/Boolean;
    .restart local v6    # "spanId":Ljava/lang/String;
    .restart local v7    # "parentId":Ljava/lang/String;
    .restart local v8    # "traceId":Ljava/lang/String;
    .restart local v9    # "requestSpan":Lbrave/Span;
    :catch_1
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v16, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    .line 88
    .end local v4    # "newRequest":Lokhttp3/Request;
    .end local v5    # "sampled":Ljava/lang/Boolean;
    .end local v6    # "spanId":Ljava/lang/String;
    .end local v7    # "parentId":Ljava/lang/String;
    .end local v8    # "traceId":Ljava/lang/String;
    .end local v9    # "requestSpan":Lbrave/Span;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "parentId":Ljava/lang/String;
    .restart local v19    # "newRequest":Lokhttp3/Request;
    .restart local v20    # "sampled":Ljava/lang/Boolean;
    .restart local v21    # "spanId":Ljava/lang/String;
    .restart local v22    # "traceId":Ljava/lang/String;
    .restart local v23    # "requestSpan":Lbrave/Span;
    :goto_0
    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v3, v11

    move-object/from16 v4, v23

    move-object v5, v13

    move-object v7, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->decorateAndFinishSpan(Lbrave/Span;Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl;ILjava/lang/Exception;)V

    .line 89
    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    move-object v4, v15

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;->decorateAndFinishSpan(Lbrave/Span;Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl;ILjava/lang/Exception;)V

    .line 90
    const-string v1, "Tracer"

    const-string v3, "Tracing intercept finish, code:-1"

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    throw v0
.end method
