.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;
.super Ljava/lang/Object;
.source "EventData.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final CALL_END:I = 0x11

.field private static final CALL_START:I = 0x0

.field private static final CONNECTION_ACQUIRED:I = 0x7

.field private static final CONNECTION_RELEASED:I = 0x10

.field private static final CONNECT_END:I = 0x6

.field private static final CONNECT_START:I = 0x3

.field private static final DNS_END:I = 0x2

.field private static final DNS_START:I = 0x1

.field private static final REQUEST_BODY_END:I = 0xb

.field private static final REQUEST_BODY_START:I = 0xa

.field private static final REQUEST_HEADERS_END:I = 0x9

.field private static final REQUEST_HEADERS_START:I = 0x8

.field private static final RESPONSE_BODY_END:I = 0xf

.field private static final RESPONSE_BODY_START:I = 0xe

.field private static final RESPONSE_HEADERS_END:I = 0xd

.field private static final RESPONSE_HEADERS_START:I = 0xc

.field private static final SECURE_CONNECT_END:I = 0x5

.field private static final SECURE_CONNECT_START:I = 0x4


# instance fields
.field private mCallException:Ljava/lang/String;

.field private mCallUrl:Ljava/lang/String;

.field private mCreateTime:J

.field private mMethod:Ljava/lang/String;

.field private mNetStrength:I

.field private mNetType:I

.field private mReadyPublish:Z

.field private mRespBodySize:J

.field private mRespCode:J

.field private mTimeArray:[J


# direct methods
.method public constructor <init>(Lokhttp3/Call;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mRespCode:J

    .line 53
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mRespBodySize:J

    const/16 v0, 0x12

    .line 55
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mNetType:I

    .line 58
    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mNetStrength:I

    .line 65
    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mReadyPublish:Z

    .line 68
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mCallUrl:Ljava/lang/String;

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mCreateTime:J

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mCallUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x46

    if-le p1, v1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mCallUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mCallUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private array([J)Lorg/json/JSONArray;
    .locals 5

    .line 210
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 211
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p1, v2

    .line 212
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getExceptionString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 166
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x46

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private timeDiv()J
    .locals 4

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mCreateTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public callEnd()V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v1

    const/16 v3, 0x11

    aput-wide v1, v0, v3

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mReadyPublish:Z

    .line 150
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getNetType()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mNetType:I

    .line 151
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getNetStrength()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mNetStrength:I

    return-void
.end method

.method public callFailed(Ljava/io/IOException;)V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v1

    const/16 v3, 0x11

    aput-wide v1, v0, v3

    .line 156
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->getExceptionString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mCallException:Ljava/lang/String;

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mReadyPublish:Z

    .line 158
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getNetType()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mNetType:I

    .line 159
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getNetStrength()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mNetStrength:I

    return-void
.end method

.method public callStart()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    return-void
.end method

.method public connectEnd(Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide p2

    const/4 v0, 0x6

    aput-wide p2, p1, v0

    return-void
.end method

.method public connectFailed(Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public connectStart(Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 2

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v0

    const/4 p2, 0x3

    aput-wide v0, p1, p2

    return-void
.end method

.method public connectionAcquired(Lokhttp3/Connection;)V
    .locals 3

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v0

    const/4 v2, 0x7

    aput-wide v0, p1, v2

    return-void
.end method

.method public connectionReleased(Lokhttp3/Connection;)V
    .locals 3

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v0

    const/16 v2, 0x10

    aput-wide v0, p1, v2

    return-void
.end method

.method public dnsEnd(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v0

    const/4 p2, 0x2

    aput-wide v0, p1, p2

    return-void
.end method

.method public dnsStart(Ljava/lang/String;)V
    .locals 3

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v0

    const/4 v2, 0x1

    aput-wide v0, p1, v2

    return-void
.end method

.method public readyPublish()Z
    .locals 4

    .line 174
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mReadyPublish:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mCreateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public requestBodyEnd(J)V
    .locals 2

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v0

    const/16 p2, 0xb

    aput-wide v0, p1, p2

    return-void
.end method

.method public requestBodyStart()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v1

    const/16 v3, 0xa

    aput-wide v1, v0, v3

    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Request;)V
    .locals 3

    .line 113
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mMethod:Ljava/lang/String;

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v0

    const/16 v2, 0x9

    aput-wide v0, p1, v2

    return-void
.end method

.method public requestHeadersStart()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v1

    const/16 v3, 0x8

    aput-wide v1, v0, v3

    return-void
.end method

.method public responseBodyEnd(J)V
    .locals 2

    .line 139
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mRespBodySize:J

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v0

    const/16 p2, 0xf

    aput-wide v0, p1, p2

    return-void
.end method

.method public responseBodyStart()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v1

    const/16 v3, 0xe

    aput-wide v1, v0, v3

    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Response;)V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v1

    const/16 v3, 0xd

    aput-wide v1, v0, v3

    .line 131
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mRespCode:J

    return-void
.end method

.method public responseHeadersStart()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v1

    const/16 v3, 0xc

    aput-wide v1, v0, v3

    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Handshake;)V
    .locals 3

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v0

    const/4 v2, 0x5

    aput-wide v0, p1, v2

    return-void
.end method

.method public secureConnectStart()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->timeDiv()J

    move-result-wide v1

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 7

    .line 178
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ti"

    .line 181
    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mCreateTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "u"

    .line 182
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mCallUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ne"

    .line 183
    iget v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mNetType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ns"

    .line 184
    iget v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mNetStrength:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mRespBodySize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const-string v1, "bs"

    .line 186
    iget-wide v5, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mRespBodySize:J

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 188
    :cond_0
    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mRespCode:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const-string v1, "cd"

    .line 189
    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mRespCode:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mCallException:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "ce"

    .line 192
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mCallException:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ta"

    .line 193
    invoke-static {}, Lcom/xiaopeng/lib/utils/NetUtils;->getTrafficStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mMethod:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "md"

    .line 196
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "tt"

    .line 198
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->mTimeArray:[J

    invoke-direct {p0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->array([J)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 200
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
