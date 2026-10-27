.class final Lcom/alibaba/fastjson2/reader/FieldReaderFloatFunc;
.super Lcom/alibaba/fastjson2/reader/FieldReader;
.source "FieldReaderFloatFunc.java"


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
.field final function:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Float;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Float;",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 27
    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    move-object/from16 v1, p11

    .line 28
    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatFunc;->function:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p2

    .line 35
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Float;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatFunc;->function:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getFunction()Ljava/util/function/BiConsumer;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatFunc;->function:Ljava/util/function/BiConsumer;

    return-object v0
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFloat()Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFloat()Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatFunc;->features:J

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v1

    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->NullOnError:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Float;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderFloatFunc;->function:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_1
    throw v0
.end method
