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
    .locals 1
    .param p1, "maxBytes"    # I
    .param p2, "timeoutNanos"    # J

    .line 57
    .local p0, "this":Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;, "Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage<TS;>;"
    invoke-direct {p0, p1, p2, p3}, Lzipkin2/reporter/BufferNextMessage;-><init>(IJ)V

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->hasAtLeastOneSpan:Z

    .line 60
    return-void
.end method


# virtual methods
.method addSpanToBuffer(Ljava/lang/Object;I)V
    .locals 1
    .param p2, "nextSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;, "Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage<TS;>;"
    .local p1, "next":Ljava/lang/Object;, "TS;"
    invoke-super {p0, p1, p2}, Lzipkin2/reporter/BufferNextMessage;->addSpanToBuffer(Ljava/lang/Object;I)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->hasAtLeastOneSpan:Z

    .line 86
    return-void
.end method

.method messageSizeInBytes(I)I
    .locals 2
    .param p1, "nextSizeInBytes"    # I

    .line 64
    .local p0, "this":Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;, "Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage<TS;>;"
    iget v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    add-int/2addr v0, p1

    iget-boolean v1, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->hasAtLeastOneSpan:Z

    add-int/2addr v0, v1

    return v0
.end method

.method resetMessageSizeInBytes()V
    .locals 4

    .line 69
    .local p0, "this":Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;, "Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage<TS;>;"
    iget-object v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 70
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->hasAtLeastOneSpan:Z

    .line 71
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    .line 72
    iput v3, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    .line 73
    iget-boolean v2, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->hasAtLeastOneSpan:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    iget-object v3, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    goto :goto_2

    .line 75
    :cond_1
    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    iput v3, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    .line 76
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 77
    iget v2, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    iget-object v3, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;->messageSizeInBytes:I

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-void
.end method
