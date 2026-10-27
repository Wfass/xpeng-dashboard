.class public Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderModifier;
.super Ljava/lang/Object;
.source "AsfExtHeaderModifier.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/ChunkModifier;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final modifierList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/asf/io/ChunkModifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/asf/io/ChunkModifier;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderModifier;->modifierList:Ljava/util/List;

    return-void
.end method

.method private copyChunk(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    .line 56
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 57
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 58
    invoke-static {v0, v1, p3}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    const-wide/16 v2, 0x18

    sub-long/2addr v0, v2

    .line 59
    invoke-static {p2, p3, v0, v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    return-void
.end method


# virtual methods
.method public isApplicable(Lorg/jaudiotagger/audio/asf/data/GUID;)Z
    .locals 1

    .line 67
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public modify(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jaudiotagger/audio/asf/io/ModificationResult;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-wide/16 v2, 0x0

    .line 78
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderModifier;->modifierList:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v6, p1

    .line 80
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v6

    .line 83
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v7

    .line 84
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v8

    .line 85
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v9

    .line 93
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    new-instance v12, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;

    move-object/from16 v13, p2

    invoke-direct {v12, v13}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    :goto_0
    invoke-virtual {v12}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->getReadCount()J

    move-result-wide v13

    cmp-long v13, v13, v9

    const/4 v14, 0x0

    if-gez v13, :cond_3

    .line 103
    invoke-static {v12}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v13

    move-wide v15, v2

    move v2, v14

    .line 105
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_1

    if-nez v2, :cond_1

    .line 107
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;

    invoke-interface {v3, v13}, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;->isApplicable(Lorg/jaudiotagger/audio/asf/data/GUID;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;

    invoke-interface {v2, v13, v12, v11}, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;->modify(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->getByteDifference()J

    move-result-wide v17

    add-long v15, v15, v17

    .line 111
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->getOccuredGUIDs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-interface {v4, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 118
    invoke-interface {v5, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {v0, v13, v12, v11}, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderModifier;->copyChunk(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :cond_2
    move-wide v2, v15

    goto :goto_0

    .line 123
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;

    const/4 v13, 0x0

    .line 127
    invoke-interface {v12, v13, v13, v11}, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;->modify(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    move-result-object v12

    .line 128
    invoke-virtual {v12}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->getByteDifference()J

    move-result-wide v15

    add-long/2addr v2, v15

    .line 129
    invoke-virtual {v12}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->getOccuredGUIDs()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 131
    :cond_4
    sget-object v4, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 132
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13, v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 133
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 134
    invoke-static {v8, v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    add-long/2addr v9, v2

    .line 135
    invoke-static {v9, v10, v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 136
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 137
    new-instance v1, Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    invoke-direct {v1, v14, v2, v3, v5}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;-><init>(IJLjava/util/Set;)V

    return-object v1
.end method
