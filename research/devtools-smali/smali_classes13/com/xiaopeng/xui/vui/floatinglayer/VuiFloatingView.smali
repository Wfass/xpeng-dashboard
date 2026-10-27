.class public Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
.super Landroid/widget/FrameLayout;
.source "VuiFloatingView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$a;
    }
.end annotation


# instance fields
.field private acD:Landroid/graphics/drawable/AnimatedImageDrawable;

.field private acE:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$a;

.field private acF:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mType:I


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->acE:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$a;

    if-eqz p1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->acE:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$a;

    iget v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$a;->ex(I)V

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->acD:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->rb()V

    .line 184
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getVisibleHeight()I
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 217
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVisibleWidth()I
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 245
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 246
    const-string v0, "VuiFloatingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/f;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 251
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 252
    const-string v0, "VuiFloatingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public rb()V
    .locals 1

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->acF:Z

    .line 146
    return-void
.end method

.method public setOnTouchListener(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$a;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->acE:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$a;

    .line 171
    return-void
.end method
