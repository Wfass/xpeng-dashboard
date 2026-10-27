.class public Lorg/jaudiotagger/tag/wav/WavTag;
.super Ljava/lang/Object;
.source "WavTag.java"

# interfaces
.implements Lorg/jaudiotagger/tag/Tag;
.implements Lorg/jaudiotagger/tag/id3/Id3SupportingTag;


# static fields
.field private static final NULL:Ljava/lang/String; = "\u0000"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private chunkSummaryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/iff/ChunkSummary;",
            ">;"
        }
    .end annotation
.end field

.field private id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

.field private infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

.field private isExistingId3Tag:Z

.field private isExistingInfoTag:Z

.field private isIncorrectlyAlignedTag:Z

.field private wavOptions:Lorg/jaudiotagger/audio/wav/WavOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/jaudiotagger/tag/wav/WavTag;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/wav/WavTag;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/wav/WavOptions;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->chunkSummaryList:Ljava/util/List;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag:Z

    .line 64
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag:Z

    .line 65
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag:Z

    .line 74
    iput-object p1, p0, Lorg/jaudiotagger/tag/wav/WavTag;->wavOptions:Lorg/jaudiotagger/audio/wav/WavOptions;

    return-void
.end method

.method private addNullTerminatorIfNone(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\u0000"

    .line 587
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static createDefaultID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
    .locals 2

    .line 641
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V24:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_0

    .line 643
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>()V

    return-object v0

    .line 645
    :cond_0
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V23:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_1

    .line 647
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>()V

    return-object v0

    .line 649
    :cond_1
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V22:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_2

    .line 651
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>()V

    return-object v0

    .line 654
    :cond_2
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>()V

    return-object v0
.end method

.method private stripNullTerminator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\u0000"

    .line 583
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addChunkSummary(Lorg/jaudiotagger/audio/iff/ChunkSummary;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->chunkSummaryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 0

    .line 263
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/wav/WavTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 264
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/wav/WavTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/images/Artwork;)V
    .locals 0

    .line 417
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/wav/WavTag;->createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/wav/WavTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public createCompilationField(Z)Lorg/jaudiotagger/tag/TagField;
    .locals 3

    .line 396
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/wav/WavTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public varargs createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jaudiotagger/tag/Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 356
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public deleteArtworkField()V
    .locals 1

    .line 376
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaudiotagger/tag/Tag;->deleteArtworkField()V

    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 1

    .line 328
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->deleteField(Ljava/lang/String;)V

    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .locals 1

    .line 323
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 212
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActiveTag()Lorg/jaudiotagger/tag/Tag;
    .locals 2

    .line 172
    sget-object v0, Lorg/jaudiotagger/tag/wav/WavTag$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavOptions:[I

    iget-object v1, p0, Lorg/jaudiotagger/tag/wav/WavTag;->wavOptions:Lorg/jaudiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavOptions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 205
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-object v0

    .line 195
    :pswitch_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-object v0

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    return-object v0

    .line 184
    :pswitch_1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    return-object v0

    .line 186
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-object v0

    .line 180
    :pswitch_2
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    return-object v0

    .line 176
    :pswitch_3
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
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

    .line 234
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->getAll(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaudiotagger/tag/Tag;->getArtworkList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChunkSummaryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/iff/ChunkSummary;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->chunkSummaryList:Ljava/util/List;

    return-object v0
.end method

.method public getEndLocationInFileOfId3Chunk()J
    .locals 2

    .line 471
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldCount()I
    .locals 1

    .line 338
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaudiotagger/tag/Tag;->getFieldCount()I

    move-result v0

    return v0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 1

    .line 343
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getFieldCount()I

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

    .line 333
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaudiotagger/tag/Tag;->getFields()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 222
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
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

    .line 361
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 285
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirstArtwork()Lorg/jaudiotagger/tag/images/Artwork;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaudiotagger/tag/Tag;->getFirstArtwork()Lorg/jaudiotagger/tag/images/Artwork;

    move-result-object v0

    return-object v0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 300
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 307
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-object v0
.end method

.method public getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    return-object v0
.end method

.method public getSizeOfID3TagIncludingChunkHeader()J
    .locals 4

    .line 449
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 453
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getSizeOfID3TagOnly()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSizeOfID3TagOnly()J
    .locals 4

    .line 436
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartLocationInFileOfId3Chunk()J
    .locals 4

    .line 462
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 466
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 1

    .line 290
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jaudiotagger/tag/Tag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasCommonFields()Z
    .locals 1

    .line 239
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaudiotagger/tag/Tag;->hasCommonFields()Z

    move-result v0

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .line 391
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->hasField(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasField(Lorg/jaudiotagger/tag/FieldKey;)Z
    .locals 1

    .line 385
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->hasField(Lorg/jaudiotagger/tag/FieldKey;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 252
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaudiotagger/tag/Tag;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isExistingId3Tag()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag:Z

    return v0
.end method

.method public isExistingInfoTag()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag:Z

    return v0
.end method

.method public isID3Tag()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIncorrectlyAlignedTag()Z
    .locals 1

    .line 626
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag:Z

    return v0
.end method

.method public isInfoTag()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 1

    .line 348
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->setEncoding(Ljava/nio/charset/Charset;)Z

    move-result p1

    return p1
.end method

.method public setExistingId3Tag(Z)V
    .locals 0

    .line 422
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag:Z

    return-void
.end method

.method public setExistingInfoTag(Z)V
    .locals 0

    .line 427
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag:Z

    return-void
.end method

.method public varargs setField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 0

    .line 257
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/wav/WavTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 258
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/wav/WavTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/tag/Tag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/images/Artwork;)V
    .locals 0

    .line 412
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/wav/WavTag;->createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/wav/WavTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setID3Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-void
.end method

.method public setIncorrectlyAlignedTag(Z)V
    .locals 0

    .line 631
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag:Z

    return-void
.end method

.method public setInfoTag(Lorg/jaudiotagger/tag/wav/WavInfoTag;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    return-void
.end method

.method public syncTagBeforeWrite()V
    .locals 1

    .line 613
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/wav/WavInfoTag;

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->syncToId3FromInfoOverwrite()V

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->syncToInfoFromId3Overwrite()V

    :goto_0
    return-void
.end method

.method public syncTagsAfterRead()V
    .locals 1

    .line 596
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/wav/WavInfoTag;

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->syncToInfoFromId3IfEmpty()V

    goto :goto_0

    .line 602
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->syncToId3FromInfoIfEmpty()V

    :goto_0
    return-void
.end method

.method public syncToId3FromInfoIfEmpty()V
    .locals 6

    .line 487
    :try_start_0
    invoke-static {}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getSupportedKeys()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/FieldKey;

    .line 489
    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    invoke-virtual {v2, v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 494
    iget-object v3, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v2}, Lorg/jaudiotagger/tag/wav/WavTag;->stripNullTerminator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v3, v1, v4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->setField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 501
    sget-object v1, Lorg/jaudiotagger/tag/wav/WavTag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Couldn\'t sync to ID3 because the data to sync was invalid"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public syncToId3FromInfoOverwrite()V
    .locals 6

    .line 538
    :try_start_0
    invoke-static {}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getSupportedKeys()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/FieldKey;

    .line 540
    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    invoke-virtual {v2, v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 542
    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    invoke-virtual {v5, v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/jaudiotagger/tag/wav/WavTag;->stripNullTerminator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->setField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_0
    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 552
    sget-object v1, Lorg/jaudiotagger/tag/wav/WavTag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Couldn\'t sync to ID3 because the data to sync was invalid"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public syncToInfoFromId3IfEmpty()V
    .locals 6

    .line 513
    :try_start_0
    invoke-static {}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getSupportedKeys()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/FieldKey;

    .line 515
    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    invoke-virtual {v2, v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 519
    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v5, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/jaudiotagger/tag/wav/WavTag;->addNullTerminatorIfNone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->setField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 526
    sget-object v1, Lorg/jaudiotagger/tag/wav/WavTag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Couldn\'t sync to INFO because the data to sync was invalid"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public syncToInfoFromId3Overwrite()V
    .locals 6

    .line 564
    :try_start_0
    invoke-static {}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getSupportedKeys()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/FieldKey;

    .line 566
    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v5, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/jaudiotagger/tag/wav/WavTag;->addNullTerminatorIfNone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->setField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_0
    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    invoke-virtual {v2, v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 578
    sget-object v1, Lorg/jaudiotagger/tag/wav/WavTag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Couldn\'t sync to INFO because the data to sync was invalid"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    iget-object v1, p0, Lorg/jaudiotagger/tag/wav/WavTag;->chunkSummaryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v1, :cond_2

    const-string v1, "Wav ID3 Tag:\n"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tstartLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tendLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_2
    iget-object v1, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    if-eqz v1, :cond_3

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavTag;->infoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
