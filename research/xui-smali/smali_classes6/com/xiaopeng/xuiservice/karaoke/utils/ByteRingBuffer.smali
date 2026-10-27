.class public Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;
.super Ljava/lang/Object;
.source "ByteRingBuffer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ByteRingBuffer"

.field private static rBufferLock:Ljava/lang/Object;


# instance fields
.field private rBuf:[B

.field private rBufPos:I

.field private rBufSize:I

.field private rBufUsed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufferLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-gtz p1, :cond_0

    .line 22
    const-string v0, "ByteRingBuffer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ByteRingBuffer error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void

    .line 25
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufSize:I

    .line 26
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBuf:[B

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufPos:I

    .line 28
    iput v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    .line 29
    return-void
.end method

.method private append([BII)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "len"    # I

    .line 136
    if-nez p3, :cond_0

    .line 137
    return-void

    .line 138
    :cond_0
    if-gez p3, :cond_1

    .line 139
    const-string v0, "ByteRingBuffer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "append error pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 142
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufPos:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->clip(I)I

    move-result v0

    .line 143
    .local v0, "p":I
    if-gez v0, :cond_2

    .line 144
    const-string v1, "ByteRingBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "append error p:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 148
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBuf:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ByteRingBuffer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "append ERROR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    .line 153
    return-void
.end method

.method private clip(I)I
    .locals 1
    .param p1, "p"    # I

    .line 203
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufSize:I

    if-ge p1, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufSize:I

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method private remove([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "len"    # I

    .line 187
    if-nez p3, :cond_0

    .line 188
    return-void

    .line 189
    :cond_0
    if-gez p3, :cond_1

    .line 190
    const-string v0, "ByteRingBuffer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove error  pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 194
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBuf:[B

    iget v1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ByteRingBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove ERROR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufPos:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->clip(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufPos:I

    .line 199
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    .line 200
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 73
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufPos:I

    .line 75
    iput v1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public discard(I)V
    .locals 3
    .param p1, "len"    # I

    .line 87
    if-gez p1, :cond_0

    .line 88
    const-string v0, "ByteRingBuffer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discard error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void

    .line 91
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 92
    .local v0, "trLen":I
    iget v1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufPos:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->clip(I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufPos:I

    .line 93
    iget v1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    return-void
.end method

.method public getFree()I
    .locals 2

    .line 61
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufSize:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufSize:I

    return v0
.end method

.method public getUsed()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buf"    # [B

    .line 184
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "len"    # I

    .line 163
    if-gez p3, :cond_0

    .line 164
    const-string v0, "ByteRingBuffer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read error  pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v0, -0x1

    return v0

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 168
    .local v0, "trLen1":I
    const/4 v1, 0x0

    .line 169
    .local v1, "trLen2":I
    sget-object v2, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 170
    :try_start_0
    iget v3, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    iget v4, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufSize:I

    iget v5, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufPos:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v0, v3

    .line 171
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->remove([BII)V

    .line 172
    sub-int v3, p3, v0

    iget v4, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v3

    .line 173
    add-int v3, p2, v0

    invoke-direct {p0, p1, v3, v1}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->remove([BII)V

    .line 174
    monitor-exit v2

    .line 175
    add-int v2, v0, v1

    return v2

    .line 174
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public resize(I)V
    .locals 3
    .param p1, "newSize"    # I

    .line 38
    if-gtz p1, :cond_0

    .line 39
    const-string v0, "ByteRingBuffer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resize error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void

    .line 42
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    if-ge p1, v0, :cond_1

    .line 43
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->discard(I)V

    .line 44
    :cond_1
    new-array v0, p1, [B

    .line 45
    .local v0, "newBuf":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->read([BII)I

    move-result v2

    .line 46
    .local v2, "newBufUsed":I
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBuf:[B

    .line 47
    iput p1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufSize:I

    .line 48
    iput v1, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufPos:I

    .line 49
    iput v2, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    return-void
.end method

.method public write([B)I
    .locals 2
    .param p1, "buf"    # [B

    .line 133
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->write([BII)I

    move-result v0

    return v0
.end method

.method public write([BII)I
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "len"    # I

    .line 103
    const/4 v0, 0x0

    if-gez p3, :cond_0

    .line 104
    const-string v1, "ByteRingBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write error pos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return v0

    .line 107
    :cond_0
    const/4 v1, 0x0

    .line 108
    .local v1, "ret":I
    sget-object v2, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    :try_start_0
    iget v3, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    if-nez v3, :cond_1

    .line 110
    iput v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufPos:I

    .line 111
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufPos:I

    iget v3, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    add-int/2addr v0, v3

    .line 112
    .local v0, "p1":I
    iget v3, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufSize:I

    if-ge v0, v3, :cond_2

    .line 113
    iget v3, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufSize:I

    sub-int/2addr v3, v0

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 114
    .local v3, "trLen1":I
    invoke-direct {p0, p1, p2, v3}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->append([BII)V

    .line 115
    sub-int v4, p3, v3

    iget v5, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufPos:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 116
    .local v4, "trLen2":I
    add-int v5, p2, v3

    invoke-direct {p0, p1, v5, v4}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->append([BII)V

    .line 117
    add-int/2addr v3, v4

    .line 123
    .end local v1    # "ret":I
    .end local v4    # "trLen2":I
    .local v3, "ret":I
    move v1, v3

    goto :goto_0

    .line 119
    .end local v3    # "ret":I
    .restart local v1    # "ret":I
    :cond_2
    iget v3, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufSize:I

    iget v4, p0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->rBufUsed:I

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 120
    .local v3, "trLen":I
    invoke-direct {p0, p1, p2, v3}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->append([BII)V

    .line 121
    move v0, v3

    .line 123
    .end local v1    # "ret":I
    .end local v3    # "trLen":I
    .local v0, "ret":I
    move v1, v0

    .line 123
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    :goto_0
    monitor-exit v2

    .line 124
    return v1

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
