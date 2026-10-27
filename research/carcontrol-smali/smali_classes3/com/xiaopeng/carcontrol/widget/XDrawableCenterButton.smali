.class public Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;
.super Lcom/xiaopeng/xui/widget/XButton;
.source "XDrawableCenterButton.java"


# instance fields
.field bodyWidth:F

.field drawableLeft:Landroid/graphics/drawable/Drawable;

.field drawableLeftWidth:F

.field drawablePadding:I

.field drawables:[Landroid/graphics/drawable/Drawable;

.field private moveOffset:I

.field textWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->drawables:[Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 23
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->drawableLeft:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method


# virtual methods
.method public getMoveOffset()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->moveOffset:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->drawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->textWidth:F

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->drawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->drawableLeftWidth:F

    .line 46
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->textWidth:F

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->getCompoundPaddingStart()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->bodyWidth:F

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->bodyWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 49
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setMoveOffset(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moveOffset"
        }
    .end annotation

    .line 38
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/XDrawableCenterButton;->moveOffset:I

    return-void
.end method
