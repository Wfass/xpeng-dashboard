.class Lnt;
.super Ljava/lang/Object;
.source "FontParser.java"


# static fields
.field private static final a:Lcom/airbnb/lottie/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "fFamily"

    const-string v1, "fName"

    const-string v2, "fStyle"

    const-string v3, "ascent"

    .line 9
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lnt;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/c;)Llc;
    .locals 6

    .line 25
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    move-object v1, v2

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 27
    sget-object v4, Lnt;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/c;->a(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->h()V

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->m()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->k()D

    move-result-wide v3

    double-to-float v3, v3

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->d()V

    .line 47
    new-instance p0, Llc;

    invoke-direct {p0, v0, v1, v2, v3}, Llc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    return-object p0
.end method
