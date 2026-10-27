.class final Lcom/alibaba/fastjson2/reader/FieldReaderBoolValFunc;
.super Lcom/alibaba/fastjson2/reader/FieldReader;
.source "FieldReaderBoolValFunc.java"


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
.field final function:Lcom/alibaba/fastjson2/function/ObjBoolConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/ObjBoolConsumer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ObjBoolConsumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/ObjBoolConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

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

    .line 22
    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/FieldReaderBoolValFunc;->function:Lcom/alibaba/fastjson2/function/ObjBoolConsumer;

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

    .line 27
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBooleanValue(Ljava/lang/Object;)Z

    move-result p2

    .line 28
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderBoolValFunc;->function:Lcom/alibaba/fastjson2/function/ObjBoolConsumer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/ObjBoolConsumer;->accept(Ljava/lang/Object;Z)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderBoolValFunc;->function:Lcom/alibaba/fastjson2/function/ObjBoolConsumer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/ObjBoolConsumer;->accept(Ljava/lang/Object;Z)V

    return-void
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBool()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderBoolValFunc;->function:Lcom/alibaba/fastjson2/function/ObjBoolConsumer;

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result p1

    .line 38
    invoke-interface {v0, p2, p1}, Lcom/alibaba/fastjson2/function/ObjBoolConsumer;->accept(Ljava/lang/Object;Z)V

    return-void
.end method
