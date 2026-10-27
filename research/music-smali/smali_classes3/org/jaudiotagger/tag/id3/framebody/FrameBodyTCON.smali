.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "FrameBodyTCON.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    return-void
.end method

.method private static bracketWrap(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static checkBracketed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, "("

    .line 276
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ")"

    .line 277
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 280
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 281
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getMaxGenreId()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 282
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getValueForId(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    .line 291
    :catch_0
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    sget-object p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 295
    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    sget-object p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static convertGenericToID3v22Genre(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 228
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->convertGenericToID3v23Genre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertGenericToID3v23Genre(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 185
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 186
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getMaxGenreId()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 188
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->bracketWrap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    .line 198
    :catch_0
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getIdForName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getMaxStandardGenreId()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 202
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->bracketWrap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 206
    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    sget-object p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->bracketWrap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 210
    :cond_2
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    sget-object p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->bracketWrap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 214
    :cond_3
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    sget-object p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->bracketWrap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 218
    :cond_4
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 220
    sget-object p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->bracketWrap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_0
    return-object p0
.end method

.method public static convertGenericToID3v24Genre(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 133
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getMaxGenreId()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 136
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    .line 146
    :catch_0
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getIdForName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getMaxStandardGenreId()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 150
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 154
    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    sget-object p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 158
    :cond_2
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    sget-object p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 162
    :cond_3
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    sget-object p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 166
    :cond_4
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    sget-object p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_0
    return-object p0
.end method

.method public static convertID3v22GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 336
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->convertID3v23GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertID3v23GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ")"

    .line 324
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->checkBracketed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 330
    :cond_0
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->checkBracketed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertID3v24GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 246
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 247
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getMaxGenreId()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 249
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getValueForId(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    .line 258
    :catch_0
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    sget-object p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 262
    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    sget-object p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "TCON"

    return-object v0
.end method

.method public setV23Format()V
    .locals 2

    const-string v0, "Text"

    .line 341
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->getObject(Ljava/lang/String;)Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/TCONString;

    const/4 v1, 0x0

    .line 342
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/datatype/TCONString;->setNullSeperateMultipleValues(Z)V

    return-void
.end method

.method protected setupObjectList()V
    .locals 4

    .line 347
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;

    const-string v2, "TextEncoding"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/jaudiotagger/tag/datatype/TCONString;

    const-string v2, "Text"

    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/TCONString;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
