.class public Lorg/jaudiotagger/tag/flac/FlacTag;
.super Ljava/lang/Object;
.source "FlacTag.java"

# interfaces
.implements Lorg/jaudiotagger/tag/Tag;


# instance fields
.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/jaudiotagger/tag/flac/FlacTag;-><init>(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 37
    iput-object p2, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 272
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 273
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public varargs addField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 195
    aget-object v1, p2, v0

    if-eqz v1, :cond_6

    .line 199
    aget-object p2, p2, v0

    .line 200
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_5

    .line 202
    sget-object v1, Lorg/jaudiotagger/tag/flac/FlacTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getVorbisAlbumArtistSaveOptions()Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 234
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 235
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 236
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void

    .line 226
    :cond_1
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 227
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 228
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 218
    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 219
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 220
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 206
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 212
    :cond_4
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 213
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void

    .line 244
    :cond_5
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 245
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    :goto_0
    return-void

    .line 197
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 1

    .line 58
    instance-of v0, p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    check-cast p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    :goto_0
    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/images/Artwork;)V
    .locals 0

    .line 547
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public createArtworkField([BILjava/lang/String;Ljava/lang/String;IIII)Lorg/jaudiotagger/tag/TagField;
    .locals 10

    if-eqz p1, :cond_0

    .line 488
    new-instance v9, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v9

    .line 486
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    const-string v1, "ImageData cannot be null"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCompilationField(Z)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 623
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createCompilationField(Z)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public createField(Ljava/lang/String;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 341
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 343
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 301
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/FieldKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 303
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .locals 10

    .line 510
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 513
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 514
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getPictureType()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, "-->"

    const-string v5, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v0

    .line 524
    :cond_0
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->setImageFromData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    new-instance v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v2

    .line 530
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getPictureType()I

    move-result v3

    .line 531
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 532
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 533
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getWidth()I

    move-result v6

    .line 534
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v0

    .line 526
    :cond_1
    new-instance p1, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    const-string v0, "Unable to createField buffered image from the image"

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 322
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 324
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createLinkedArtworkField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 10

    .line 500
    new-instance v9, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    sget-object v0, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object p1, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "-->"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v9
.end method

.method public deleteArtworkField()V
    .locals 1

    .line 579
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/flac/FlacTag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V

    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 1

    .line 432
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object p1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .locals 1

    .line 420
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/FieldKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object p1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V

    :goto_0
    return-void
.end method

.method public getAll(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    if-eq p1, v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getAll(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 554
    iget-object v1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 556
    invoke-static {v2}, Lorg/jaudiotagger/tag/images/ArtworkFactory;->createArtworkFromMetadataBlockDataPicture(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)Lorg/jaudiotagger/tag/images/Artwork;

    move-result-object v2

    .line 557
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFieldCount()I
    .locals 2

    .line 451
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFieldCount()I

    move-result v0

    iget-object v1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 1

    .line 456
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/flac/FlacTag;->getFieldCount()I

    move-result v0

    return v0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFields()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 70
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 75
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 81
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 467
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/FieldKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 470
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 472
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 478
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 350
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 352
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/flac/FlacTag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirstArtwork()Lorg/jaudiotagger/tag/images/Artwork;
    .locals 2

    .line 564
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/flac/FlacTag;->getArtworkList()Ljava/util/List;

    move-result-object v0

    .line 565
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 567
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/images/Artwork;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 379
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object p1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 383
    iget-object p1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 392
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    if-eqz p1, :cond_1

    .line 403
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_0

    .line 405
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 400
    :cond_1
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    return-object v0
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 1

    .line 362
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/FieldKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 364
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_RETRIEVED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getVorbisCommentTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    return-object v0
.end method

.method public hasCommonFields()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->hasCommonFields()Z

    move-result v0

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .line 611
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iget-object p1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 617
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->hasField(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasField(Lorg/jaudiotagger/tag/FieldKey;)Z
    .locals 1

    .line 589
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    .line 591
    iget-object p1, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 595
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->hasField(Lorg/jaudiotagger/tag/FieldKey;)Z

    move-result p1

    return p1
.end method

.method public hasField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Z
    .locals 1

    .line 606
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->hasField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 1

    .line 462
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setEncoding(Ljava/nio/charset/Charset;)Z

    move-result p1

    return p1
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 259
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 260
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public varargs setField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 128
    aget-object v1, p2, v0

    if-eqz v1, :cond_6

    .line 132
    aget-object p2, p2, v0

    .line 133
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_5

    .line 135
    sget-object v1, Lorg/jaudiotagger/tag/flac/FlacTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getVorbisAlbumArtistSaveOptions()Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 170
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void

    .line 161
    :cond_1
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 163
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 155
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_3
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 147
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void

    .line 139
    :cond_4
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void

    .line 179
    :cond_5
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    :goto_0
    return-void

    .line 130
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 2

    .line 282
    instance-of v0, p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    check-cast p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    check-cast p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/tag/flac/FlacTag;->tag:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    :goto_0
    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/images/Artwork;)V
    .locals 0

    .line 542
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FLAC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/flac/FlacTag;->getVorbisCommentTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
