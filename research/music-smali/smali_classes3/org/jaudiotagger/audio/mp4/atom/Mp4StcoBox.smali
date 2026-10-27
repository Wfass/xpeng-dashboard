.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4StcoBox.java"


# static fields
.field public static final NO_OF_OFFSETS_LENGTH:I = 0x4

.field public static final NO_OF_OFFSETS_POS:I = 0x4

.field public static final OFFSET_LENGTH:I = 0x4

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final OTHER_FLAG_POS:I = 0x1

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field public static final VERSION_FLAG_POS:I


# instance fields
.field private firstOffSet:I

.field private noOfOffSets:I


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 38
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 41
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 42
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 44
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 50
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->firstOffSet:I

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 110
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 111
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 114
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 117
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, p2, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 121
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    :goto_0
    iget p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    if-ge v0, p1, :cond_0

    .line 125
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, p2, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p1

    add-int/2addr p1, p3

    .line 129
    iget-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static debugShowStcoInfo(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 234
    invoke-static {p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getStco(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->printAllOffsets()V

    return-void
.end method

.method public static getStco(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;
    .locals 3

    .line 155
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    .line 156
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MOOV:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    const-string v1, "This file does not appear to be an audio file"

    if-eqz v0, :cond_8

    .line 161
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 163
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 167
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MVHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 172
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 173
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;

    invoke-direct {v2, p0, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 174
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p0

    add-int/2addr v2, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    .line 178
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    if-eqz p0, :cond_6

    .line 185
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDIA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 192
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 199
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p0

    add-int/2addr v2, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 200
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MINF:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 208
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->SMHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 213
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p0

    add-int/2addr v2, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->STBL:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 223
    sget-object p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->STCO:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 228
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    invoke-direct {v1, p0, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    return-object v1

    .line 226
    :cond_0
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :cond_1
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_2
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :cond_3
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_4
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_5
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_6
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    :cond_7
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 159
    :cond_8
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public adjustOffsets(I)V
    .locals 4

    .line 89
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 90
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 91
    :goto_0
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    add-int/2addr v1, p1

    .line 97
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFirstOffSet()I
    .locals 1

    .line 150
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->firstOffSet:I

    return v0
.end method

.method public getNoOfOffSets()I
    .locals 1

    .line 140
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    return v0
.end method

.method public printAllOffsets()V
    .locals 5

    .line 72
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Print Offsets:start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 74
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 75
    :goto_0
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "offset into audio data is:"

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 78
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 81
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Print Offsets:end"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public printTotalOffset()V
    .locals 5

    .line 56
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 57
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    move v1, v0

    .line 58
    :goto_0
    iget v2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 60
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v4}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v2

    add-int/2addr v1, v2

    .line 61
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v0

    add-int/2addr v1, v0

    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Print Offset Total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
