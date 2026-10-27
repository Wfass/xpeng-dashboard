.class final Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueFunc;
.super Lcom/alibaba/fastjson2/reader/FieldReader;
.source "FieldReaderDoubleValueFunc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final function:Ljava/util/function/ObjDoubleConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ObjDoubleConsumer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Double;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/util/function/ObjDoubleConsumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Double;",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/ObjDoubleConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    move-object/from16 v1, p6

    .line 16
    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueFunc;->function:Ljava/util/function/ObjDoubleConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(D)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueFunc;->function:Ljava/util/function/ObjDoubleConsumer;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/function/ObjDoubleConsumer;->accept(Ljava/lang/Object;D)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toDoubleValue(Ljava/lang/Object;)D

    move-result-wide v0

    .line 32
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p2, :cond_0

    .line 33
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(D)V

    .line 36
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueFunc;->function:Ljava/util/function/ObjDoubleConsumer;

    invoke-interface {p2, p1, v0, v1}, Ljava/util/function/ObjDoubleConsumer;->accept(Ljava/lang/Object;D)V

    return-void
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 2

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readDoubleValue()D

    move-result-wide v0

    .line 44
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(D)V

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueFunc;->function:Ljava/util/function/ObjDoubleConsumer;

    invoke-interface {p1, p2, v0, v1}, Ljava/util/function/ObjDoubleConsumer;->accept(Ljava/lang/Object;D)V

    return-void
.end method
