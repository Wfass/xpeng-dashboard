.class public Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;
.super Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;
.source "AsfExtHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader<",
        "Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    const/4 v1, 0x0

    sget-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/audio/asf/io/ChunkReader;",
            ">;>;Z)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;-><init>(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;
    .locals 0

    .line 55
    invoke-static {p4}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 57
    invoke-static {p4}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 58
    invoke-static {p4}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 61
    new-instance p4, Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;

    invoke-direct {p4, p1, p2, p3}, Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;-><init>(JLjava/math/BigInteger;)V

    return-object p4
.end method

.method protected bridge synthetic createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;->createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;

    move-result-object p1

    return-object p1
.end method

.method public getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;
    .locals 1

    .line 69
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    return-object v0
.end method
