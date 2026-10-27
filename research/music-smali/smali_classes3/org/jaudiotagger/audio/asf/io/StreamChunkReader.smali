.class public Lorg/jaudiotagger/audio/asf/io/StreamChunkReader;
.super Ljava/lang/Object;
.source "StreamChunkReader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 39
    new-array v0, v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/jaudiotagger/audio/asf/io/StreamChunkReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;
    .locals 1

    .line 62
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/StreamChunkReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    return-object v0
.end method

.method public read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/Chunk;
    .locals 23

    move-object/from16 v0, p2

    .line 71
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    .line 74
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v2

    .line 75
    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-virtual {v3, v2}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-virtual {v3, v2}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 80
    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v3

    .line 84
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v4

    .line 86
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v6

    .line 87
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v8

    .line 93
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v10

    and-int/lit8 v11, v10, 0x7f

    const v12, 0x8000

    and-int/2addr v10, v12

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    const-wide/16 v12, 0x4

    .line 100
    invoke-virtual {v0, v12, v13}, Ljava/io/InputStream;->skip(J)J

    .line 109
    sget-object v12, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-virtual {v12, v2}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    new-instance v2, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;

    invoke-direct {v2, v1}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;-><init>(Ljava/math/BigInteger;)V

    .line 120
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v12

    int-to-long v12, v12

    .line 121
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v14

    int-to-long v14, v14

    move-wide/from16 v16, v4

    .line 122
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v4

    move-wide/from16 v18, v6

    .line 123
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v6

    move/from16 p1, v10

    .line 124
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v10

    move-wide/from16 v20, v8

    int-to-long v8, v10

    .line 125
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v10

    move/from16 v22, v11

    .line 126
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v11

    .line 127
    new-array v11, v11, [B

    .line 128
    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    .line 130
    invoke-virtual {v2, v12, v13}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setCompressionFormat(J)V

    .line 131
    invoke-virtual {v2, v14, v15}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setChannelCount(J)V

    .line 132
    invoke-virtual {v2, v4, v5}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setSamplingRate(J)V

    .line 133
    invoke-virtual {v2, v6, v7}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setAverageBytesPerSec(J)V

    .line 134
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setErrorConcealment(Lorg/jaudiotagger/audio/asf/data/GUID;)V

    .line 135
    invoke-virtual {v2, v8, v9}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setBlockAlignment(J)V

    .line 136
    invoke-virtual {v2, v10}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setBitsPerSample(I)V

    .line 137
    invoke-virtual {v2, v11}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setCodecData([B)V

    .line 139
    array-length v3, v11

    add-int/lit8 v3, v3, 0x12

    int-to-long v3, v3

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move/from16 p1, v10

    move/from16 v22, v11

    .line 146
    new-instance v2, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;

    invoke-direct {v2, v1}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;-><init>(Ljava/math/BigInteger;)V

    .line 149
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v3

    .line 150
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    .line 153
    invoke-virtual {v0, v7, v8}, Ljava/io/InputStream;->skip(J)J

    const-wide/16 v7, 0x2

    .line 159
    invoke-virtual {v0, v7, v8}, Ljava/io/InputStream;->skip(J)J

    const-wide/16 v7, 0x10

    .line 161
    invoke-virtual {v0, v7, v8}, Ljava/io/InputStream;->skip(J)J

    const/4 v7, 0x4

    .line 162
    new-array v7, v7, [B

    .line 163
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    .line 165
    invoke-virtual {v2, v3, v4}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->setPictureWidth(J)V

    .line 166
    invoke-virtual {v2, v5, v6}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->setPictureHeight(J)V

    .line 167
    invoke-virtual {v2, v7}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->setCodecId([B)V

    const-wide/16 v3, 0x1f

    :goto_2
    move-wide v4, v3

    move-object v3, v2

    move/from16 v2, v22

    .line 175
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->setStreamNumber(I)V

    move-wide/from16 v6, v20

    .line 176
    invoke-virtual {v3, v6, v7}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->setStreamSpecificDataSize(J)V

    move-wide/from16 v6, v18

    .line 177
    invoke-virtual {v3, v6, v7}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->setTypeSpecificDataSize(J)V

    move-wide/from16 v6, v16

    .line 178
    invoke-virtual {v3, v6, v7}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->setTimeOffset(J)V

    move/from16 v10, p1

    .line 179
    invoke-virtual {v3, v10}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->setContentEncrypted(Z)V

    move-wide/from16 v6, p3

    .line 180
    invoke-virtual {v3, v6, v7}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->setPosition(J)V

    .line 186
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    const-wide/16 v6, 0x18

    sub-long/2addr v1, v6

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x36

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-object v0, v3

    :goto_3
    return-object v0
.end method
