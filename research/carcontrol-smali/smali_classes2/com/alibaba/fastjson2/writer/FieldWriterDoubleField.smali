.class Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "FieldWriterDoubleField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 11

    .line 20
    const-class v7, Ljava/lang/Double;

    const-class v8, Ljava/lang/Double;

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "field.get error, "

    if-eqz p1, :cond_1

    .line 31
    :try_start_0
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->fieldOffset:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->fieldOffset:J

    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 38
    :goto_1
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 26
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 47
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->features:J

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v1

    .line 48
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_0

    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v3

    cmp-long p2, v1, v5

    if-nez p2, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 58
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 60
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 61
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p2, :cond_2

    .line 62
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v1, v2, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(DLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    :goto_0
    return v0
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

    .line 72
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    if-nez p2, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 78
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p2, :cond_1

    .line 79
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v0, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(DLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    :goto_0
    return-void
.end method
