.class Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;
.super Ljava/lang/Object;
.source "AsyncReporter.java"

# interfaces
.implements Lzipkin2/reporter/SpanWithSizeConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->flush(Lzipkin2/reporter/BufferNextMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/reporter/SpanWithSizeConsumer<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

.field final synthetic val$nextMessage:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    .line 273
    .local p0, "this":Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;, "Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;"
    iput-object p1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->this$0:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    iput-object p2, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->val$nextMessage:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;I)Z
    .locals 3
    .param p2, "nextSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)Z"
        }
    .end annotation

    .line 275
    .local p0, "this":Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;, "Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;"
    .local p1, "next":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->val$nextMessage:Ljava/util/ArrayList;

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->this$0:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    iget-object v1, v1, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->encoder:Lzipkin2/codec/BytesEncoder;

    invoke-interface {v1, p1}, Lzipkin2/codec/BytesEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->this$0:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    iget-object v0, v0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->sender:Lzipkin2/reporter/Sender;

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->val$nextMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lzipkin2/reporter/Sender;->messageSizeInBytes(Ljava/util/List;)I

    move-result v0

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->this$0:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    iget v1, v1, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->messageMaxBytes:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->val$nextMessage:Ljava/util/ArrayList;

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->val$nextMessage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 279
    const/4 v0, 0x0

    return v0

    .line 281
    :cond_0
    return v2
.end method
