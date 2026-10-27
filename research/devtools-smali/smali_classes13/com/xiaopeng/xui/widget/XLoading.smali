.class public Lcom/xiaopeng/xui/widget/XLoading;
.super Lcom/xiaopeng/xui/view/XView;
.source "XLoading.java"


# instance fields
.field private adw:Lcom/xiaopeng/xui/a/a;

.field private adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

.field private isDebug:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    sget v0, Lcom/xiaopeng/xpui/R$style;->XLoading_XLarge:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    sget v0, Lcom/xiaopeng/xpui/R$style;->XLoading_XLarge:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->isDebug:Z

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLoading;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_0

    .line 54
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setLayerType(ILandroid/graphics/Paint;)V

    .line 56
    :cond_0
    new-instance v0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-direct {v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 58
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XLoading:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XLoading_loading_type:I

    const/4 p4, 0x3

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setType(I)V

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XLoading;->isDebug:Z

    if-eqz p1, :cond_1

    .line 63
    new-instance p1, Lcom/xiaopeng/xui/a/a;

    const-string p2, "XLoading"

    invoke-direct {p1, p2}, Lcom/xiaopeng/xui/a/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLoading;->adw:Lcom/xiaopeng/xui/a/a;

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->isDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adw:Lcom/xiaopeng/xui/a/a;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adw:Lcom/xiaopeng/xui/a/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/a/a;->qI()V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->draw(Landroid/graphics/Canvas;)V

    .line 108
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XLoading;->isDebug:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XLoading;->adw:Lcom/xiaopeng/xui/a/a;

    if-eqz p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XLoading;->adw:Lcom/xiaopeng/xui/a/a;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/a/a;->qJ()Ljava/lang/String;

    .line 111
    :cond_1
    return-void
.end method

.method public getDelayFactor()F
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->getDelayFactor()F

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 129
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onAttachedToWindow()V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLoading;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLoading;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLoading;->invalidate()V

    .line 133
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLoading;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 100
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 137
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onDetachedFromWindow()V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    .line 139
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 92
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/view/XView;->onLayout(ZIIII)V

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setBounds(IIII)V

    .line 94
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 74
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;->onMeasure(II)V

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 78
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 79
    nop

    .line 80
    nop

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLoading;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v1, 0xd8

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLoading;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v2, :cond_0

    .line 82
    invoke-virtual {p0, v1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setMeasuredDimension(II)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLoading;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v2, :cond_1

    .line 84
    invoke-virtual {p0, v1, p2}, Lcom/xiaopeng/xui/widget/XLoading;->setMeasuredDimension(II)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLoading;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p2, v2, :cond_2

    .line 86
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setMeasuredDimension(II)V

    .line 88
    :cond_2
    :goto_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 152
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setVisible(ZZ)Z

    .line 154
    return-void
.end method

.method public setDebug(Z)V
    .locals 1

    .line 142
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XLoading;->isDebug:Z

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setDebug(Z)V

    .line 144
    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setDuration(J)V

    .line 125
    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setType(I)V

    .line 121
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLoading;->adx:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
