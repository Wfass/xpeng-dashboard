.class public Lol;
.super Ljava/lang/Object;
.source "RoundedCornersParser.java"


# static fields
.field private static final a:Lcom/airbnb/lottie/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "nm"

    const-string v1, "r"

    const-string v2, "hd"

    .line 17
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lol;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lmj;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 34
    sget-object v4, Lol;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/c;->a(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->m()V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->j()Z

    move-result v1

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p0, p1, v5}, Lnj;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;Z)Llk;

    move-result-object v3

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_1

    .line 49
    :cond_4
    new-instance v0, Lmj;

    invoke-direct {v0, v2, v3}, Lmj;-><init>(Ljava/lang/String;Llv;)V

    :goto_1
    return-object v0
.end method
