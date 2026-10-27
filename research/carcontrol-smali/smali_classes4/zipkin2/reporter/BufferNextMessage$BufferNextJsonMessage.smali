.class final Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;
.super Lzipkin2/reporter/BufferNextMessage;
.source "BufferNextMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/BufferNextMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferNextJsonMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lzipkin2/reporter/BufferNextMessage<",
        "TS;>;"
    }
.end annotation


# instance fields
.field hasAtLeastOneSpan:Z


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lzipkin2/reporter/BufferNextMessage;-><init>(IJ)V

    const/4 p1, 0x2

    .line 58
    iput p1, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->hasAtLeastOneSpan:Z

    return-void
.end method


# virtual methods
.method addSpanToBuffer(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation

    .line 84
    invoke-super {p0, p1, p2}, Lzipkin2/reporter/BufferNextMessage;->addSpanToBuffer(Ljava/lang/Object;I)V

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->hasAtLeastOneSpan:Z

    return-void
.end method

.method messageSizeInBytes(I)I
    .locals 1

    .line 64
    iget v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    add-int/2addr v0, p1

    iget-boolean p1, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->hasAtLeastOneSpan:Z

    add-int/2addr v0, p1

    return v0
.end method

.method resetMessageSizeInBytes()V
    .locals 4

    .line 69
    iget-object v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 70
    :goto_0
    iput-boolean v3, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->hasAtLeastOneSpan:Z

    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    .line 72
    iput v3, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    .line 73
    iget-boolean v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->hasAtLeastOneSpan:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    iget-object v1, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v0, 0x2

    sub-int/2addr v3, v1

    .line 75
    iput v3, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    :goto_1
    if-ge v2, v0, :cond_2

    .line 77
    iget v1, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    iget-object v3, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
