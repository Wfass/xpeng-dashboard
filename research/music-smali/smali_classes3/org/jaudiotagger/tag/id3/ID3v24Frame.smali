.class public Lorg/jaudiotagger/tag/id3/ID3v24Frame;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
.source "ID3v24Frame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;,
        Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;
    }
.end annotation


# static fields
.field protected static final FRAME_DATA_LENGTH_SIZE:I = 0x4

.field protected static final FRAME_ENCRYPTION_INDICATOR_SIZE:I = 0x1

.field protected static final FRAME_FLAGS_SIZE:I = 0x2

.field protected static final FRAME_GROUPING_INDICATOR_SIZE:I = 0x1

.field protected static final FRAME_HEADER_SIZE:I = 0xa

.field protected static final FRAME_ID_SIZE:I = 0x4

.field protected static final FRAME_SIZE_SIZE:I = 0x4

.field private static validFrameIdentifier:Ljava/util/regex/Pattern;


# instance fields
.field private encryptionMethod:I

.field private groupIdentifier:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[A-Z][0-9A-Z]{3}"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-direct {p1, p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;)V

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 107
    new-instance p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-direct {p1, p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;)V

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const-string v0, ""

    .line 358
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 0

    .line 343
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 344
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 3

    .line 210
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 212
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    if-nez v0, :cond_4

    .line 216
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_0

    .line 218
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getStatusFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-direct {v1, p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;)V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 219
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getEncodingFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result v2

    invoke-direct {v1, p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    goto :goto_0

    .line 221
    :cond_0
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    if-eqz v1, :cond_1

    .line 223
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-direct {v1, p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;)V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 224
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-direct {v1, p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;)V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 233
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->createV24FrameFromV23Frame(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V

    goto :goto_1

    .line 235
    :cond_2
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    if-eqz v0, :cond_3

    .line 237
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 238
    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->createV24FrameFromV23Frame(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V

    .line 240
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    return-void

    .line 214
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;Ljava/lang/String;)V
    .locals 1

    .line 194
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 195
    iput-object p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    .line 196
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getStatusFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-direct {p2, p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;)V

    iput-object p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 197
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getEncodingFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result p1

    invoke-direct {p2, p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V

    iput-object p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;)V
    .locals 2

    .line 118
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 119
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getStatusFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 120
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getEncodingFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result p1

    invoke-direct {v0, p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V
    .locals 12

    .line 252
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 253
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IND"

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "LYR"

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ENG"

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 261
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    .line 263
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 266
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->hasTimeStamp()Z

    move-result p1

    .line 269
    new-instance v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    new-array v11, v4, [B

    const-string v7, "ENG"

    const-string v10, ""

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;-><init>(ILjava/lang/String;IILjava/lang/String;[B)V

    .line 270
    new-instance v5, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    invoke-direct {v5, v4, v2, v3, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v5, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;->addLyric(Lorg/jaudiotagger/tag/datatype/Lyrics3Line;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 285
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 286
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_1

    .line 290
    :cond_2
    iput-object v5, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 291
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "INF"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 296
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyINF;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyINF;->getAdditionalInformation()Ljava/lang/String;

    move-result-object p1

    .line 297
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-direct {v0, v4, v2, v3, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 298
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "AUT"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 302
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;->getAuthor()Ljava/lang/String;

    move-result-object p1

    .line 303
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCOM;

    invoke-direct {v0, v4, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCOM;-><init>(BLjava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 304
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto :goto_1

    :cond_5
    const-string v1, "EAL"

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 308
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAL;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAL;->getAlbum()Ljava/lang/String;

    move-result-object p1

    .line 309
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTALB;

    invoke-direct {v0, v4, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTALB;-><init>(BLjava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 310
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto :goto_1

    :cond_6
    const-string v1, "EAR"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 314
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAR;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAR;->getArtist()Ljava/lang/String;

    move-result-object p1

    .line 315
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE1;

    invoke-direct {v0, v4, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE1;-><init>(BLjava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 316
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto :goto_1

    :cond_7
    const-string v1, "ETT"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 320
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyETT;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyETT;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 321
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT2;

    invoke-direct {v0, v4, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT2;-><init>(BLjava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 322
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    :goto_1
    return-void

    :cond_8
    const-string p1, "IMG"

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 326
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    const-string v0, "Cannot create ID3v2.40 frame from Lyrics3 image field."

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 330
    :cond_9
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot caret ID3v2.40 frame from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Lyrics3 field"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_a
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    const-string v0, "Cannot create ID3v2.40 frame from Lyrics3 indications field."

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkIfFrameSizeThatIsNotSyncSafe(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 402
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    const/16 v1, 0x7f

    if-le v0, v1, :cond_8

    .line 405
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 408
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 409
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 413
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 414
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->isBufferNotSyncSafe(Ljava/nio/ByteBuffer;)Z

    move-result v2

    .line 417
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz v2, :cond_1

    .line 421
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Frame size is NOT stored as a sync safe integer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    move-result v0

    neg-int v0, v0

    sub-int/2addr p1, v0

    if-gt v1, p1, :cond_0

    .line 432
    iput v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    goto/16 :goto_0

    .line 427
    :cond_0
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Invalid Frame size larger than size before mp3 audio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 428
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is invalid frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 441
    :cond_1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v2

    new-array v2, v2, [B

    .line 442
    iget v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 444
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 448
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 452
    :cond_2
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 455
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 457
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 458
    invoke-virtual {p0, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 462
    :cond_3
    invoke-static {v2}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->isBufferEmpty([B)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_0

    .line 473
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_5

    .line 476
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 480
    :cond_5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v2

    new-array v2, v2, [B

    add-int v3, v0, v1

    .line 481
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 483
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v5

    if-lt v3, v5, :cond_7

    .line 485
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v3

    invoke-virtual {p1, v2, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 486
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 489
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 493
    invoke-virtual {p0, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result p1

    const-string v0, ":Assuming frame size is NOT stored as a sync safe integer:"

    if-eqz p1, :cond_6

    .line 495
    iput v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    .line 496
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_6
    invoke-static {v2}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->isBufferEmpty([B)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 504
    iput v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    .line 505
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_7
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 520
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-nez p1, :cond_8

    .line 522
    iput v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    :cond_8
    :goto_0
    return-void
.end method

.method private createV24FrameFromV23Frame(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V
    .locals 4

    .line 126
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->convertFrameID23To24(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    .line 127
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating V24frame from v23:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    const-string v1, ":New id is:"

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 134
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 135
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    .line 136
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V3:UnsupportedBody:Orig id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    const-string v2, "V3:Orig id is:"

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TXXX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MOOD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMOO;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMOO;-><init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 144
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 145
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    goto/16 :goto_0

    .line 149
    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 151
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_0

    .line 155
    :cond_2
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->isID3v23FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->forceFrameID23To24(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 160
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->readBody(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 162
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    goto :goto_0

    .line 168
    :cond_3
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 169
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 170
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    .line 171
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V3:Deprecated:Orig id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_4
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 178
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 179
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    .line 180
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V3:Unknown:Orig id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getFrameSize(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 547
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    .line 549
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    const-string v1, " is invalid frame"

    if-ltz v0, :cond_2

    .line 554
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    if-eqz v0, :cond_1

    .line 563
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-gt v0, v2, :cond_0

    .line 569
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->checkIfFrameSizeThatIsNotSyncSafe(Ljava/nio/ByteBuffer;)V

    return-void

    .line 565
    :cond_0
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Invalid Frame size larger than size before mp3 audio:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 566
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 556
    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Empty Frame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 560
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 561
    new-instance p1, Lorg/jaudiotagger/tag/EmptyFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is empty frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/EmptyFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 551
    :cond_2
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Invalid Frame size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 552
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createStructure()V
    .locals 4

    .line 1122
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "frame"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    const-string v3, "frameSize"

    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1124
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->createStructure()V

    .line 1125
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->createStructure()V

    .line 1126
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->createStructure()V

    .line 1127
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 370
    :cond_0
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 374
    :cond_1
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 377
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    iget-object v3, p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    iget-object v3, p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getEncodingFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;
    .locals 1

    .line 786
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-object v0
.end method

.method public getEncryptionMethod()I
    .locals 1

    .line 791
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encryptionMethod:I

    return v0
.end method

.method protected getFrameFlagsSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getFrameHeaderSize()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected getFrameIdSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getFrameSizeSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getGroupIdentifier()I
    .locals 1

    .line 796
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->groupIdentifier:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStatusFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
    .locals 1

    .line 778
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    return-object v0
.end method

.method public isBinary()Z
    .locals 2

    .line 1143
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->isBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCommon()Z
    .locals 2

    .line 1135
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->isCommon(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidID3v2FrameIdentifier(Ljava/lang/String;)Z
    .locals 1

    .line 1113
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1114
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 580
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->readIdentifier(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 593
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameSize(Ljava/nio/ByteBuffer;)V

    .line 596
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-direct {v1, p0, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 597
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-direct {v1, p0, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 604
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v4, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isGrouping()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 607
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->groupIdentifier:I

    move v1, v2

    .line 610
    :cond_0
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isEncryption()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 614
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encryptionMethod:I

    .line 617
    :cond_1
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isDataLengthIndicator()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 620
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v3

    add-int/lit8 v1, v1, 0x4

    .line 622
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":Frame Size Is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Data Length Size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 626
    :cond_2
    iget v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    sub-int/2addr v2, v1

    .line 629
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 630
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 634
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v4, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isUnsynchronised()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 641
    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 642
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 643
    sget-object v5, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":Frame Size After Syncing is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v4, v2

    .line 649
    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v5, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v5}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isCompression()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 651
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, v3, v2}, Lorg/jaudiotagger/tag/id3/ID3Compression;->uncompress(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 652
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v4, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isEncryption()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 654
    invoke-virtual {p0, v0, v1, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_1

    .line 658
    :cond_4
    invoke-virtual {p0, v0, v1, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_1

    .line 661
    :cond_5
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isEncryption()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 663
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 664
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 665
    iget v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameSize:I

    invoke-virtual {p0, v0, p1, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_1

    .line 669
    :cond_6
    invoke-virtual {p0, v0, v1, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 671
    :goto_1
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;

    if-nez v1, :cond_7

    .line 673
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":Converted frame body with:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to deprecated framebody"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 674
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;

    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 681
    throw v0

    .line 587
    :cond_8
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":Invalid identifier:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v3

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 589
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameIdentifierException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":is not a valid ID3v2.30 frame"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameIdentifierException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 2

    .line 1153
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getIdForCharset(Ljava/nio/charset/Charset;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1156
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1158
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    :cond_0
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 7

    .line 693
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing frame to file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 697
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 700
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 701
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v2, v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 704
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 705
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 708
    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v1

    .line 709
    sget-object v4, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bodybytebuffer:sizeafterunsynchronisation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 715
    :cond_1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 717
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    .line 719
    :cond_2
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v3, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 723
    array-length v3, v1

    .line 724
    sget-object v4, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Frame Size Is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 725
    invoke-static {v3}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 729
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 732
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->unsetNonStandardFlags()V

    if-eqz v2, :cond_3

    .line 737
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->setUnsynchronised()V

    goto :goto_1

    .line 741
    :cond_3
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->unsetUnsynchronised()V

    .line 744
    :goto_1
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->unsetCompression()V

    .line 745
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->unsetDataLengthIndicator()V

    .line 746
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 751
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 753
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isEncryption()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 755
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encryptionMethod:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 758
    :cond_4
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isGrouping()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 760
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->groupIdentifier:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 764
    :cond_5
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 769
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
