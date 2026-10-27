.class final Lcom/alibaba/fastjson2/writer/FieldWriterBooleanFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;
.source "FieldWriterBooleanFunc.java"


# instance fields
.field final function:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V
    .locals 11

    .line 21
    const-class v7, Ljava/lang/Boolean;

    const-class v8, Ljava/lang/Boolean;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    move-object/from16 v1, p9

    .line 22
    iput-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterBooleanFunc;->function:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBooleanFunc;->function:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFunction()Ljava/util/function/Function;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBooleanFunc;->function:Ljava/util/function/Function;

    return-object v0
.end method
