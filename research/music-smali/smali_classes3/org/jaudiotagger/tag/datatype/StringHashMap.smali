.class public Lorg/jaudiotagger/tag/datatype/StringHashMap;
.super Lorg/jaudiotagger/tag/datatype/StringFixedLength;
.source "StringHashMap.java"

# interfaces
.implements Lorg/jaudiotagger/tag/datatype/HashMapInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jaudiotagger/tag/datatype/StringFixedLength;",
        "Lorg/jaudiotagger/tag/datatype/HashMapInterface<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field hasEmptyValue:Z

.field keyToValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field valueToKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V
    .locals 1

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 52
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    const-string p2, "Language"

    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 73
    invoke-static {}, Lorg/jaudiotagger/tag/reference/Languages;->getInstanceOf()Lorg/jaudiotagger/tag/reference/Languages;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/reference/Languages;->getValueToIdMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    .line 74
    invoke-static {}, Lorg/jaudiotagger/tag/reference/Languages;->getInstanceOf()Lorg/jaudiotagger/tag/reference/Languages;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/reference/Languages;->getIdToValueMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    return-void

    .line 78
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hashmap identifier not defined in this class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/StringHashMap;)V
    .locals 1

    .line 84
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;-><init>(Lorg/jaudiotagger/tag/datatype/StringFixedLength;)V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 52
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    .line 86
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    .line 87
    iget-object v0, p1, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    .line 88
    iget-object p1, p1, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 136
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/StringHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 141
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/datatype/StringHashMap;

    .line 143
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    iget-boolean v3, v0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    if-eq v2, v3, :cond_1

    return v1

    .line 148
    :cond_1
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 150
    iget-object v2, v0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    if-eqz v2, :cond_3

    return v1

    .line 157
    :cond_2
    iget-object v3, v0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 163
    :cond_3
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    if-nez v2, :cond_4

    .line 165
    iget-object v0, v0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    if-eqz v0, :cond_5

    return v1

    .line 172
    :cond_4
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    iget-object v0, v0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 178
    :cond_5
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getKeyToValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    return-object v0
.end method

.method protected getTextEncodingCharSet()Ljava/nio/charset/Charset;
    .locals 1

    .line 224
    sget-object v0, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getValueToKey()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->valueToKey:Ljava/util/Map;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 193
    :cond_0
    new-instance v1, Ljava/util/TreeSet;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 195
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->hasEmptyValue:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 197
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_1
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    .line 112
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "XXX"

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->value:Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->value:Ljava/lang/Object;

    goto :goto_0

    .line 126
    :cond_1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->value:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 209
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->keyToValue:Ljava/util/Map;

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/StringHashMap;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method
