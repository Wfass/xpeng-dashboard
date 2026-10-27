.class public Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;
.super Lokhttp3/RequestBody;
.source "ProgressTouchableRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSRequest;",
        ">",
        "Lokhttp3/RequestBody;"
    }
.end annotation


# static fields
.field private static final SEGMENT_SIZE:I = 0x800


# instance fields
.field private callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "context"    # Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    .line 28
    .local p0, "this":Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;, "Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody<TT;>;"
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->inputStream:Ljava/io/InputStream;

    .line 30
    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentType:Ljava/lang/String;

    .line 31
    iput-wide p2, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    .line 32
    invoke-virtual {p5}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    .line 33
    invoke-virtual {p5}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    .line 34
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;, "Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody<TT;>;"
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 38
    .local p0, "this":Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;, "Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody<TT;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 20
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p0, "this":Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;, "Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody<TT;>;"
    move-object/from16 v0, p0

    .line 48
    iget-object v1, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    .line 49
    .local v1, "source":Lokio/Source;
    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 52
    .local v4, "total":J
    :goto_0
    iget-wide v6, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    .line 53
    iget-wide v6, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    sub-long/2addr v6, v4

    .line 54
    .local v6, "remain":J
    const-wide/16 v8, 0x800

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 56
    .local v8, "toRead":J
    invoke-interface/range {p1 .. p1}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v10

    invoke-interface {v1, v10, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v10

    .line 57
    .local v10, "read":J
    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_0

    .line 58
    goto :goto_1

    .line 61
    :cond_0
    add-long/2addr v4, v10

    .line 62
    invoke-interface/range {p1 .. p1}, Lokio/BufferedSink;->flush()V

    .line 64
    iget-object v12, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    if-eqz v12, :cond_1

    cmp-long v12, v4, v2

    if-eqz v12, :cond_1

    .line 65
    iget-object v13, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    iget-object v14, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    iget-wide v2, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    move-wide v15, v4

    move-wide/from16 v17, v2

    invoke-interface/range {v13 .. v18}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    .line 49
    .end local v6    # "remain":J
    .end local v8    # "toRead":J
    .end local v10    # "read":J
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 68
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 69
    invoke-interface {v1}, Lokio/Source;->close()V

    .line 71
    :cond_3
    return-void
.end method
