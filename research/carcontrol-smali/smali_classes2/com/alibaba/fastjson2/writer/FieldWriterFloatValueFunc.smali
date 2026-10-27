.class final Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "FieldWriterFloatValueFunc.java"


# instance fields
.field final function:Lcom/alibaba/fastjson2/function/ToFloatFunction;


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToFloatFunction;)V
    .locals 11

    .line 23
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    move-object/from16 v1, p9

    .line 24
    iput-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;->function:Lcom/alibaba/fastjson2/function/ToFloatFunction;

    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;->function:Lcom/alibaba/fastjson2/function/ToFloatFunction;

    invoke-interface {v0, p1}, Lcom/alibaba/fastjson2/function/ToFloatFunction;->applyAsFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;->function:Lcom/alibaba/fastjson2/function/ToFloatFunction;

    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/ToFloatFunction;->applyAsFloat(Ljava/lang/Object;)F

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(FLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(F)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 48
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_1
    throw p2
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;->function:Lcom/alibaba/fastjson2/function/ToFloatFunction;

    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/ToFloatFunction;->applyAsFloat(Ljava/lang/Object;)F

    move-result p2

    .line 35
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz v0, :cond_0

    float-to-double v0, p2

    .line 36
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v0, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(DLjava/text/DecimalFormat;)V

    goto :goto_0

    :cond_0
    float-to-double v0, p2

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    :goto_0
    return-void
.end method
