.class public Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XToggleLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$a;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private alc:Z

.field private ald:Z

.field private ale:Z

.field private alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

.field private alg:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$a;

.field private alh:F

.field private ali:Landroid/graphics/drawable/Drawable;

.field private alj:I

.field private mChecked:Z

.field private mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    sget v0, Lcom/xiaopeng/xpui/R$style;->XToggleLayout_Fill:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 57
    sget v0, Lcom/xiaopeng/xpui/R$style;->XToggleLayout_Fill:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mEnabled:Z

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    return-void
.end method

.method private c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 214
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 215
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 216
    const v0, 0x1020017

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->ali:Landroid/graphics/drawable/Drawable;

    .line 217
    goto :goto_0

    .line 218
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->ali:Landroid/graphics/drawable/Drawable;

    .line 220
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setClickable(Z)V

    .line 67
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XToggleLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XToggleLayout_android_checked:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    .line 69
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XToggleLayout_android_enabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mEnabled:Z

    .line 70
    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mEnabled:Z

    invoke-super {p0, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 71
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XToggleLayout_android_disabledAlpha:I

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alh:F

    .line 72
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XToggleLayout_loading:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 73
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setLoading(Z)V

    .line 75
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XToggleLayout_android_background:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alj:I

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/a;->qN()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/a;->qN()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$hzJCCmsjTiLVnBLxWNfZtyNBMg0;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$hzJCCmsjTiLVnBLxWNfZtyNBMg0;-><init>(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 81
    :cond_0
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiElementType;->YS:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->a(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 82
    return-void
.end method

.method private sf()V
    .locals 5

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getChildCount()I

    move-result v0

    .line 147
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

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_1
    return-void
.end method

.method private sg()V
    .locals 4

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getChildCount()I

    move-result v0

    .line 159
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

    .line 159
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    return-void
.end method

.method private sh()V
    .locals 4

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getChildCount()I

    move-result v0

    .line 170
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

    .line 170
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->ale:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 192
    :cond_1
    :goto_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 138
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->drawableStateChanged()V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->ali:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->ali:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alh:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 143
    :cond_1
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 297
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    .line 301
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->invalidate()V

    .line 303
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 289
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 293
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    .line 206
    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 207
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mergeDrawableStates([I[I)[I

    .line 210
    :cond_0
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 307
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onDetachedFromWindow()V

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    .line 311
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

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->c(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->sf()V

    .line 128
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onSizeChanged(IIII)V

    .line 118
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eqz p3, :cond_0

    .line 119
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setBounds(IIII)V

    .line 121
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 257
    nop

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->ald:Z

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alg:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alg:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$a;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$a;->a(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;)Z

    move-result v0

    goto :goto_0

    .line 263
    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->ald:Z

    .line 264
    if-nez v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->toggle()V

    .line 267
    :cond_1
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->performClick()Z

    move-result v0

    .line 268
    if-nez v0, :cond_2

    .line 271
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->playSoundEffect(I)V

    .line 274
    :cond_2
    return v0
.end method

.method protected rg()V
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alj:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 315
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->refreshDrawableState()V

    .line 316
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->c(Landroid/graphics/drawable/Drawable;)V

    .line 134
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->ald:Z

    if-nez v0, :cond_3

    .line 236
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    if-eq v0, p1, :cond_2

    .line 237
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    .line 238
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->sg()V

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->refreshDrawableState()V

    .line 241
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alc:Z

    if-eqz p1, :cond_0

    .line 242
    return-void

    .line 245
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alc:Z

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alg:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$a;

    if-eqz p1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alg:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$a;

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    invoke-interface {p1, p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$a;->a(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;Z)V

    .line 250
    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alc:Z

    .line 251
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->l(Landroid/view/View;)V

    .line 253
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
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->sh()V

    .line 229
    :cond_0
    return-void
.end method

.method public setLoading(Z)V
    .locals 4

    .line 85
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->ale:Z

    if-eq v0, p1, :cond_3

    .line 86
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->ale:Z

    .line 87
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->ale:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 88
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-direct {v1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    .line 91
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v1, p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setType(I)V

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getMeasuredWidth()I

    move-result v0

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getMeasuredHeight()I

    move-result v1

    .line 96
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 97
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {v2, p1, p1, v0, v1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setBounds(IIII)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->invalidate()V

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eqz p1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    .line 105
    :cond_2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setEnabled(Z)V

    .line 108
    :cond_3
    :goto_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$a;)V
    .locals 0
    .param p1    # Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 201
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alg:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$a;

    .line 202
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setChecked(Z)V

    .line 285
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->alf:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

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
