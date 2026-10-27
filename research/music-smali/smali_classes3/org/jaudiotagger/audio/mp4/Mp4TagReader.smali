.class public Lorg/jaudiotagger/audio/mp4/Mp4TagReader;
.super Ljava/lang/Object;
.source "Mp4TagReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.tag.mp4"

    .line 78
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createMp4Field(Lorg/jaudiotagger/tag/mp4/Mp4Tag;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 188
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 193
    :cond_0
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 198
    :try_start_0
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 199
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 203
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_UNABLE_READ_REVERSE_DNS_FIELD:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {v4, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 204
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 205
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto/16 :goto_4

    .line 211
    :cond_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 212
    sget-object v3, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v4, 0x4

    invoke-static {p3, v4, v4, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 213
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz v3, :cond_d

    const/16 v0, 0xb

    const/16 v3, 0x9

    .line 217
    invoke-static {p3, v3, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 218
    invoke-static {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->getFieldType(I)Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object v3

    .line 219
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Box Type id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v5}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 225
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto/16 :goto_4

    .line 227
    :cond_2
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v5}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 229
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 230
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto/16 :goto_4

    .line 232
    :cond_3
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v5}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 234
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 235
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto/16 :goto_4

    .line 237
    :cond_4
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v5}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v3}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->isCoverArtType(Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_2

    .line 258
    :cond_5
    sget-object v4, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    if-ne v3, v4, :cond_6

    .line 260
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 261
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto/16 :goto_4

    .line 263
    :cond_6
    sget-object v4, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    if-ne v3, v4, :cond_7

    .line 265
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 266
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto/16 :goto_4

    .line 268
    :cond_7
    sget-object v4, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->INTEGER:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    if-ne v3, v4, :cond_8

    .line 270
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 271
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto/16 :goto_4

    .line 276
    :cond_8
    invoke-static {}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->values()[Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_0
    const-string v6, " with invalid field type of:"

    if-ge v5, v4, :cond_a

    aget-object v7, v3, v5

    .line 278
    invoke-virtual {v7}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 285
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Known Field:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is ignored"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_a
    :goto_1
    if-nez v1, :cond_f

    .line 293
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnKnown Field:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " created as binary"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 294
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 295
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_4

    :cond_b
    :goto_2
    move v0, v1

    .line 242
    :goto_3
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v4

    if-ge v1, v4, :cond_f

    if-lez v0, :cond_c

    add-int/lit8 v3, v1, 0x9

    add-int/lit8 v4, v3, 0x3

    sub-int/2addr v4, v2

    .line 248
    invoke-static {p3, v3, v4}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 250
    invoke-static {v3}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->getFieldType(I)Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object v3

    .line 252
    :cond_c
    new-instance v4, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;

    invoke-direct {v4, p3, v3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;-><init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;)V

    .line 253
    invoke-virtual {p1, v4}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 254
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->getDataAndHeaderSize()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 304
    :cond_d
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->AAPR:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 306
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 307
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_4

    .line 312
    :cond_e
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 313
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    :cond_f
    :goto_4
    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/mp4/Mp4Tag;
    .locals 7

    .line 88
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 89
    new-instance v1, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    invoke-direct {v1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    .line 93
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MOOV:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 100
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 103
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 107
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-nez p1, :cond_0

    .line 110
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v1

    .line 113
    :cond_0
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    invoke-direct {v2, p1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 114
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->processData()V

    .line 117
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-nez p1, :cond_3

    .line 121
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v1

    .line 128
    :cond_1
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-nez p1, :cond_2

    .line 131
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v1

    .line 134
    :cond_2
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    invoke-direct {v2, p1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 135
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->processData()V

    .line 139
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-nez p1, :cond_3

    .line 143
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v1

    .line 150
    :cond_3
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 153
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "headerlengthsays:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "datalength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 155
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started to read metadata fields at position is in metadata buffer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :goto_0
    if-ge v3, v2, :cond_4

    .line 159
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V

    .line 163
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Next position is at:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {p0, v1, p1, v4}, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->createMp4Field(Lorg/jaudiotagger/tag/mp4/Mp4Tag;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 167
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_4
    return-object v1

    .line 96
    :cond_5
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_CONTAINER:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
