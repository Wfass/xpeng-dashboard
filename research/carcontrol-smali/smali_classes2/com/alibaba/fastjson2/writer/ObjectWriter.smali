.class public interface abstract Lcom/alibaba/fastjson2/writer/ObjectWriter;
.super Ljava/lang/Object;
.source "ObjectWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public getFeatures()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFieldWriter(Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 5

    .line 25
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    .line 26
    invoke-interface {p0, v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v2

    if-nez v2, :cond_0

    .line 28
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long p1, v3, v0

    if-eqz p1, :cond_0

    .line 30
    invoke-interface {p0, v3, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public getFieldWriters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 2

    .line 122
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->hasFilter(J)Z

    move-result p1

    return p1
.end method

.method public setFilter(Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 1

    .line 158
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/PropertyFilter;

    if-eqz v0, :cond_0

    .line 159
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson2/filter/PropertyFilter;

    invoke-interface {p0, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->setPropertyFilter(Lcom/alibaba/fastjson2/filter/PropertyFilter;)V

    .line 162
    :cond_0
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-eqz v0, :cond_1

    .line 163
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson2/filter/ValueFilter;

    invoke-interface {p0, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->setValueFilter(Lcom/alibaba/fastjson2/filter/ValueFilter;)V

    .line 166
    :cond_1
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/NameFilter;

    if-eqz v0, :cond_2

    .line 167
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson2/filter/NameFilter;

    invoke-interface {p0, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->setNameFilter(Lcom/alibaba/fastjson2/filter/NameFilter;)V

    .line 169
    :cond_2
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    if-eqz v0, :cond_3

    .line 170
    check-cast p1, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    invoke-interface {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->setPropertyPreFilter(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V

    :cond_3
    return-void
.end method

.method public setNameFilter(Lcom/alibaba/fastjson2/filter/NameFilter;)V
    .locals 0

    return-void
.end method

.method public setPropertyFilter(Lcom/alibaba/fastjson2/filter/PropertyFilter;)V
    .locals 0

    return-void
.end method

.method public setPropertyPreFilter(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V
    .locals 0

    return-void
.end method

.method public setValueFilter(Lcom/alibaba/fastjson2/filter/ValueFilter;)V
    .locals 0

    return-void
.end method

.method public varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Lcom/alibaba/fastjson2/JSONWriter$Feature;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 130
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONWriter;->of([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    .line 131
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 126
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public abstract write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
.end method

.method public writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 5

    .line 59
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-interface/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 64
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    move-result-object p3

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 66
    invoke-interface {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    move-result p4

    const/4 p5, 0x0

    if-nez p4, :cond_2

    .line 68
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    :goto_0
    if-ge p5, p4, :cond_9

    if-eqz p5, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 72
    :cond_1
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 73
    invoke-virtual {p6, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 76
    :cond_2
    iget-object p4, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 77
    invoke-virtual {p4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyPreFilter()Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    move-result-object p6

    .line 78
    invoke-virtual {p4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getValueFilter()Lcom/alibaba/fastjson2/filter/ValueFilter;

    move-result-object v0

    .line 79
    invoke-virtual {p4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyFilter()Lcom/alibaba/fastjson2/filter/PropertyFilter;

    move-result-object p4

    .line 81
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge p5, v1, :cond_9

    if-eqz p5, :cond_3

    .line 83
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 85
    :cond_3
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    if-eqz p6, :cond_4

    .line 86
    iget-object v3, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-interface {p6, p1, p2, v3}, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;->process(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_2

    .line 91
    :cond_4
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz p4, :cond_5

    .line 92
    iget-object v4, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-interface {p4, p2, v4, v3}, Lcom/alibaba/fastjson2/filter/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 93
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_7

    .line 98
    iget-object v4, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-interface {v0, p2, v4, v3}, Lcom/alibaba/fastjson2/filter/ValueFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    .line 100
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_2

    .line 104
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    .line 105
    invoke-interface {v2, p1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    if-nez v3, :cond_8

    .line 108
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_2

    .line 112
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    .line 113
    invoke-interface {v2, p1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 118
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 45
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 49
    invoke-interface {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    move-result-object p3

    .line 50
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    .line 51
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_0

    .line 53
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 54
    invoke-virtual {p6, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 41
    invoke-interface/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 138
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 142
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
