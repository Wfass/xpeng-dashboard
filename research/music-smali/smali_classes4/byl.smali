.class public abstract Lbyl;
.super Ljava/lang/Object;
.source "BaseDrawer.kt"

# interfaces
.implements Lbyq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbyl$b;,
        Lbyl$a;
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# static fields
.field public static final a:Lbyl$a;


# instance fields
.field private final b:Lbyl$b;

.field private c:F

.field private d:F

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/animation/ArgbEvaluator;

.field private g:Lbyu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbyl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbyl$a;-><init>(Lccc;)V

    sput-object v0, Lbyl;->a:Lbyl$a;

    return-void
.end method

.method public constructor <init>(Lbyu;)V
    .locals 1

    const-string v0, "mIndicatorOptions"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbyl;->g:Lbyu;

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lbyl;->e:Landroid/graphics/Paint;

    .line 50
    iget-object p1, p0, Lbyl;->e:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    new-instance p1, Lbyl$b;

    invoke-direct {p1, p0}, Lbyl$b;-><init>(Lbyl;)V

    iput-object p1, p0, Lbyl;->b:Lbyl$b;

    .line 53
    iget-object p1, p0, Lbyl;->g:Lbyu;

    invoke-virtual {p1}, Lbyu;->c()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lbyl;->g:Lbyu;

    invoke-virtual {p1}, Lbyu;->c()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 55
    :cond_0
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lbyl;->f:Landroid/animation/ArgbEvaluator;

    :cond_1
    return-void
.end method

.method private final h()I
    .locals 3

    .line 80
    iget-object v0, p0, Lbyl;->g:Lbyu;

    invoke-virtual {v0}, Lbyu;->d()I

    move-result v0

    .line 81
    iget-object v1, p0, Lbyl;->g:Lbyu;

    invoke-virtual {v1}, Lbyu;->g()F

    move-result v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 82
    iget v2, p0, Lbyl;->c:F

    add-float/2addr v1, v2

    iget v2, p0, Lbyl;->d:F

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    add-int/lit8 v0, v0, 0x6

    return v0
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 36
    iget v0, p0, Lbyl;->c:F

    return v0
.end method

.method public a(II)Lbyl$b;
    .locals 1

    .line 64
    iget-object p1, p0, Lbyl;->g:Lbyu;

    invoke-virtual {p1}, Lbyu;->i()F

    move-result p1

    iget-object p2, p0, Lbyl;->g:Lbyu;

    invoke-virtual {p2}, Lbyu;->j()F

    move-result p2

    invoke-static {p1, p2}, Lkotlin/ranges/f;->a(FF)F

    move-result p1

    iput p1, p0, Lbyl;->c:F

    .line 66
    iget-object p1, p0, Lbyl;->g:Lbyu;

    invoke-virtual {p1}, Lbyu;->i()F

    move-result p1

    iget-object p2, p0, Lbyl;->g:Lbyu;

    invoke-virtual {p2}, Lbyu;->j()F

    move-result p2

    invoke-static {p1, p2}, Lkotlin/ranges/f;->b(FF)F

    move-result p1

    iput p1, p0, Lbyl;->d:F

    .line 67
    iget-object p1, p0, Lbyl;->g:Lbyu;

    invoke-virtual {p1}, Lbyu;->a()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 68
    iget-object p1, p0, Lbyl;->b:Lbyl$b;

    invoke-virtual {p0}, Lbyl;->f()I

    move-result p2

    invoke-direct {p0}, Lbyl;->h()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lbyl$b;->a(II)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lbyl;->b:Lbyl$b;

    invoke-direct {p0}, Lbyl;->h()I

    move-result p2

    invoke-virtual {p0}, Lbyl;->f()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lbyl$b;->a(II)V

    .line 72
    :goto_0
    iget-object p1, p0, Lbyl;->b:Lbyl$b;

    return-object p1
.end method

.method public final a(Landroid/animation/ArgbEvaluator;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lbyl;->f:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public final b()F
    .locals 1

    .line 37
    iget v0, p0, Lbyl;->d:F

    return v0
.end method

.method public final c()Landroid/graphics/Paint;
    .locals 1

    .line 38
    iget-object v0, p0, Lbyl;->e:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final d()Landroid/animation/ArgbEvaluator;
    .locals 1

    .line 39
    iget-object v0, p0, Lbyl;->f:Landroid/animation/ArgbEvaluator;

    return-object v0
.end method

.method protected final e()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lbyl;->g:Lbyu;

    invoke-virtual {v0}, Lbyu;->i()F

    move-result v0

    iget-object v1, p0, Lbyl;->g:Lbyu;

    invoke-virtual {v1}, Lbyu;->j()F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected f()I
    .locals 1

    .line 76
    iget-object v0, p0, Lbyl;->g:Lbyu;

    invoke-virtual {v0}, Lbyu;->h()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final g()Lbyu;
    .locals 1

    .line 32
    iget-object v0, p0, Lbyl;->g:Lbyu;

    return-object v0
.end method
