.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;
.source "FrameBodyTRCK.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>(BLjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>(BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "TRCK"

    return-object v0
.end method

.method public getTrackNo()Ljava/lang/Integer;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getNumber()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTrackNoAsText()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getNumberAsText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackTotal()Ljava/lang/Integer;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTotal()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTrackTotalAsText()Ljava/lang/String;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTotalAsText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 142
    new-instance v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/String;)V

    const-string p1, "Text"

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrackNo(Ljava/lang/Integer;)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->setNumber(Ljava/lang/Integer;)V

    return-void
.end method

.method public setTrackNo(Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->setNumber(Ljava/lang/String;)V

    return-void
.end method

.method public setTrackTotal(Ljava/lang/Integer;)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->setTotal(Ljava/lang/Integer;)V

    return-void
.end method

.method public setTrackTotal(Ljava/lang/String;)V
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->setTotal(Ljava/lang/String;)V

    return-void
.end method
