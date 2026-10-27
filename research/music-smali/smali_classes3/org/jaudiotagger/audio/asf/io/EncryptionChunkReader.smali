.class Lorg/jaudiotagger/audio/asf/io/EncryptionChunkReader;
.super Ljava/lang/Object;
.source "EncryptionChunkReader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 43
    new-array v0, v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/jaudiotagger/audio/asf/io/EncryptionChunkReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;
    .locals 1

    .line 66
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/EncryptionChunkReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    return-object v0
.end method

.method public read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/Chunk;
    .locals 7

    .line 75
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    .line 76
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;-><init>(Ljava/math/BigInteger;)V

    .line 92
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v1

    long-to-int p1, v1

    add-int/lit8 v1, p1, 0x1

    .line 94
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p2, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    .line 96
    aput-byte v2, v1, p1

    .line 100
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v3

    long-to-int p1, v3

    add-int/lit8 v3, p1, 0x1

    .line 102
    new-array v3, v3, [B

    .line 103
    invoke-virtual {p2, v3, v2, p1}, Ljava/io/InputStream;->read([BII)I

    .line 104
    aput-byte v2, v3, p1

    .line 108
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int p1, v4

    add-int/lit8 v4, p1, 0x1

    .line 110
    new-array v4, v4, [B

    .line 111
    invoke-virtual {p2, v4, v2, p1}, Ljava/io/InputStream;->read([BII)I

    .line 112
    aput-byte v2, v4, p1

    .line 116
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v5

    long-to-int p1, v5

    add-int/lit8 v5, p1, 0x1

    .line 118
    new-array v5, v5, [B

    .line 119
    invoke-virtual {p2, v5, v2, p1}, Ljava/io/InputStream;->read([BII)I

    .line 120
    aput-byte v2, v5, p1

    .line 122
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->setSecretData(Ljava/lang/String;)V

    .line 123
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->setProtectionType(Ljava/lang/String;)V

    .line 124
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->setKeyID(Ljava/lang/String;)V

    .line 125
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->setLicenseURL(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p3, p4}, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->setPosition(J)V

    return-object v0
.end method
