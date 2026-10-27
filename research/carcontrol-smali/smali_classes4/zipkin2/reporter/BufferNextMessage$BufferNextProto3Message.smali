.class final Lzipkin2/reporter/BufferNextMessage$BufferNextProto3Message;
.super Lzipkin2/reporter/BufferNextMessage;
.source "BufferNextMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/BufferNextMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferNextProto3Message"
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


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lzipkin2/reporter/BufferNextMessage;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method messageSizeInBytes(I)I
    .locals 1

    .line 118
    iget v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextProto3Message;->messageSizeInBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextProto3Message;->messageSizeInBytes:I

    return v0
.end method

.method resetMessageSizeInBytes()V
    .locals 4

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextProto3Message;->messageSizeInBytes:I

    .line 124
    iget-object v1, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextProto3Message;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 125
    iget v2, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextProto3Message;->messageSizeInBytes:I

    iget-object v3, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextProto3Message;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextProto3Message;->messageSizeInBytes:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
