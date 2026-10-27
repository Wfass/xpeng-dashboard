.class public Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;
.super Ljava/lang/Object;
.source "SliceValueConsumer.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ValueConsumer;


# instance fields
.field public slice:Lio/airlift/slice/Slice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    if-gez p1, :cond_0

    neg-int v0, p1

    .line 28
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 29
    :goto_0
    new-array v1, v0, [B

    .line 30
    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(II[B)V

    .line 31
    invoke-static {v1}, Lio/airlift/slice/Slices;->wrappedBuffer([B)Lio/airlift/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;

    return-void
.end method

.method public accept(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    neg-long v0, p1

    .line 44
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(J)I

    move-result v0

    .line 45
    :goto_0
    new-array v1, v0, [B

    .line 46
    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(JI[B)V

    .line 47
    invoke-static {v1}, Lio/airlift/slice/Slices;->wrappedBuffer([B)Lio/airlift/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;

    return-void
.end method

.method public accept(Ljava/lang/Number;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;

    return-void

    .line 57
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    neg-long v2, v0

    .line 59
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(J)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(J)I

    move-result p1

    .line 60
    :goto_0
    new-array v2, p1, [B

    .line 61
    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(JI[B)V

    .line 62
    invoke-static {v2}, Lio/airlift/slice/Slices;->wrappedBuffer([B)Lio/airlift/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;

    return-void

    .line 66
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p1}, Lio/airlift/slice/Slices;->utf8Slice(Ljava/lang/String;)Lio/airlift/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;

    return-void

    .line 67
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gez p1, :cond_5

    neg-int v0, p1

    .line 68
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 69
    :goto_2
    new-array v1, v0, [B

    .line 70
    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(II[B)V

    .line 71
    invoke-static {v1}, Lio/airlift/slice/Slices;->wrappedBuffer([B)Lio/airlift/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-static {p1}, Lio/airlift/slice/Slices;->utf8Slice(Ljava/lang/String;)Lio/airlift/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 1

    .line 100
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [B

    .line 101
    fill-array-data p1, :array_0

    invoke-static {p1}, Lio/airlift/slice/Slices;->wrappedBuffer([B)Lio/airlift/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;

    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    .line 106
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->write(Ljava/util/List;)V

    .line 107
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object p1

    .line 108
    invoke-static {p1}, Lio/airlift/slice/Slices;->wrappedBuffer([B)Lio/airlift/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 105
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1

    :array_0
    .array-data 1
        0x5bt
        0x5dt
    .end array-data
.end method

.method public accept(Ljava/util/Map;)V
    .locals 1

    .line 86
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [B

    .line 87
    fill-array-data p1, :array_0

    invoke-static {p1}, Lio/airlift/slice/Slices;->wrappedBuffer([B)Lio/airlift/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;

    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    .line 92
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->write(Ljava/util/Map;)V

    .line 93
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object p1

    .line 94
    invoke-static {p1}, Lio/airlift/slice/Slices;->wrappedBuffer([B)Lio/airlift/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 91
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1

    :array_0
    .array-data 1
        0x7bt
        0x7dt
    .end array-data
.end method

.method public accept(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 37
    fill-array-data p1, :array_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [B

    .line 38
    fill-array-data p1, :array_1

    .line 39
    :goto_0
    invoke-static {p1}, Lio/airlift/slice/Slices;->wrappedBuffer([B)Lio/airlift/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;

    return-void

    :array_0
    .array-data 1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public accept([BII)V
    .locals 0

    .line 18
    invoke-static {p1, p2, p3}, Lio/airlift/slice/Slices;->wrappedBuffer([BII)Lio/airlift/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;

    return-void
.end method

.method public acceptNull()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;

    return-void
.end method
