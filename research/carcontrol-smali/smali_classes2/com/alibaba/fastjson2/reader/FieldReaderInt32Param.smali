.class final Lcom/alibaba/fastjson2/reader/FieldReaderInt32Param;
.super Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;
.source "FieldReaderInt32Param.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Parameter;IJLjava/lang/String;Lcom/alibaba/fastjson2/schema/JSONSchema;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 11
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Parameter;IJLjava/lang/String;Lcom/alibaba/fastjson2/schema/JSONSchema;)V

    return-void
.end method


# virtual methods
.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
