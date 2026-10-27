.class public Lno;
.super Ljava/lang/Object;
.source "DocumentDataParser.java"

# interfaces
.implements Lot;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lot<",
        "Llb;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lno;

.field private static final b:Lcom/airbnb/lottie/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 11
    new-instance v0, Lno;

    invoke-direct {v0}, Lno;-><init>()V

    sput-object v0, Lno;->a:Lno;

    const-string v1, "t"

    const-string v2, "f"

    const-string v3, "s"

    const-string v4, "j"

    const-string v5, "tr"

    const-string v6, "lh"

    const-string v7, "ls"

    const-string v8, "fc"

    const-string v9, "sc"

    const-string v10, "sw"

    const-string v11, "of"

    .line 12
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lno;->b:Lcom/airbnb/lottie/parser/moshi/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/parser/moshi/c;F)Llb;
    .locals 17

    .line 34
    sget-object v0, Llb$a;->CENTER:Llb$a;

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->c()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v9, v0

    move-object v6, v1

    move-object v7, v6

    move v10, v2

    move v13, v10

    move v14, v13

    move v8, v3

    move v11, v8

    move v12, v11

    move v15, v12

    move/from16 v16, v4

    .line 44
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    sget-object v0, Lno;->b:Lcom/airbnb/lottie/parser/moshi/c$a;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/parser/moshi/c;->a(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->h()V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->m()V

    goto :goto_0

    .line 82
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->j()Z

    move-result v16

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->k()D

    move-result-wide v2

    double-to-float v15, v2

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lny;->a(Lcom/airbnb/lottie/parser/moshi/c;)I

    move-result v14

    goto :goto_0

    .line 73
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lny;->a(Lcom/airbnb/lottie/parser/moshi/c;)I

    move-result v13

    goto :goto_0

    .line 70
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->k()D

    move-result-wide v2

    double-to-float v12, v2

    goto :goto_0

    .line 67
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->k()D

    move-result-wide v2

    double-to-float v11, v2

    goto :goto_0

    .line 64
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->l()I

    move-result v10

    goto :goto_0

    .line 56
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->l()I

    move-result v0

    .line 57
    sget-object v2, Llb$a;->CENTER:Llb$a;

    invoke-virtual {v2}, Llb$a;->ordinal()I

    move-result v2

    if-gt v0, v2, :cond_1

    if-gez v0, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    invoke-static {}, Llb$a;->values()[Llb$a;

    move-result-object v2

    aget-object v9, v2, v0

    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    sget-object v9, Llb$a;->CENTER:Llb$a;

    goto :goto_0

    .line 53
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->k()D

    move-result-wide v2

    double-to-float v8, v2

    goto :goto_0

    .line 50
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->i()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 47
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->i()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object/from16 v1, p1

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/c;->d()V

    .line 91
    new-instance v0, Llb;

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Llb;-><init>(Ljava/lang/String;Ljava/lang/String;FLlb$a;IFFIIFZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic b(Lcom/airbnb/lottie/parser/moshi/c;F)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lno;->a(Lcom/airbnb/lottie/parser/moshi/c;F)Llb;

    move-result-object p1

    return-object p1
.end method
