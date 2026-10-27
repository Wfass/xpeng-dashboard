.class public Lorg/jaudiotagger/audio/iff/ChunkSummary;
.super Ljava/lang/Object;
.source "ChunkSummary.java"


# instance fields
.field private chunkId:Ljava/lang/String;

.field private chunkSize:J

.field private fileStartLocation:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->chunkId:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->fileStartLocation:J

    .line 18
    iput-wide p4, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->chunkSize:J

    return-void
.end method


# virtual methods
.method public getChunkId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->chunkId:Ljava/lang/String;

    return-object v0
.end method

.method public getChunkSize()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->chunkSize:J

    return-wide v0
.end method

.method public getEndLocation()J
    .locals 4

    .line 35
    iget-wide v0, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->fileStartLocation:J

    iget-wide v2, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->chunkSize:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getFileStartLocation()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->fileStartLocation:J

    return-wide v0
.end method

.method public setChunkId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->chunkId:Ljava/lang/String;

    return-void
.end method

.method public setChunkSize(J)V
    .locals 0

    .line 64
    iput-wide p1, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->chunkSize:J

    return-void
.end method

.method public setFileStartLocation(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->fileStartLocation:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 24
    iget-wide v0, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->fileStartLocation:J

    iget-wide v2, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->chunkSize:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->chunkId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":StartLocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->fileStartLocation:J

    .line 26
    invoke-static {v3, v4}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":SizeIncHeader:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;->chunkSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":EndLocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {v0, v1}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
