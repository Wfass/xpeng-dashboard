.class Lnk;
.super Ljava/lang/Object;
.source "BlurEffectParser.java"


# static fields
.field private static final a:Lcom/airbnb/lottie/parser/moshi/c$a;

.field private static final b:Lcom/airbnb/lottie/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ef"

    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lnk;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    const-string v0, "ty"

    const-string v1, "v"

    .line 16
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lnk;->b:Lcom/airbnb/lottie/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llx;
    .locals 2

    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    sget-object v1, Lnk;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/c;->a(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->h()V

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->m()V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->a()V

    .line 28
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    invoke-static {p0, p1}, Lnk;->b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llx;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->b()V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llx;
    .locals 5

    .line 48
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    move v2, v0

    .line 49
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->e()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 50
    sget-object v3, Lnk;->b:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/c;->a(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->h()V

    .line 63
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->m()V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 56
    new-instance v1, Llx;

    invoke-static {p0, p1}, Lnj;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llk;

    move-result-object v3

    invoke-direct {v1, v3}, Llx;-><init>(Llk;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->m()V

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->l()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->d()V

    return-object v1
.end method
