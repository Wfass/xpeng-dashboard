.class final Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "FieldWriterDoubleValField.java"


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
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 11

    .line 13
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v3, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;->getFieldValueDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getFieldValueDouble(Ljava/lang/Object;)D
    .locals 5

    const-string v0, "field.get error, "

    if-eqz p1, :cond_1

    .line 28
    :try_start_0
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;->fieldOffset:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 29
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;->fieldOffset:J

    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 35
    :goto_1
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 23
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;->getFieldValueDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 42
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;->writeDouble(Lcom/alibaba/fastjson2/JSONWriter;D)V

    const/4 p1, 0x1

    return p1
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

    .line 48
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;->getFieldValueDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 49
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p2, :cond_0

    .line 50
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v0, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(DLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    :goto_0
    return-void
.end method
