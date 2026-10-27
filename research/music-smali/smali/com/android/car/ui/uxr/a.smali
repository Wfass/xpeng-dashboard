.class Lcom/android/car/ui/uxr/a;
.super Ljava/lang/Object;
.source "DrawableStateUtil.java"

# interfaces
.implements Lcom/android/car/ui/uxr/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:[I

.field private c:[I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/car/ui/uxr/a;->a:Landroid/view/View;

    return-void
.end method

.method private synthetic a(I)Z
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/car/ui/uxr/a;->c:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/car/ui/uxr/-$$Lambda$a$k7x8N4DYBcPav6lab9QOVvUZI9A;

    invoke-direct {v1, p1}, Lcom/android/car/ui/uxr/-$$Lambda$a$k7x8N4DYBcPav6lab9QOVvUZI9A;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->noneMatch(Ljava/util/function/IntPredicate;)Z

    move-result p1

    return p1
.end method

.method private static synthetic a(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a([I[I)[I
    .locals 3

    .line 86
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 87
    aget v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 90
    array-length v2, p1

    invoke-static {p1, v1, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static synthetic lambda$S9htwuTJPoH2xw6QlyBtkpcizkU(Lcom/android/car/ui/uxr/a;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/uxr/a;->a(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$k7x8N4DYBcPav6lab9QOVvUZI9A(II)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/car/ui/uxr/a;->a(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(ILjava/util/function/Function;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "[I>;)[I"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/car/ui/uxr/a;->b:[I

    if-nez v0, :cond_0

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    goto :goto_0

    .line 60
    :cond_0
    array-length v0, v0

    add-int/2addr p1, v0

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iget-object p2, p0, Lcom/android/car/ui/uxr/a;->b:[I

    .line 60
    invoke-static {p1, p2}, Lcom/android/car/ui/uxr/a;->a([I[I)[I

    move-result-object p1

    .line 64
    :goto_0
    iget-object p2, p0, Lcom/android/car/ui/uxr/a;->c:[I

    if-eqz p2, :cond_1

    array-length p2, p2

    if-eqz p2, :cond_1

    .line 65
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance p2, Lcom/android/car/ui/uxr/-$$Lambda$a$S9htwuTJPoH2xw6QlyBtkpcizkU;

    invoke-direct {p2, p0}, Lcom/android/car/ui/uxr/-$$Lambda$a$S9htwuTJPoH2xw6QlyBtkpcizkU;-><init>(Lcom/android/car/ui/uxr/a;)V

    .line 66
    invoke-interface {p1, p2}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 68
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public setExtraDrawableState([I[I)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/car/ui/uxr/a;->b:[I

    .line 80
    iput-object p2, p0, Lcom/android/car/ui/uxr/a;->c:[I

    .line 81
    iget-object p1, p0, Lcom/android/car/ui/uxr/a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method
