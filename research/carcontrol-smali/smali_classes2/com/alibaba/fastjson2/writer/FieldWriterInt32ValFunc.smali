.class final Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriterInt32;
.source "FieldWriterInt32ValFunc.java"


# instance fields
.field final function:Ljava/util/function/ToIntFunction;


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToIntFunction;)V
    .locals 11

    .line 23
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    move-object/from16 v1, p9

    .line 24
    iput-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;->function:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;->function:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;->function:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;->writeInt32(Lcom/alibaba/fastjson2/JSONWriter;I)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 41
    :cond_0
    throw p2
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;->function:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p2

    .line 51
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void
.end method
