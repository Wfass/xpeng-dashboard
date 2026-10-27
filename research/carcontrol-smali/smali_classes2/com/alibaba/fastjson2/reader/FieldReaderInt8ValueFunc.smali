.class final Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueFunc;
.super Lcom/alibaba/fastjson2/reader/FieldReader;
.source "FieldReaderInt8ValueFunc.java"


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
.field final function:Lcom/alibaba/fastjson2/function/ObjByteConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/ObjByteConsumer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ObjByteConsumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/ObjByteConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    move-object/from16 v1, p5

    .line 16
    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjByteConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;B)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(J)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjByteConsumer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/ObjByteConsumer;->accept(Ljava/lang/Object;B)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toByteValue(Ljava/lang/Object;)B

    move-result p2

    .line 32
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(J)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjByteConsumer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/ObjByteConsumer;->accept(Ljava/lang/Object;B)V

    return-void
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p1

    int-to-byte p1, p1

    .line 43
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueFunc;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(J)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueFunc;->function:Lcom/alibaba/fastjson2/function/ObjByteConsumer;

    invoke-interface {v0, p2, p1}, Lcom/alibaba/fastjson2/function/ObjByteConsumer;->accept(Ljava/lang/Object;B)V

    return-void
.end method
