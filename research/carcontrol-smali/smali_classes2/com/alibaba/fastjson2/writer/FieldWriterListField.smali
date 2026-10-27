.class final Lcom/alibaba/fastjson2/writer/FieldWriterListField;
.super Lcom/alibaba/fastjson2/writer/FieldWriterList;
.source "FieldWriterListField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriterList<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 24
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterList;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterListField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 31
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 34
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterListField;->features:J

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 35
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v4, v6

    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterListField;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 44
    :cond_1
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterListField;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    return v1

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterListField;->itemType:Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_3

    .line 53
    invoke-virtual {p0, p1, v1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterListField;->writeListStr(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterListField;->writeList(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V

    .line 57
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    return v1
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterListField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterListField;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    return-void

    .line 81
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterListField;->writeListValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
