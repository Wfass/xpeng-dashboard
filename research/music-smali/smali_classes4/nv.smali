.class Lnv;
.super Ljava/lang/Object;
.source "GradientFillParser.java"


# static fields
.field private static final a:Lcom/airbnb/lottie/parser/moshi/c$a;

.field private static final b:Lcom/airbnb/lottie/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "nm"

    const-string v1, "g"

    const-string v2, "o"

    const-string v3, "t"

    const-string v4, "s"

    const-string v5, "e"

    const-string v6, "r"

    const-string v7, "hd"

    .line 18
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lnv;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    const-string v0, "p"

    const-string v1, "k"

    .line 28
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lnv;->b:Lcom/airbnb/lottie/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lmb;
    .locals 13

    .line 44
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v0

    move-object v3, v1

    move-object v4, v3

    move-object v6, v4

    move-object v8, v6

    move-object v9, v8

    move v12, v2

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    sget-object v0, Lnv;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/c;->a(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 89
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->h()V

    .line 90
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->m()V

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->j()Z

    move-result v12

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->l()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_1
    move-object v5, v0

    goto :goto_0

    .line 80
    :pswitch_2
    invoke-static {p0, p1}, Lnj;->c(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llo;

    move-result-object v9

    goto :goto_0

    .line 77
    :pswitch_3
    invoke-static {p0, p1}, Lnj;->c(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llo;

    move-result-object v8

    goto :goto_0

    .line 74
    :pswitch_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->l()I

    move-result v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lmd;->LINEAR:Lmd;

    goto :goto_2

    :cond_1
    sget-object v0, Lmd;->RADIAL:Lmd;

    :goto_2
    move-object v4, v0

    goto :goto_0

    .line 71
    :pswitch_5
    invoke-static {p0, p1}, Lnj;->b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llm;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    const/4 v0, -0x1

    .line 54
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->c()V

    .line 55
    :goto_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->e()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 56
    sget-object v7, Lnv;->b:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v7}, Lcom/airbnb/lottie/parser/moshi/c;->a(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v7

    if-eqz v7, :cond_3

    if-eq v7, v2, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->h()V

    .line 65
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->m()V

    goto :goto_3

    .line 61
    :cond_2
    invoke-static {p0, p1, v0}, Lnj;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;I)Lll;

    move-result-object v6

    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->l()I

    move-result v0

    goto :goto_3

    .line 68
    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->d()V

    goto :goto_0

    .line 50
    :pswitch_7
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    .line 96
    new-instance v1, Llm;

    new-instance p0, Lpc;

    const/16 p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lpc;-><init>(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Llm;-><init>(Ljava/util/List;)V

    :cond_6
    move-object v7, v1

    .line 97
    new-instance p0, Lmb;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lmb;-><init>(Ljava/lang/String;Lmd;Landroid/graphics/Path$FillType;Lll;Llm;Llo;Llo;Llk;Llk;Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
