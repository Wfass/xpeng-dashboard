.class public Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XToggleLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mBgId:I

.field private mBroadcasting:Z

.field private mCheckStarting:Z

.field private mChecked:Z

.field private mDisabledAlpha:F

.field private mEnabled:Z

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mLoading:Z

.field private mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

.field private mOnCheckedChangeListener:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    sget v0, Lbyg$m;->XToggleLayout_Fill:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 57
    sget v0, Lbyg$m;->XToggleLayout_Fill:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mEnabled:Z

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private checkChildren()V
    .locals 4

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 160
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 161
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 162
    check-cast v2, Landroid/widget/Checkable;

    .line 163
    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enableChildren()V
    .locals 4

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 171
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 172
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 173
    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mEnabled:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setClickable(Z)V

    .line 67
    sget-object v1, Lbyg$n;->XToggleLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    sget p2, Lbyg$n;->XToggleLayout_android_checked:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    .line 69
    sget p2, Lbyg$n;->XToggleLayout_android_enabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mEnabled:Z

    .line 70
    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mEnabled:Z

    invoke-super {p0, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 71
    sget p2, Lbyg$n;->XToggleLayout_android_disabledAlpha:I

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mDisabledAlpha:F

    .line 72
    sget p2, Lbyg$n;->XToggleLayout_loading:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 73
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setLoading(Z)V

    .line 75
    sget p2, Lbyg$n;->XToggleLayout_android_background:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mBgId:I

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$aDrY2PZKJ6KIrDpMJy_1lrL22mM;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$aDrY2PZKJ6KIrDpMJy_1lrL22mM;-><init>(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;)V

    invoke-virtual {p1, p2}, Lapr;->a(Lapr$a;)V

    .line 81
    :cond_0
    sget-object p1, Lbxy;->SWITCH:Lbxy;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setVuiElementType(Lbxy;)V

    return-void
.end method

.method private refreshChildrenState()V
    .locals 5

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 148
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 149
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 150
    move-object v3, v2

    check-cast v3, Landroid/widget/Checkable;

    .line 151
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 152
    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mEnabled:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 214
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 215
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const v0, 0x1020017

    .line 216
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 218
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoading:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 138
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->drawableStateChanged()V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mDisabledAlpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoading:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 297
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    .line 301
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 289
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 206
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 207
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 307
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onDetachedFromWindow()V

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onFinishInflate()V

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->refreshChildrenState()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onSizeChanged(IIII)V

    .line 118
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    .line 119
    invoke-virtual {p3, p4, p4, p1, p2}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mCheckStarting:Z

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mOnCheckedChangeListener:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;->onInterceptClickCheck(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 263
    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mCheckStarting:Z

    if-nez v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->toggle()V

    .line 267
    :cond_1
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->playSoundEffect(I)V

    :cond_2
    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mCheckStarting:Z

    if-nez v0, :cond_3

    .line 236
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    if-eq v0, p1, :cond_2

    .line 237
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    .line 238
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->checkChildren()V

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->refreshDrawableState()V

    .line 241
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mBroadcasting:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mBroadcasting:Z

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mOnCheckedChangeListener:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;

    if-eqz p1, :cond_1

    .line 247
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    invoke-interface {p1, p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;->onCheckedChanged(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;Z)V

    :cond_1
    const/4 p1, 0x0

    .line 250
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mBroadcasting:Z

    .line 251
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->updateVui(Landroid/view/View;)V

    :cond_2
    return-void

    .line 234
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change check state in onInterceptClickCheck"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 224
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 225
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 226
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mEnabled:Z

    .line 227
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->enableChildren()V

    :cond_0
    return-void
.end method

.method public setLoading(Z)V
    .locals 4

    .line 85
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoading:Z

    if-eq v0, p1, :cond_3

    .line 86
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoading:Z

    .line 87
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoading:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-direct {v1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    .line 91
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v1, p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setType(I)V

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getMeasuredWidth()I

    move-result v0

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getMeasuredHeight()I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 97
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v2, p1, p1, v0, v1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setBounds(IIII)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->invalidate()V

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    .line 105
    :cond_2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mOnCheckedChangeListener:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setChecked(Z)V

    return-void
.end method

.method protected updateThemeResource()V
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mBgId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 315
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->refreshDrawableState()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mLoadingDrawable:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

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
