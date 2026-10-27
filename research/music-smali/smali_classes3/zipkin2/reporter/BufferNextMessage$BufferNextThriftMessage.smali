.class final Lzipkin2/reporter/BufferNextMessage$BufferNextThriftMessage;
.super Lzipkin2/reporter/BufferNextMessage;
.source "BufferNextMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/BufferNextMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferNextThriftMessage"
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

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lzipkin2/reporter/BufferNextMessage;-><init>(IJ)V

    const/4 p1, 0x5

    .line 93
    iput p1, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextThriftMessage;->f:I

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 1

    .line 98
    iget v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextThriftMessage;->f:I

    add-int/2addr v0, p1

    return v0
.end method

.method a()V
    .locals 4

    const/4 v0, 0x5

    .line 103
    iput v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextThriftMessage;->f:I

    .line 104
    iget-object v0, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextThriftMessage;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 105
    iget v2, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextThriftMessage;->f:I

    iget-object v3, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextThriftMessage;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lzipkin2/reporter/BufferNextMessage$BufferNextThriftMessage;->f:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
