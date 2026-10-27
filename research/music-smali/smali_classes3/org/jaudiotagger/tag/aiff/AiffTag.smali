.class public Lorg/jaudiotagger/tag/aiff/AiffTag;
.super Ljava/lang/Object;
.source "AiffTag.java"

# interfaces
.implements Lorg/jaudiotagger/tag/Tag;
.implements Lorg/jaudiotagger/tag/id3/Id3SupportingTag;


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

.field private isExistingId3Tag:Z

.field private isIncorrectlyAlignedTag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->chunkSummaryList:Ljava/util/List;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->isIncorrectlyAlignedTag:Z

    .line 35
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->isExistingId3Tag:Z

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->chunkSummaryList:Ljava/util/List;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->isIncorrectlyAlignedTag:Z

    .line 35
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->isExistingId3Tag:Z

    .line 58
    iput-object p1, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-void
.end method

.method public static createDefaultID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
    .locals 2

    .line 397
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V24:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_0

    .line 399
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>()V

    return-object v0

    .line 401
    :cond_0
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V23:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_1

    .line 403
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>()V

    return-object v0

    .line 405
    :cond_1
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V22:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_2

    .line 407
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>()V

    return-object v0

    .line 410
    :cond_2
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addChunkSummary(Lorg/jaudiotagger/audio/iff/ChunkSummary;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->chunkSummaryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/images/Artwork;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addField(Lorg/jaudiotagger/tag/images/Artwork;)V

    return-void
.end method

.method public createCompilationField(Z)Lorg/jaudiotagger/tag/TagField;
    .locals 3

    .line 295
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public varargs createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public deleteArtworkField()V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->deleteArtworkField()V

    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->deleteField(Ljava/lang/String;)V

    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 99
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getAll(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

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

    .line 253
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getArtworkList()Ljava/util/List;

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

    .line 30
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->chunkSummaryList:Ljava/util/List;

    return-object v0
.end method

.method public getEndLocationInFileOfId3Chunk()J
    .locals 2

    .line 368
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 372
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldCount()I
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFieldCount()I

    move-result v0

    return v0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 1

    .line 220
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getFieldCount()I

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

    .line 208
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields()Ljava/util/Iterator;

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

    .line 86
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

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

    .line 259
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirstArtwork()Lorg/jaudiotagger/tag/images/Artwork;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstArtwork()Lorg/jaudiotagger/tag/images/Artwork;

    move-result-object v0

    return-object v0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    move-result-object p1

    return-object p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 181
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-object v0
.end method

.method public getSizeOfID3TagIncludingChunkHeader()J
    .locals 4

    .line 345
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getSizeOfID3TagOnly()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSizeOfID3TagOnly()J
    .locals 4

    .line 333
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartLocationInFileOfId3Chunk()J
    .locals 4

    .line 359
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

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

    .line 161
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasCommonFields()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->hasCommonFields()Z

    move-result v0

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->hasField(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasField(Lorg/jaudiotagger/tag/FieldKey;)Z
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->hasField(Lorg/jaudiotagger/tag/FieldKey;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->isEmpty()Z

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

    .line 42
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->isExistingId3Tag:Z

    return v0
.end method

.method public isIncorrectlyAlignedTag()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->isIncorrectlyAlignedTag:Z

    return v0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->setEncoding(Ljava/nio/charset/Charset;)Z

    move-result p1

    return p1
.end method

.method public setExistingId3Tag(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->isExistingId3Tag:Z

    return-void
.end method

.method public varargs setField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/images/Artwork;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->setField(Lorg/jaudiotagger/tag/images/Artwork;)V

    return-void
.end method

.method public setID3Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-void
.end method

.method public setIncorrectlyAlignedTag(Z)V
    .locals 0

    .line 387
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->isIncorrectlyAlignedTag:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    iget-object v1, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->chunkSummaryList:Ljava/util/List;

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

    .line 305
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

    .line 307
    :cond_0
    iget-object v1, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v1, :cond_3

    const-string v1, "Aiff ID3 Tag:\n"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->isIncorrectlyAlignedTag:Z

    if-eqz v1, :cond_1

    const-string v1, "\tincorrectly starts as odd byte\n"

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tstartLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tendLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/tag/aiff/AiffTag;->id3Tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "tag:empty"

    return-object v0
.end method
