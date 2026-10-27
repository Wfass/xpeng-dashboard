.class public Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;
.super Ljava/lang/Object;
.source "MetadataBlockDataPicture.java"

# interfaces
.implements Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;
.implements Lorg/jaudiotagger/tag/TagField;


# static fields
.field public static final IMAGE_IS_URL:Ljava/lang/String; = "-->"

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private colourDepth:I

.field private description:Ljava/lang/String;

.field private height:I

.field private imageData:[B

.field private indexedColouredCount:I

.field private lengthOfPictureInBytes:I

.field private mimeType:Ljava/lang/String;

.field private pictureType:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.flac.MetadataBlockDataPicture"

    .line 58
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->initFromByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 121
    invoke-virtual {p2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p2

    .line 122
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 127
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->initFromByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read required number of databytes read:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":required:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 146
    iput p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    if-eqz p3, :cond_0

    .line 151
    iput-object p3, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 155
    :cond_0
    iput-object p4, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    .line 157
    iput p5, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    .line 159
    iput p6, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    .line 161
    iput p7, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    .line 163
    iput p8, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    .line 165
    iput-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    return-void
.end method

.method private getString(Ljava/nio/ByteBuffer;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 170
    new-array p2, p2, [B

    .line 171
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 172
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method private initFromByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    .line 64
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    invoke-static {}, Lorg/jaudiotagger/tag/reference/PictureTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/PictureTypes;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/reference/PictureTypes;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 71
    sget-object v1, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getString(Ljava/nio/ByteBuffer;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 75
    sget-object v1, Lorg/jaudiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getString(Ljava/nio/ByteBuffer;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    .line 84
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->lengthOfPictureInBytes:I

    .line 91
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->lengthOfPictureInBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    .line 92
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 94
    sget-object p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read image:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PictureType was:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "but the maximum allowed is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/jaudiotagger/tag/reference/PictureTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/PictureTypes;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/reference/PictureTypes;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .locals 0

    .line 281
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getBytes()Ljava/nio/ByteBuffer;
    .locals 3

    .line 179
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 181
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 182
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 183
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 184
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 185
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 186
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 187
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 188
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 189
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    array-length v1, v1

    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 190
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 191
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getColourDepth()I
    .locals 1

    .line 232
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 227
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 294
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageData()[B
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 5

    .line 258
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageData()[B

    move-result-object v3

    array-length v3, v3

    sget-object v4, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getIndexedColourCount()I
    .locals 1

    .line 237
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 202
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureType()I
    .locals 1

    .line 207
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    return v0
.end method

.method public getRawContent()[B
    .locals 1

    .line 310
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 222
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    return v0
.end method

.method public isBinary(Z)V
    .locals 0

    return-void
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCommon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isImageUrl()Z
    .locals 2

    .line 250
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/jaudiotagger/tag/reference/PictureTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/PictureTypes;

    move-result-object v1

    iget v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/tag/reference/PictureTypes;->getValueForId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":colourdepth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":indexedColourCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":image size in bytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->lengthOfPictureInBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
