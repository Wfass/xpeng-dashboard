.class public Lnj;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# direct methods
.method private static a(Lcom/airbnb/lottie/parser/moshi/c;FLcom/airbnb/lottie/d;Lot;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/c;",
            "F",
            "Lcom/airbnb/lottie/d;",
            "Lot<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lpc<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, p2, p1, p3, v0}, Loa;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;FLot;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;Lot;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/c;",
            "Lcom/airbnb/lottie/d;",
            "Lot<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lpc<",
            "TT;>;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 77
    invoke-static {p0, p1, v0, p2, v1}, Loa;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;FLot;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llk;
    .locals 1

    const/4 v0, 0x1

    .line 26
    invoke-static {p0, p1, v0}, Lnj;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;Z)Llk;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;Z)Llk;
    .locals 2

    .line 31
    new-instance v0, Llk;

    if-eqz p2, :cond_0

    .line 32
    invoke-static {}, Lpb;->a()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lnr;->a:Lnr;

    invoke-static {p0, p2, p1, v1}, Lnj;->a(Lcom/airbnb/lottie/parser/moshi/c;FLcom/airbnb/lottie/d;Lot;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Llk;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;I)Lll;
    .locals 2

    .line 68
    new-instance v0, Lll;

    new-instance v1, Lnu;

    invoke-direct {v1, p2}, Lnu;-><init>(I)V

    .line 69
    invoke-static {p0, p1, v1}, Lnj;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;Lot;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lll;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llm;
    .locals 2

    .line 37
    new-instance v0, Llm;

    sget-object v1, Lnx;->a:Lnx;

    invoke-static {p0, p1, v1}, Lnj;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;Lot;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Llm;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static c(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llo;
    .locals 4

    .line 42
    new-instance v0, Llo;

    invoke-static {}, Lpb;->a()F

    move-result v1

    sget-object v2, Loh;->a:Loh;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Loa;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;FLot;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Llo;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static d(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llp;
    .locals 2

    .line 47
    new-instance v0, Llp;

    sget-object v1, Lom;->a:Lom;

    invoke-static {p0, p1, v1}, Lnj;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;Lot;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Llp;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static e(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llq;
    .locals 3

    .line 52
    new-instance v0, Llq;

    .line 53
    invoke-static {}, Lpb;->a()F

    move-result v1

    sget-object v2, Lon;->a:Lon;

    invoke-static {p0, v1, p1, v2}, Lnj;->a(Lcom/airbnb/lottie/parser/moshi/c;FLcom/airbnb/lottie/d;Lot;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Llq;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static f(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lls;
    .locals 2

    .line 58
    new-instance v0, Lls;

    sget-object v1, Lno;->a:Lno;

    invoke-static {p0, p1, v1}, Lnj;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;Lot;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lls;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static g(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llj;
    .locals 2

    .line 63
    new-instance v0, Llj;

    sget-object v1, Lnm;->a:Lnm;

    invoke-static {p0, p1, v1}, Lnj;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;Lot;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Llj;-><init>(Ljava/util/List;)V

    return-object v0
.end method
