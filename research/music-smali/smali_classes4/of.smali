.class Lof;
.super Ljava/lang/Object;
.source "PathKeyframeParser.java"


# direct methods
.method static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lkp;
    .locals 7

    .line 20
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->f()Lcom/airbnb/lottie/parser/moshi/c$b;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/c$b;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/c$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 22
    invoke-static {}, Lpb;->a()F

    move-result v3

    sget-object v4, Log;->a:Log;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 21
    invoke-static/range {v1 .. v6}, Lnz;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;FLot;ZZ)Lpc;

    move-result-object p0

    .line 24
    new-instance v0, Lkp;

    invoke-direct {v0, p1, p0}, Lkp;-><init>(Lcom/airbnb/lottie/d;Lpc;)V

    return-object v0
.end method
