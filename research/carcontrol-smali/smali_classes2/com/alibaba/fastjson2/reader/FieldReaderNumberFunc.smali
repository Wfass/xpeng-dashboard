.class final Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;
.super Lcom/alibaba/fastjson2/reader/FieldReader;
.source "FieldReaderNumberFunc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
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
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Number;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TV;>;IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Number;",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/BiConsumer<",
            "TT;TV;>;)V"
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

    .line 26
    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    move-object/from16 v1, p11

    .line 27
    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->function:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(J)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->function:Ljava/util/function/BiConsumer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(J)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->function:Ljava/util/function/BiConsumer;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->function:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getFunction()Ljava/util/function/BiConsumer;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->function:Ljava/util/function/BiConsumer;

    return-object v0
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

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

    .line 61
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->features:J

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v1

    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->NullOnError:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderNumberFunc;->function:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_1
    throw v0
.end method
