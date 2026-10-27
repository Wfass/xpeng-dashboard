.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/DrawableCenterXTextView;
.super Lcom/xiaopeng/xui/widget/XTextView;
.source "DrawableCenterXTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableCenterXTextView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/DrawableCenterXTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/DrawableCenterXTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/DrawableCenterXTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 29
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 30
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 31
    .local v1, "drawableLeft":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/DrawableCenterXTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/DrawableCenterXTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 33
    .local v2, "textWidth":F
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/DrawableCenterXTextView;->getCompoundDrawablePadding()I

    move-result v3

    .line 34
    .local v3, "drawablePadding":I
    const/4 v4, 0x0

    .line 35
    .local v4, "drawableWidth":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 36
    int-to-float v5, v4

    add-float/2addr v5, v2

    int-to-float v6, v3

    add-float/2addr v5, v6

    .line 37
    .local v5, "bodyWidth":F
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/DrawableCenterXTextView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    .end local v1    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .end local v2    # "textWidth":F
    .end local v3    # "drawablePadding":I
    .end local v4    # "drawableWidth":I
    .end local v5    # "bodyWidth":F
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    return-void
.end method
