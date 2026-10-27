.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;
.source "FrameBodyIPLS.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v23FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>(BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(BLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/datatype/Pair;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>()V

    .line 101
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    new-instance p1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    .line 103
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 105
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Lorg/jaudiotagger/tag/datatype/Pair;)V

    goto :goto_0

    :cond_0
    const-string p2, "Text"

    .line 107
    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>()V

    .line 66
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getTextEncoding()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p1

    const-string v0, "Text"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>()V

    .line 89
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->getTextEncoding()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p1

    const-string v0, "Text"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "IPLS"

    return-object v0
.end method
