.class Lorg/jaudiotagger/audio/asf/io/CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "CountingInputStream.java"


# instance fields
.field private markPos:J

.field private readCount:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->markPos:J

    .line 38
    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->readCount:J

    return-void
.end method

.method private declared-synchronized bytesRead(J)V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 50
    :try_start_0
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->readCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->readCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 52
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized getReadCount()J
    .locals 2

    monitor-enter p0

    .line 59
    :try_start_0
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->readCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 69
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->readCount:J

    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->markPos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public read()I
    .locals 3

    .line 78
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const-wide/16 v1, 0x1

    .line 79
    invoke-direct {p0, v1, v2}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->bytesRead(J)V

    return v0
.end method

.method public read([BII)I
    .locals 0

    .line 89
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    int-to-long p2, p1

    .line 90
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->bytesRead(J)V

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 100
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 101
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :try_start_1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->markPos:J

    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->readCount:J

    .line 104
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 104
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    .line 114
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->bytesRead(J)V

    return-wide p1
.end method
