.class final Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;
.super Lokio/ForwardingSink;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/request/base/ProgressRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CountingSink"
.end annotation


# instance fields
.field private progress:Lcom/lzy/okgo/model/Progress;

.field final synthetic this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lokio/Sink;)V
    .locals 3
    .param p2, "delegate"    # Lokio/Sink;

    .line 84
    .local p0, "this":Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;, "Lcom/lzy/okgo/request/base/ProgressRequestBody<TT;>.CountingSink;"
    iput-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    .line 85
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 86
    new-instance v0, Lcom/lzy/okgo/model/Progress;

    invoke-direct {v0}, Lcom/lzy/okgo/model/Progress;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->progress:Lcom/lzy/okgo/model/Progress;

    .line 87
    iget-object v0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->contentLength()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 88
    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 2
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;, "Lcom/lzy/okgo/request/base/ProgressRequestBody<TT;>.CountingSink;"
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 94
    iget-object v0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink$1;

    invoke-direct {v1, p0}, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink$1;-><init>(Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;)V

    invoke-static {v0, p2, p3, v1}, Lcom/lzy/okgo/model/Progress;->changeProgress(Lcom/lzy/okgo/model/Progress;JLcom/lzy/okgo/model/Progress$Action;)Lcom/lzy/okgo/model/Progress;

    .line 104
    return-void
.end method
