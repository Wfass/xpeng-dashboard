.class Loo;
.super Ljava/lang/Object;
.source "ShapeFillParser.java"


# static fields
.field private static final a:Lcom/airbnb/lottie/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "nm"

    const-string v1, "c"

    const-string v2, "o"

    const-string v3, "fillEnabled"

    const-string v4, "r"

    const-string v5, "hd"

    .line 16
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Loo;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lml;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v5, v0

    move v9, v5

    move v0, v1

    move-object v4, v2

    move-object v7, v4

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 38
    sget-object v3, Loo;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/c;->a(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v3

    if-eqz v3, :cond_5

    if-eq v3, v1, :cond_4

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1

    const/4 v6, 0x5

    if-eq v3, v6, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->h()V

    .line 59
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->m()V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->j()Z

    move-result v9

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->l()I

    move-result v0

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->j()Z

    move-result v5

    goto :goto_0

    .line 46
    :cond_3
    invoke-static {p0, p1}, Lnj;->b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llm;

    move-result-object v2

    goto :goto_0

    .line 43
    :cond_4
    invoke-static {p0, p1}, Lnj;->g(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llj;

    move-result-object v7

    goto :goto_0

    .line 40
    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    .line 65
    new-instance v2, Llm;

    new-instance p0, Lpc;

    const/16 p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lpc;-><init>(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Llm;-><init>(Ljava/util/List;)V

    :cond_7
    move-object v8, v2

    if-ne v0, v1, :cond_8

    .line 66
    sget-object p0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_1

    :cond_8
    sget-object p0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_1
    move-object v6, p0

    .line 67
    new-instance p0, Lml;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lml;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Llj;Llm;Z)V

    return-object p0
.end method
