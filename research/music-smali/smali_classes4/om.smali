.class public Lom;
.super Ljava/lang/Object;
.source "ScaleXYParser.java"

# interfaces
.implements Lot;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lot<",
        "Lpf;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lom;

    invoke-direct {v0}, Lom;-><init>()V

    sput-object v0, Lom;->a:Lom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/parser/moshi/c;F)Lpf;
    .locals 4

    .line 15
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->f()Lcom/airbnb/lottie/parser/moshi/c$b;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/c$b;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/c$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->a()V

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->k()D

    move-result-wide v1

    double-to-float v1, v1

    .line 20
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->k()D

    move-result-wide v2

    double-to-float v2, v2

    .line 21
    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->m()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->b()V

    .line 27
    :cond_3
    new-instance p1, Lpf;

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    mul-float/2addr v1, p2

    div-float/2addr v2, v0

    mul-float/2addr v2, p2

    invoke-direct {p1, v1, v2}, Lpf;-><init>(FF)V

    return-object p1
.end method

.method public synthetic b(Lcom/airbnb/lottie/parser/moshi/c;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lom;->a(Lcom/airbnb/lottie/parser/moshi/c;F)Lpf;

    move-result-object p1

    return-object p1
.end method
