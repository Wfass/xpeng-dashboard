.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "MaterialButton.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MaterialButton"


# instance fields
.field private additionalPaddingLeftForIcon:I

.field private additionalPaddingRightForIcon:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconPadding:I

.field private iconTint:Landroid/content/res/ColorStateList;

.field private iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private insetBottom:I

.field private insetLeft:I

.field private insetRight:I

.field private insetTop:I

.field private final materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private paddingBottom:I

.field private paddingEnd:I

.field private paddingStart:I

.field private paddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 117
    sget v0, Lcom/google/android/material/R$attr;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialButton:[I

    sget v1, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Button:I

    .line 124
    invoke-static {p1, p2, v0, p3, v1}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/material/R$styleable;->MaterialButton_android_padding:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 132
    .local v1, "padding":I
    sget v3, Lcom/google/android/material/R$styleable;->MaterialButton_android_paddingLeft:I

    .line 133
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 134
    .local v3, "paddingLeft":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 135
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_android_paddingStart:I

    .line 136
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/button/MaterialButton;->paddingStart:I

    goto :goto_0

    .line 139
    :cond_0
    iput v3, p0, Lcom/google/android/material/button/MaterialButton;->paddingStart:I

    .line 142
    :goto_0
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_android_paddingRight:I

    .line 143
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 145
    .local v4, "paddingRight":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v5, :cond_1

    .line 146
    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_android_paddingEnd:I

    .line 147
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/button/MaterialButton;->paddingEnd:I

    goto :goto_1

    .line 150
    :cond_1
    iput v4, p0, Lcom/google/android/material/button/MaterialButton;->paddingEnd:I

    .line 153
    :goto_1
    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_android_paddingTop:I

    .line 154
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/button/MaterialButton;->paddingTop:I

    .line 155
    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_android_paddingBottom:I

    .line 156
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/button/MaterialButton;->paddingBottom:I

    .line 159
    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetLeft:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/button/MaterialButton;->insetLeft:I

    .line 160
    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetRight:I

    .line 161
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/button/MaterialButton;->insetRight:I

    .line 162
    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetTop:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/button/MaterialButton;->insetTop:I

    .line 163
    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetBottom:I

    .line 164
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/button/MaterialButton;->insetBottom:I

    .line 166
    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_additionalPaddingLeftForIcon:I

    .line 167
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/button/MaterialButton;->additionalPaddingLeftForIcon:I

    .line 169
    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_additionalPaddingRightForIcon:I

    .line 170
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/button/MaterialButton;->additionalPaddingRightForIcon:I

    .line 173
    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_iconPadding:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 174
    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_iconTintMode:I

    const/4 v5, -0x1

    .line 176
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 175
    invoke-static {v2, v5}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 178
    nop

    .line 180
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_iconTint:I

    .line 179
    invoke-static {v2, v0, v5}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 181
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/google/android/material/R$styleable;->MaterialButton_icon:I

    invoke-static {v2, v0, v5}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 184
    new-instance v2, Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-direct {v2, p0}, Lcom/google/android/material/button/MaterialButtonHelper;-><init>(Lcom/google/android/material/button/MaterialButton;)V

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 185
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 190
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updateIcon()V

    .line 191
    return-void
.end method

.method private isUsingOriginalBackground()Z
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isBackgroundOverwritten()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateIcon()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 621
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 622
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 628
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updatePadding()V

    .line 629
    return-void
.end method

.method private updatePadding()V
    .locals 5

    .line 476
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->paddingStart:I

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->additionalPaddingLeftForIcon:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->insetLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->paddingTop:I

    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->insetTop:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->paddingEnd:I

    iget-object v4, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->additionalPaddingRightForIcon:I

    nop

    :cond_1
    add-int/2addr v3, v2

    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->insetRight:I

    add-int/2addr v3, v2

    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->paddingBottom:I

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->insetBottom:I

    add-int/2addr v2, v4

    invoke-static {p0, v0, v1, v3, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 482
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 195
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->draw(Landroid/graphics/Canvas;)V

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->drawStroke(Landroid/graphics/Canvas;)V

    .line 200
    :cond_0
    return-void
.end method

.method public getAdditionalPaddingLeftForIcon()I
    .locals 1

    .line 436
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->additionalPaddingLeftForIcon:I

    return v0
.end method

.method public getAdditionalPaddingRightForIcon()I
    .locals 1

    .line 467
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->additionalPaddingRightForIcon:I

    return v0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 285
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getButtonPaddingBottom()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->paddingBottom:I

    return v0
.end method

.method public getButtonPaddingEnd()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->paddingEnd:I

    return v0
.end method

.method public getButtonPaddingStart()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->paddingStart:I

    return v0
.end method

.method public getButtonPaddingTop()I
    .locals 1

    .line 391
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->paddingTop:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 792
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getCornerRadius()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconPadding()I
    .locals 1

    .line 506
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 668
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 710
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 752
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 273
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 344
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    .line 346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    sub-int v1, p5, p3

    sub-int v2, p4, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/button/MaterialButtonHelper;->updateMaskBounds(II)V

    .line 349
    :cond_0
    return-void
.end method

.method public setAdditionalPaddingLeftForIcon(I)V
    .locals 1
    .param p1, "additionalPaddingLeftForIcon"    # I

    .line 420
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->additionalPaddingLeftForIcon:I

    if-eq v0, p1, :cond_0

    .line 421
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->additionalPaddingLeftForIcon:I

    .line 422
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updatePadding()V

    .line 424
    :cond_0
    return-void
.end method

.method public setAdditionalPaddingRightForIcon(I)V
    .locals 1
    .param p1, "additionalPaddingRightForIcon"    # I

    .line 450
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->additionalPaddingRightForIcon:I

    if-eq v0, p1, :cond_0

    .line 451
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->additionalPaddingRightForIcon:I

    .line 452
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updatePadding()V

    .line 454
    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 312
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 301
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundColor(I)V

    goto :goto_0

    .line 306
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundColor(I)V

    .line 308
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 326
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 328
    const-string v0, "MaterialButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    .line 330
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 338
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "backgroundResourceId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 321
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 279
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 280
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 290
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 291
    return-void
.end method

.method public setButtonPadding(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 371
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->paddingStart:I

    .line 372
    iput p2, p0, Lcom/google/android/material/button/MaterialButton;->paddingTop:I

    .line 373
    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->paddingEnd:I

    .line 374
    iput p4, p0, Lcom/google/android/material/button/MaterialButton;->paddingBottom:I

    .line 375
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updatePadding()V

    .line 376
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1
    .param p1, "cornerRadius"    # I

    .line 764
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerRadius(I)V

    .line 767
    :cond_0
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1
    .param p1, "cornerRadiusResourceId"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 778
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    .line 781
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 519
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 520
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 521
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updateIcon()V

    .line 523
    :cond_0
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1
    .param p1, "iconPadding"    # I

    .line 492
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    if-eq v0, p1, :cond_0

    .line 493
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 494
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 496
    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 2
    .param p1, "iconResourceId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 538
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 539
    return-void
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "iconTint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 562
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 563
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 564
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updateIcon()V

    .line 566
    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "iconTintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 600
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 601
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 602
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updateIcon()V

    .line 604
    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1
    .param p1, "iconTintResourceId"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 577
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 578
    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 359
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "rippleColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 640
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 643
    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1
    .param p1, "rippleColorResourceId"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 654
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 657
    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "strokeColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 681
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 684
    :cond_0
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1
    .param p1, "strokeColorResourceId"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 696
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 699
    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1
    .param p1, "strokeWidth"    # I

    .line 723
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeWidth(I)V

    .line 726
    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1
    .param p1, "strokeWidthResourceId"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 738
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 741
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v0, :cond_1

    .line 216
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 218
    :cond_1
    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v0, :cond_1

    .line 254
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 256
    :cond_1
    :goto_0
    return-void
.end method
