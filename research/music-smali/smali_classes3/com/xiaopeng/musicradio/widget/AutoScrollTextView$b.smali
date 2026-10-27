.class Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;
.super Landroid/view/animation/Animation;
.source "AutoScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

.field private b:F

.field private c:F

.field private final d:Z

.field private final e:Z

.field private f:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;ZZ)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 236
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->d:Z

    .line 237
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->e:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    .line 251
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->b:F

    .line 252
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->c:F

    .line 253
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->f:Landroid/graphics/Camera;

    .line 254
    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->e:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 256
    :goto_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 258
    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 259
    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->d:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    int-to-float v3, v3

    .line 260
    iget v4, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->c:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr p1, v4

    mul-float/2addr v3, p1

    invoke-virtual {v2, v5, v3, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_1

    :cond_1
    int-to-float v3, v3

    .line 262
    iget v4, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->c:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, p1

    invoke-virtual {v2, v5, v3, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 264
    :goto_1
    invoke-virtual {v2, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 265
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    neg-float p1, v0

    neg-float v2, v1

    .line 267
    invoke-virtual {p2, p1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 268
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 243
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->f:Landroid/graphics/Camera;

    .line 244
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->c:F

    .line 245
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->b:F

    return-void
.end method
