.class public Lorg/jaudiotagger/tag/datatype/TCONString;
.super Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;
.source "TCONString.java"


# instance fields
.field private isNullSeperateMultipleValues:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/datatype/TCONString;->isNullSeperateMultipleValues:Z

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/TCONString;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;-><init>(Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/datatype/TCONString;->isNullSeperateMultipleValues:Z

    return-void
.end method

.method public static splitV23(Ljava/lang/String;)Ljava/util/List;
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

    const-string v0, "(\\(\\d+\\)|\\(RX\\)|\\(CR\\)\\w*)"

    const-string v1, "$1\u0000"

    .line 120
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 123
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, ""

    .line 126
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addValue(Ljava/lang/String;)V
    .locals 3

    .line 74
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TCONString;->isNullSeperateMultipleValues()Z

    move-result v0

    const-string v1, "\u0000"

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/TCONString;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/TCONString;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "("

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/TCONString;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/TCONString;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/TCONString;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/TCONString;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lorg/jaudiotagger/tag/datatype/TCONString;

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNumberOfValues()I
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TCONString;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueAtIndex(I)Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TCONString;->getValues()Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getValueWithoutTrailingNull()Ljava/lang/String;
    .locals 4

    .line 154
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TCONString;->getValues()Ljava/util/List;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 156
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-eqz v2, :cond_0

    const-string v3, "\u0000"

    .line 160
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TCONString;->isNullSeperateMultipleValues()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/TCONString;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/jaudiotagger/tag/datatype/TCONString;->splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/TCONString;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/jaudiotagger/tag/datatype/TCONString;->splitV23(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isNullSeperateMultipleValues()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/datatype/TCONString;->isNullSeperateMultipleValues:Z

    return v0
.end method

.method public setNullSeperateMultipleValues(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/datatype/TCONString;->isNullSeperateMultipleValues:Z

    return-void
.end method
