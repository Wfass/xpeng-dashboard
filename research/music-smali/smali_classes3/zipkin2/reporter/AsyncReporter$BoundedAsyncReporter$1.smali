.class Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;
.super Ljava/lang/Object;
.source "AsyncReporter.java"

# interfaces
.implements Lzipkin2/reporter/SpanWithSizeConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->a(Lzipkin2/reporter/BufferNextMessage;)V
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
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;


# direct methods
.method constructor <init>(Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;Ljava/util/ArrayList;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->b:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    iput-object p2, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)Z"
        }
    .end annotation

    .line 275
    iget-object p2, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->b:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    iget-object v0, v0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->c:Lzipkin2/codec/BytesEncoder;

    invoke-interface {v0, p1}, Lzipkin2/codec/BytesEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object p1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->b:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    iget-object p1, p1, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->e:Lzipkin2/reporter/Sender;

    iget-object p2, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lzipkin2/reporter/Sender;->messageSizeInBytes(Ljava/util/List;)I

    move-result p1

    iget-object p2, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->b:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    iget p2, p2, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->f:I

    const/4 v0, 0x1

    if-le p1, p2, :cond_0

    .line 278
    iget-object p1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
