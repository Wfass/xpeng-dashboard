.class public abstract Lorg/jaudiotagger/audio/generic/AbstractTag;
.super Ljava/lang/Object;
.source "AbstractTag.java"

# interfaces
.implements Lorg/jaudiotagger/tag/Tag;


# instance fields
.field protected commonNumber:I

.field protected fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->commonNumber:I

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public varargs addField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 0

    .line 315
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 316
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->isCommon()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    iget p1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->commonNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->commonNumber:I

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/images/Artwork;)V
    .locals 0

    .line 466
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public varargs abstract createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
.end method

.method public deleteArtworkField()V
    .locals 1

    .line 477
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V

    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
.end method

.method public getAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 158
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/TagField;

    .line 160
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/TagField;

    .line 110
    invoke-interface {v1}, Lorg/jaudiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFieldCount()I
    .locals 3

    .line 225
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 227
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 1

    .line 238
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFieldCount()I

    move-result v0

    return v0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 170
    new-instance v1, Lorg/jaudiotagger/audio/generic/AbstractTag$1;

    invoke-direct {v1, p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag$1;-><init>(Lorg/jaudiotagger/audio/generic/AbstractTag;Ljava/util/Iterator;)V

    return-object v1
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

    .line 92
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 142
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirstArtwork()Lorg/jaudiotagger/tag/images/Artwork;
    .locals 2

    .line 439
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getArtworkList()Ljava/util/List;

    move-result-object v0

    .line 440
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 442
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

    .line 149
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public abstract getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
.end method

.method public getItem(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 123
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public hasCommonFields()Z
    .locals 1

    .line 249
    iget v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->commonNumber:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 0

    .line 260
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasField(Lorg/jaudiotagger/tag/FieldKey;)Z
    .locals 0

    .line 266
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->hasField(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract isAllowedEncoding(Ljava/nio/charset/Charset;)Z
.end method

.method public isEmpty()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 3

    .line 361
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->isAllowedEncoding(Ljava/nio/charset/Charset;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 366
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object v0

    .line 367
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/TagField;

    .line 370
    instance-of v2, v1, Lorg/jaudiotagger/tag/TagTextField;

    if-eqz v2, :cond_1

    .line 372
    check-cast v1, Lorg/jaudiotagger/tag/TagTextField;

    invoke-interface {v1, p1}, Lorg/jaudiotagger/tag/TagTextField;->setEncoding(Ljava/nio/charset/Charset;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public varargs setField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 0

    .line 300
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 301
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 340
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 345
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->isCommon()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 350
    iget p1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->commonNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->commonNumber:I

    :cond_2
    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/images/Artwork;)V
    .locals 0

    .line 455
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 386
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Tag content:\n"

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object v1

    .line 389
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    const-string v3, "\t"

    .line 392
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    invoke-interface {v2}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    .line 394
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-interface {v2}, Lorg/jaudiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    .line 396
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
