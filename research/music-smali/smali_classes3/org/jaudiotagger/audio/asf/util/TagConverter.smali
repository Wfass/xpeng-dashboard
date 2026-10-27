.class public final Lorg/jaudiotagger/audio/asf/util/TagConverter;
.super Ljava/lang/Object;
.source "TagConverter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assignCommonTagValues(Lorg/jaudiotagger/tag/Tag;Lorg/jaudiotagger/audio/asf/data/MetadataContainer;)V
    .locals 4

    .line 54
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    invoke-interface {p0, v0}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 57
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    invoke-interface {p0, v2}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    goto :goto_0

    .line 63
    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 65
    :goto_0
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    invoke-interface {p0, v0}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TRACK:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 68
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    invoke-interface {p0, v2}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    goto :goto_1

    .line 74
    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TRACK:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 76
    :goto_1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    invoke-interface {p0, v0}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->YEAR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 79
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    invoke-interface {p0, v2}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    goto :goto_2

    .line 85
    :cond_2
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->YEAR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 87
    :goto_2
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    invoke-interface {p0, v0}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GENRE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 91
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    invoke-interface {p0, v2}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 94
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object v0

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    invoke-interface {p0, v2}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getIdForName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 99
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GENRE_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    goto :goto_3

    .line 106
    :cond_3
    sget-object p0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GENRE_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    goto :goto_3

    .line 111
    :cond_4
    sget-object p0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GENRE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 112
    sget-object p0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GENRE_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public static createTagOf(Lorg/jaudiotagger/audio/asf/data/AsfHeader;)Lorg/jaudiotagger/tag/asf/AsfTag;
    .locals 7

    .line 126
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTag;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/asf/AsfTag;-><init>(Z)V

    const/4 v2, 0x0

    .line 127
    :goto_0
    invoke-static {}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->values()[Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 129
    invoke-static {}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->values()[Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->findMetadataContainer(Lorg/jaudiotagger/audio/asf/data/ContainerType;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 132
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    move-result-object v3

    .line 133
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 136
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 138
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COVER_ART:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v6}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    new-instance v5, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;

    invoke-direct {v5, v4}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    goto :goto_2

    .line 142
    :cond_0
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->BANNER_IMAGE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v6}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    new-instance v5, Lorg/jaudiotagger/tag/asf/AsfTagBannerField;

    invoke-direct {v5, v4}, Lorg/jaudiotagger/tag/asf/AsfTagBannerField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    goto :goto_2

    .line 148
    :cond_1
    new-instance v5, Lorg/jaudiotagger/tag/asf/AsfTagField;

    invoke-direct {v5, v4}, Lorg/jaudiotagger/tag/asf/AsfTagField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    goto :goto_2

    .line 153
    :cond_2
    new-instance v5, Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    invoke-direct {v5, v4}, Lorg/jaudiotagger/tag/asf/AsfTagTextField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 155
    :goto_2
    invoke-virtual {v0, v5}, Lorg/jaudiotagger/tag/asf/AsfTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static distributeMetadata(Lorg/jaudiotagger/tag/asf/AsfTag;)[Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
    .locals 6

    .line 172
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTag;->getAsfFields()Ljava/util/Iterator;

    move-result-object p0

    .line 173
    invoke-static {}, Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;->getInstance()Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;

    move-result-object v0

    invoke-static {}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getOrdered()[Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;->createContainers([Lorg/jaudiotagger/audio/asf/data/ContainerType;)[Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    move-result-object v0

    .line 176
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/asf/AsfTagField;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-nez v2, :cond_0

    .line 180
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 182
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v4

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getAsfFieldKey(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getHighestContainer()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->areInCorrectOrder(Lorg/jaudiotagger/audio/asf/data/ContainerType;Lorg/jaudiotagger/audio/asf/data/ContainerType;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    aget-object v4, v0, v3

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getDescriptor()Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->isAddSupported(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    aget-object v2, v0, v3

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getDescriptor()Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
