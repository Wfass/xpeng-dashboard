.class Lakr$b;
.super Lakr$f;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lakr$d;

.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>(Lakr$d;FF)V
    .locals 0

    .line 383
    invoke-direct {p0}, Lakr$f;-><init>()V

    .line 384
    iput-object p1, p0, Lakr$b;->a:Lakr$d;

    .line 385
    iput p2, p0, Lakr$b;->b:F

    .line 386
    iput p3, p0, Lakr$b;->c:F

    return-void
.end method


# virtual methods
.method a()F
    .locals 3

    .line 406
    iget-object v0, p0, Lakr$b;->a:Lakr$d;

    invoke-static {v0}, Lakr$d;->a(Lakr$d;)F

    move-result v0

    iget v1, p0, Lakr$b;->c:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lakr$b;->a:Lakr$d;

    invoke-static {v1}, Lakr$d;->b(Lakr$d;)F

    move-result v1

    iget v2, p0, Lakr$b;->b:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public a(Landroid/graphics/Matrix;Lakb;ILandroid/graphics/Canvas;)V
    .locals 5

    .line 395
    iget-object v0, p0, Lakr$b;->a:Lakr$d;

    invoke-static {v0}, Lakr$d;->a(Lakr$d;)F

    move-result v0

    iget v1, p0, Lakr$b;->c:F

    sub-float/2addr v0, v1

    .line 396
    iget-object v1, p0, Lakr$b;->a:Lakr$d;

    invoke-static {v1}, Lakr$d;->b(Lakr$d;)F

    move-result v1

    iget v2, p0, Lakr$b;->b:F

    sub-float/2addr v1, v2

    .line 397
    new-instance v2, Landroid/graphics/RectF;

    float-to-double v3, v0

    float-to-double v0, v1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 398
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 400
    iget p1, p0, Lakr$b;->b:F

    iget v1, p0, Lakr$b;->c:F

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 401
    invoke-virtual {p0}, Lakr$b;->a()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 402
    invoke-virtual {p2, p4, v0, v2, p3}, Lakb;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    return-void
.end method
