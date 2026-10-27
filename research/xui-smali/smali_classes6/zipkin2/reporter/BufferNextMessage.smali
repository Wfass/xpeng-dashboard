.class abstract Lzipkin2/reporter/BufferNextMessage;
.super Ljava/lang/Object;
.source "BufferNextMessage.java"

# interfaces
.implements Lzipkin2/reporter/SpanWithSizeConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/reporter/BufferNextMessage$BufferNextProto3Message;,
        Lzipkin2/reporter/BufferNextMessage$BufferNextThriftMessage;,
        Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lzipkin2/reporter/SpanWithSizeConsumer<",
        "TS;>;"
    }
.end annotation


# instance fields
.field bufferFull:Z

.field deadlineNanoTime:J

.field final maxBytes:I

.field messageSizeInBytes:I

.field final sizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final spans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TS;>;"
        }
    .end annotation
.end field

.field final timeoutNanos:J


# direct methods
.method constructor <init>(IJ)V
    .locals 1
    .param p1, "maxBytes"    # I
    .param p2, "timeoutNanos"    # J

    .line 44
    .local p0, "this":Lzipkin2/reporter/BufferNextMessage;, "Lzipkin2/reporter/BufferNextMessage<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzipkin2/reporter/BufferNextMessage;->spans:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzipkin2/reporter/BufferNextMessage;->sizes:Ljava/util/ArrayList;

    .line 45
    iput p1, p0, Lzipkin2/reporter/BufferNextMessage;->maxBytes:I

    .line 46
    iput-wide p2, p0, Lzipkin2/reporter/BufferNextMessage;->timeoutNanos:J

    .line 47
    return-void
.end method

.method static create(Lzipkin2/codec/Encoding;IJ)Lzipkin2/reporter/BufferNextMessage;
    .locals 3
    .param p0, "encoding"    # Lzipkin2/codec/Encoding;
    .param p1, "maxBytes"    # I
    .param p2, "timeoutNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/codec/Encoding;",
            "IJ)",
            "Lzipkin2/reporter/BufferNextMessage<",
            "TS;>;"
        }
    .end annotation

    .line 24
    sget-object v0, Lzipkin2/reporter/BufferNextMessage$1;->$SwitchMap$zipkin2$codec$Encoding:[I

    invoke-virtual {p0}, Lzipkin2/codec/Encoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :pswitch_0
    new-instance v0, Lzipkin2/reporter/BufferNextMessage$BufferNextProto3Message;

    invoke-direct {v0, p1, p2, p3}, Lzipkin2/reporter/BufferNextMessage$BufferNextProto3Message;-><init>(IJ)V

    return-object v0

    .line 28
    :pswitch_1
    new-instance v0, Lzipkin2/reporter/BufferNextMessage$BufferNextThriftMessage;

    invoke-direct {v0, p1, p2, p3}, Lzipkin2/reporter/BufferNextMessage$BufferNextThriftMessage;-><init>(IJ)V

    return-object v0

    .line 26
    :pswitch_2
    new-instance v0, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;

    invoke-direct {v0, p1, p2, p3}, Lzipkin2/reporter/BufferNextMessage$BufferNextJsonMessage;-><init>(IJ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addSpanToBuffer(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "nextSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lzipkin2/reporter/BufferNextMessage;, "Lzipkin2/reporter/BufferNextMessage<TS;>;"
    .local p1, "next":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lzipkin2/reporter/BufferNextMessage;->spans:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lzipkin2/reporter/BufferNextMessage;->sizes:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method count()I
    .locals 1

    .line 183
    .local p0, "this":Lzipkin2/reporter/BufferNextMessage;, "Lzipkin2/reporter/BufferNextMessage<TS;>;"
    iget-object v0, p0, Lzipkin2/reporter/BufferNextMessage;->spans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method drain(Lzipkin2/reporter/SpanWithSizeConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/reporter/SpanWithSizeConsumer<",
            "TS;>;)V"
        }
    .end annotation

    .line 167
    .local p0, "this":Lzipkin2/reporter/BufferNextMessage;, "Lzipkin2/reporter/BufferNextMessage<TS;>;"
    .local p1, "consumer":Lzipkin2/reporter/SpanWithSizeConsumer;, "Lzipkin2/reporter/SpanWithSizeConsumer<TS;>;"
    iget-object v0, p0, Lzipkin2/reporter/BufferNextMessage;->spans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 168
    .local v0, "spanIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TS;>;"
    iget-object v1, p0, Lzipkin2/reporter/BufferNextMessage;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 169
    .local v1, "sizeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v2, v3}, Lzipkin2/reporter/SpanWithSizeConsumer;->offer(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const/4 v2, 0x0

    iput-boolean v2, p0, Lzipkin2/reporter/BufferNextMessage;->bufferFull:Z

    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 173
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lzipkin2/reporter/BufferNextMessage;->resetMessageSizeInBytes()V

    .line 179
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lzipkin2/reporter/BufferNextMessage;->deadlineNanoTime:J

    .line 180
    return-void
.end method

.method isReady()Z
    .locals 4

    .line 162
    .local p0, "this":Lzipkin2/reporter/BufferNextMessage;, "Lzipkin2/reporter/BufferNextMessage<TS;>;"
    iget-boolean v0, p0, Lzipkin2/reporter/BufferNextMessage;->bufferFull:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lzipkin2/reporter/BufferNextMessage;->remainingNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

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

.method abstract messageSizeInBytes(I)I
.end method

.method public offer(Ljava/lang/Object;I)Z
    .locals 5
    .param p2, "nextSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)Z"
        }
    .end annotation

    .line 133
    .local p0, "this":Lzipkin2/reporter/BufferNextMessage;, "Lzipkin2/reporter/BufferNextMessage<TS;>;"
    .local p1, "next":Ljava/lang/Object;, "TS;"
    invoke-virtual {p0, p2}, Lzipkin2/reporter/BufferNextMessage;->messageSizeInBytes(I)I

    move-result v0

    .line 134
    .local v0, "x":I
    iget v1, p0, Lzipkin2/reporter/BufferNextMessage;->maxBytes:I

    .line 135
    .local v1, "y":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 137
    .local v4, "includingNextVsMaxBytes":I
    :goto_0
    if-lez v4, :cond_2

    .line 138
    iput-boolean v3, p0, Lzipkin2/reporter/BufferNextMessage;->bufferFull:Z

    .line 139
    return v2

    .line 142
    :cond_2
    invoke-virtual {p0, p1, p2}, Lzipkin2/reporter/BufferNextMessage;->addSpanToBuffer(Ljava/lang/Object;I)V

    .line 143
    iput v0, p0, Lzipkin2/reporter/BufferNextMessage;->messageSizeInBytes:I

    .line 145
    if-nez v4, :cond_3

    iput-boolean v3, p0, Lzipkin2/reporter/BufferNextMessage;->bufferFull:Z

    .line 146
    :cond_3
    return v3
.end method

.method remainingNanos()J
    .locals 4

    .line 155
    .local p0, "this":Lzipkin2/reporter/BufferNextMessage;, "Lzipkin2/reporter/BufferNextMessage<TS;>;"
    iget-object v0, p0, Lzipkin2/reporter/BufferNextMessage;->spans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lzipkin2/reporter/BufferNextMessage;->timeoutNanos:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lzipkin2/reporter/BufferNextMessage;->deadlineNanoTime:J

    .line 158
    :cond_0
    iget-wide v0, p0, Lzipkin2/reporter/BufferNextMessage;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method abstract resetMessageSizeInBytes()V
.end method

.method sizeInBytes()I
    .locals 1

    .line 187
    .local p0, "this":Lzipkin2/reporter/BufferNextMessage;, "Lzipkin2/reporter/BufferNextMessage<TS;>;"
    iget v0, p0, Lzipkin2/reporter/BufferNextMessage;->messageSizeInBytes:I

    return v0
.end method
