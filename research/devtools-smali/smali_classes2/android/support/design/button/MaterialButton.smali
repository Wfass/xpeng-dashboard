.class public Landroid/support/design/button/MaterialButton;
.super Landroid/support/v7/widget/AppCompatButton;
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

.field private final materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private paddingBottom:I

.field private paddingEnd:I

.field private paddingStart:I

.field private paddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 115
    sget v0, Landroid/support/design/button/R$attr;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    sget-object v0, Landroid/support/design/button/R$styleable;->MaterialButton:[I

    sget v1, Landroid/support/design/button/R$style;->Widget_MaterialComponents_Button:I

    .line 122
    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 129
    sget p2, Landroid/support/design/button/R$styleable;->MaterialButton_android_padding:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 130
    sget v0, Landroid/support/design/button/R$styleable;->MaterialButton_android_paddingLeft:I

    .line 131
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 132
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 133
    sget v1, Landroid/support/design/button/R$styleable;->MaterialButton_android_paddingStart:I

    .line 134
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/button/MaterialButton;->paddingStart:I

    goto :goto_0

    .line 137
    :cond_0
    iput v0, p0, Landroid/support/design/button/MaterialButton;->paddingStart:I

    .line 140
    :goto_0
    sget v0, Landroid/support/design/button/R$styleable;->MaterialButton_android_paddingRight:I

    .line 141
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 143
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 144
    sget v1, Landroid/support/design/button/R$styleable;->MaterialButton_android_paddingEnd:I

    .line 145
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/button/MaterialButton;->paddingEnd:I

    goto :goto_1

    .line 148
    :cond_1
    iput v0, p0, Landroid/support/design/button/MaterialButton;->paddingEnd:I

    .line 151
    :goto_1
    sget v0, Landroid/support/design/button/R$styleable;->MaterialButton_android_paddingTop:I

    .line 152
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/button/MaterialButton;->paddingTop:I

    .line 153
    sget v0, Landroid/support/design/button/R$styleable;->MaterialButton_android_paddingBottom:I

    .line 154
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->paddingBottom:I

    .line 157
    sget p2, Landroid/support/design/button/R$styleable;->MaterialButton_android_insetLeft:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->insetLeft:I

    .line 158
    sget p2, Landroid/support/design/button/R$styleable;->MaterialButton_android_insetRight:I

    .line 159
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->insetRight:I

    .line 160
    sget p2, Landroid/support/design/button/R$styleable;->MaterialButton_android_insetTop:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->insetTop:I

    .line 161
    sget p2, Landroid/support/design/button/R$styleable;->MaterialButton_android_insetBottom:I

    .line 162
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->insetBottom:I

    .line 164
    sget p2, Landroid/support/design/button/R$styleable;->MaterialButton_additionalPaddingLeftForIcon:I

    .line 165
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingLeftForIcon:I

    .line 167
    sget p2, Landroid/support/design/button/R$styleable;->MaterialButton_additionalPaddingRightForIcon:I

    .line 168
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingRightForIcon:I

    .line 171
    sget p2, Landroid/support/design/button/R$styleable;->MaterialButton_iconPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    .line 172
    sget p2, Landroid/support/design/button/R$styleable;->MaterialButton_iconTintMode:I

    const/4 p3, -0x1

    .line 174
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 173
    invoke-static {p2, p3}, Landroid/support/design/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 176
    nop

    .line 178
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Landroid/support/design/button/R$styleable;->MaterialButton_iconTint:I

    .line 177
    invoke-static {p2, p1, p3}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 179
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Landroid/support/design/button/R$styleable;->MaterialButton_icon:I

    invoke-static {p2, p1, p3}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 182
    new-instance p2, Landroid/support/design/button/MaterialButtonHelper;

    invoke-direct {p2, p0}, Landroid/support/design/button/MaterialButtonHelper;-><init>(Landroid/support/design/button/MaterialButton;)V

    iput-object p2, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    .line 183
    iget-object p2, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p2, p1}, Landroid/support/design/button/MaterialButtonHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 185
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    iget p1, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 188
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updatePadding()V

    .line 189
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    .line 190
    return-void
.end method

.method private isUsingOriginalBackground()Z
    .locals 1

    .line 794
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->isBackgroundOverwritten()Z

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

    .line 618
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 620
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 621
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 626
    :cond_0
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 627
    return-void
.end method

.method private updatePadding()V
    .locals 5

    .line 475
    iget v0, p0, Landroid/support/design/button/MaterialButton;->paddingStart:I

    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingLeftForIcon:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/button/MaterialButton;->insetLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/button/MaterialButton;->paddingTop:I

    iget v3, p0, Landroid/support/design/button/MaterialButton;->insetTop:I

    add-int/2addr v1, v3

    iget v3, p0, Landroid/support/design/button/MaterialButton;->paddingEnd:I

    iget-object v4, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget v2, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingRightForIcon:I

    nop

    :cond_1
    add-int/2addr v3, v2

    iget v2, p0, Landroid/support/design/button/MaterialButton;->insetRight:I

    add-int/2addr v3, v2

    iget v2, p0, Landroid/support/design/button/MaterialButton;->paddingBottom:I

    iget v4, p0, Landroid/support/design/button/MaterialButton;->insetBottom:I

    add-int/2addr v2, v4

    invoke-static {p0, v0, v1, v3, v2}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 481
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 194
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->draw(Landroid/graphics/Canvas;)V

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->drawStroke(Landroid/graphics/Canvas;)V

    .line 199
    :cond_0
    return-void
.end method

.method public getAdditionalPaddingLeftForIcon()I
    .locals 1

    .line 435
    iget v0, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingLeftForIcon:I

    return v0
.end method

.method public getAdditionalPaddingRightForIcon()I
    .locals 1

    .line 466
    iget v0, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingRightForIcon:I

    return v0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 284
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 295
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getButtonPaddingBottom()I
    .locals 1

    .line 406
    iget v0, p0, Landroid/support/design/button/MaterialButton;->paddingBottom:I

    return v0
.end method

.method public getButtonPaddingEnd()I
    .locals 1

    .line 398
    iget v0, p0, Landroid/support/design/button/MaterialButton;->paddingEnd:I

    return v0
.end method

.method public getButtonPaddingStart()I
    .locals 1

    .line 382
    iget v0, p0, Landroid/support/design/button/MaterialButton;->paddingStart:I

    return v0
.end method

.method public getButtonPaddingTop()I
    .locals 1

    .line 390
    iget v0, p0, Landroid/support/design/button/MaterialButton;->paddingTop:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 790
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getCornerRadius()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 549
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconPadding()I
    .locals 1

    .line 505
    iget v0, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 588
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 613
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 666
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 708
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 750
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getStrokeWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 343
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatButton;->onLayout(ZIIII)V

    .line 345
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz p1, :cond_0

    .line 346
    iget-object p1, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    invoke-virtual {p1, p5, p4}, Landroid/support/design/button/MaterialButtonHelper;->updateMaskBounds(II)V

    .line 348
    :cond_0
    return-void
.end method

.method public setAdditionalPaddingLeftForIcon(I)V
    .locals 1

    .line 419
    iget v0, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingLeftForIcon:I

    if-eq v0, p1, :cond_0

    .line 420
    iput p1, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingLeftForIcon:I

    .line 421
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updatePadding()V

    .line 423
    :cond_0
    return-void
.end method

.method public setAdditionalPaddingRightForIcon(I)V
    .locals 1

    .line 449
    iget v0, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingRightForIcon:I

    if-eq v0, p1, :cond_0

    .line 450
    iput p1, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingRightForIcon:I

    .line 451
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updatePadding()V

    .line 453
    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 300
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setBackgroundColor(I)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundColor(I)V

    .line 307
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 325
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 327
    const-string v0, "MaterialButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    .line 329
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 337
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 316
    nop

    .line 317
    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 320
    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 278
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 279
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 289
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 290
    return-void
.end method

.method public setButtonPadding(IIII)V
    .locals 0

    .line 370
    iput p1, p0, Landroid/support/design/button/MaterialButton;->paddingStart:I

    .line 371
    iput p2, p0, Landroid/support/design/button/MaterialButton;->paddingTop:I

    .line 372
    iput p3, p0, Landroid/support/design/button/MaterialButton;->paddingEnd:I

    .line 373
    iput p4, p0, Landroid/support/design/button/MaterialButton;->paddingBottom:I

    .line 374
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updatePadding()V

    .line 375
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    .line 762
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setCornerRadius(I)V

    .line 765
    :cond_0
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 776
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setCornerRadius(I)V

    .line 779
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 518
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 519
    iput-object p1, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 520
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    .line 522
    :cond_0
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1

    .line 491
    iget v0, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    if-eq v0, p1, :cond_0

    .line 492
    iput p1, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    .line 493
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 495
    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 533
    nop

    .line 534
    if-eqz p1, :cond_0

    .line 535
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 537
    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 538
    return-void
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 561
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 562
    iput-object p1, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 563
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    .line 565
    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 599
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 600
    iput-object p1, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 601
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    .line 603
    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 576
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 577
    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 358
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 638
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 641
    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 652
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 655
    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 679
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 682
    :cond_0
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 694
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 697
    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .line 721
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setStrokeWidth(I)V

    .line 724
    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 736
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setStrokeWidth(I)V

    .line 739
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_1

    .line 215
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 217
    :cond_1
    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_1

    .line 253
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 255
    :cond_1
    :goto_0
    return-void
.end method
