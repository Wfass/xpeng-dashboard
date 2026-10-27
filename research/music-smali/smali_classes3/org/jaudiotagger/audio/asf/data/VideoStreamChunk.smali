.class public Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;
.super Lorg/jaudiotagger/audio/asf/data/StreamChunk;
.source "VideoStreamChunk.java"


# instance fields
.field private codecId:[B

.field private pictureHeight:J

.field private pictureWidth:J


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 53
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    const/4 p1, 0x0

    .line 34
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->codecId:[B

    return-void
.end method


# virtual methods
.method public getCodecId()[B
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->codecId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getCodecIdAsString()Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->codecId:[B

    if-nez v0, :cond_0

    const-string v0, "Unknown"

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->getCodecId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0
.end method

.method public getPictureHeight()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->pictureHeight:J

    return-wide v0
.end method

.method public getPictureWidth()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->pictureWidth:J

    return-wide v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|->VideoStream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Video info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      |->Width  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->getPictureWidth()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      |->Heigth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->getPictureHeight()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "      |->Codec  : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->getCodecIdAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setCodecId([B)V
    .locals 0

    .line 122
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->codecId:[B

    return-void
.end method

.method public setPictureHeight(J)V
    .locals 0

    .line 130
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->pictureHeight:J

    return-void
.end method

.method public setPictureWidth(J)V
    .locals 0

    .line 138
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->pictureWidth:J

    return-void
.end method
