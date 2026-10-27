.class Lvy;
.super Lvv;
.source "FieldReaderObjectParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lvv<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final A:J

.field final w:Ljava/lang/reflect/Parameter;

.field final x:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Parameter;IJLjava/lang/String;Laai;)V
    .locals 15

    move-object v14, p0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v10, p10

    .line 27
    invoke-direct/range {v0 .. v13}, Lvv;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    move-object/from16 v0, p4

    .line 28
    iput-object v0, v14, Lvy;->x:Ljava/lang/String;

    .line 29
    invoke-static/range {p4 .. p4}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v14, Lvy;->A:J

    move-object/from16 v0, p5

    .line 30
    iput-object v0, v14, Lvy;->w:Ljava/lang/reflect/Parameter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 39
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "UnsupportedOperationException"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method
