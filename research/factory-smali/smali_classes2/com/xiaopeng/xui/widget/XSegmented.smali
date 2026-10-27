.class public Lcom/xiaopeng/xui/widget/XSegmented;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XSegmented.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIconRes:[I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private final mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

.field private mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

.field private mSelection:I

.field private mTextColorRes:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field private mTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSegmented;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSegmented;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables",
            "CustomViewStyleable"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    new-instance v0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-direct {v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XSegmented:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_vui_labels:I

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 72
    .local v1, "vuiLabels":[Ljava/lang/CharSequence;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_selected_pos:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 75
    .local v2, "selection":I
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_texts:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 76
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_text_size:I

    sget v5, Lcom/xiaopeng/xpui/R$dimen;->x_font_title_03_size:I

    int-to-float v5, v5

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextSize:F

    .line 78
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_text_color:I

    sget v5, Lcom/xiaopeng/xpui/R$color;->x_tabs_layout_title_color:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextColorRes:I

    .line 80
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_texts:I

    .line 81
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 82
    .local v3, "mTitleTexts":[Ljava/lang/CharSequence;
    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 83
    .end local v3    # "mTitleTexts":[Ljava/lang/CharSequence;
    goto :goto_1

    .line 84
    :cond_0
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_icons:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 86
    .local v3, "iconRes":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 87
    .local v5, "iconArray":Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 88
    move v6, v4

    .local v6, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 89
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    invoke-virtual {v5, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v7, v6

    .line 88
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 91
    .end local v6    # "i":I
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    invoke-virtual {p0, v6, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView([I[Ljava/lang/CharSequence;)V

    .line 94
    .end local v3    # "iconRes":I
    .end local v5    # "iconArray":Landroid/content/res/TypedArray;
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-direct {p0, v2, v4, v4}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZ)V

    .line 97
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setGravity(I)V

    .line 98
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XSegmented;->setWillNotDraw(Z)V

    .line 99
    return-void
.end method

.method private changeIndicatorEnable()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setEnable(Z)V

    .line 334
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onVuiElementEvent$0(Lcom/xiaopeng/xui/widget/XSegmented;Ljava/lang/Double;Landroid/view/View;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Double;
    .param p2, "view"    # Landroid/view/View;

    .line 429
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 430
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "elementView":Landroid/view/View;
    goto :goto_0

    .line 432
    .end local v0    # "elementView":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 434
    .restart local v0    # "elementView":Landroid/view/View;
    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 435
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setPerformVuiAction(Z)V

    .line 436
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZ)V

    .line 437
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setPerformVuiAction(Z)V

    .line 438
    return-void
.end method

.method private setSelection(IZZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "playAnimation"    # Z
    .param p3, "fromUser"    # Z

    .line 286
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 287
    .local v0, "current":I
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 288
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 289
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 291
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 292
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-ne v4, v2, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v2    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v1, :cond_4

    .line 295
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-virtual {v1, v2, v3, p2}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setSelection(IIZ)V

    .line 297
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->changeIndicatorEnable()V

    .line 298
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-eq v0, v1, :cond_5

    .line 299
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-interface {v1, p0, v2, p3}, Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;->onSelectionChange(Lcom/xiaopeng/xui/widget/XSegmented;IZ)V

    .line 301
    :cond_5
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XSegmented;->updateVui(Landroid/view/View;)V

    .line 302
    return-void
.end method


# virtual methods
.method public addSegmentView(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "icon"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "vuiLabel"    # Ljava/lang/CharSequence;

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(ILjava/lang/CharSequence;I)V

    .line 185
    return-void
.end method

.method public addSegmentView(ILjava/lang/CharSequence;I)V
    .locals 5
    .param p1, "icon"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "vuiLabel"    # Ljava/lang/CharSequence;
    .param p3, "index"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 190
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 192
    :cond_0
    if-gez p3, :cond_1

    .line 193
    const/4 p3, 0x0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v0, v0

    if-lt p3, v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 197
    .local v0, "iconRes":[I
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 198
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v3, v0

    aput p1, v2, v3

    .line 200
    .end local v0    # "iconRes":[I
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 202
    .restart local v0    # "iconRes":[I
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 203
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    invoke-static {v0, v1, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    aput p1, v2, p3

    .line 205
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    add-int/lit8 v3, p3, 0x1

    array-length v4, v0

    sub-int/2addr v4, p3

    invoke-static {v0, p3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    .end local v0    # "iconRes":[I
    :cond_3
    :goto_0
    new-instance v0, Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;)V

    .line 209
    .local v0, "imageView":Lcom/xiaopeng/xui/widget/XImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    if-eqz p1, :cond_4

    .line 212
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    :cond_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 215
    if-eqz p2, :cond_5

    .line 216
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiLabel(Ljava/lang/String;)V

    .line 218
    :cond_5
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->TEXTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->isSoundEffectsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setSoundEffectsEnabled(Z)V

    .line 220
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->addView(Landroid/view/View;I)V

    .line 222
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 223
    .local v1, "selection":I
    if-gt p3, v1, :cond_6

    .line 224
    add-int/lit8 v1, v1, 0x1

    .line 226
    :cond_6
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 227
    return-void
.end method

.method public addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "vuiLabel"    # Ljava/lang/CharSequence;

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 112
    return-void
.end method

.method public addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "vuiLabel"    # Ljava/lang/CharSequence;
    .param p3, "index"    # I

    .line 115
    if-eqz p1, :cond_2

    .line 116
    new-instance v0, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "textView":Lcom/xiaopeng/xui/widget/XTextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setGravity(I)V

    .line 120
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextSize:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(F)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextColorRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 123
    if-eqz p2, :cond_0

    .line 124
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    .line 126
    :cond_0
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->TEXTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->isSoundEffectsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setSoundEffectsEnabled(Z)V

    .line 128
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->addView(Landroid/view/View;I)V

    .line 130
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 131
    .local v1, "selection":I
    if-gt p3, v1, :cond_1

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 134
    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 136
    .end local v0    # "textView":Lcom/xiaopeng/xui/widget/XTextView;
    .end local v1    # "selection":I
    :cond_2
    return-void
.end method

.method public addSegmentView([I[Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "icons"    # [I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "vuiLabels"    # [Ljava/lang/CharSequence;

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 178
    if-eqz p2, :cond_0

    array-length v1, p2

    if-le v1, v0, :cond_0

    aget-object v1, p2, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 179
    .local v1, "c":Ljava/lang/CharSequence;
    :goto_1
    aget v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(ILjava/lang/CharSequence;)V

    .line 177
    .end local v1    # "c":Ljava/lang/CharSequence;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public addSegmentView([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "titles"    # [Ljava/lang/CharSequence;
    .param p2, "vuiLabels"    # [Ljava/lang/CharSequence;

    .line 102
    if-eqz p1, :cond_1

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 104
    if-eqz p2, :cond_0

    array-length v1, p2

    if-le v1, v0, :cond_0

    aget-object v1, p2, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 105
    .local v1, "c":Ljava/lang/CharSequence;
    :goto_1
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 103
    .end local v1    # "c":Ljava/lang/CharSequence;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public clearSegment()V
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->removeAllViews()V

    .line 273
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 274
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 275
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 364
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->drawableStateChanged()V

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setState([I)Z

    .line 368
    :cond_0
    return-void
.end method

.method public getSelection()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 380
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    instance-of v0, p1, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->invalidate()V

    .line 384
    :cond_0
    return-void
.end method

.method public isEnable(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 324
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0

    .line 327
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p1, "vuiElementId"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 406
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setVuiValue(Ljava/lang/Object;)V

    .line 407
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 408
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 409
    .local v1, "childView":Landroid/view/View;
    instance-of v2, v1, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v2, :cond_0

    .line 410
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    .line 411
    .local v2, "xView":Lcom/xiaopeng/xui/vui/VuiView;
    invoke-interface {v2, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    .line 413
    sget-object v3, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBuildVuiElement:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "xView":Lcom/xiaopeng/xui/vui/VuiView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 388
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 389
    .local v0, "index":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    invoke-interface {v1, p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;->onInterceptChange(Lcom/xiaopeng/xui/widget/XSegmented;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 391
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZ)V

    .line 393
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 339
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 340
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextColorRes:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setTitleTextColor(I)V

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v0, v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    aget v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSegmentIcon(ILjava/lang/CharSequence;I)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->onConfigurationChanged(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 351
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 372
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 376
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 356
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onLayout(ZIIII)V

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 360
    :cond_0
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 421
    const-string v0, "Segmented onVuiElementEvent"

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/String;)V

    .line 422
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 423
    return v0

    .line 425
    :cond_0
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 426
    .local v1, "value":Ljava/lang/Double;
    if-eqz v1, :cond_1

    .line 427
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$ER8BZntFAAkVbBNKoz8rSSxFn8I;

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$ER8BZntFAAkVbBNKoz8rSSxFn8I;-><init>(Lcom/xiaopeng/xui/widget/XSegmented;Ljava/lang/Double;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->post(Ljava/lang/Runnable;)Z

    .line 439
    const/4 v0, 0x1

    return v0

    .line 441
    :cond_1
    return v0
.end method

.method public removeSegment(I)V
    .locals 5
    .param p1, "index"    # I

    .line 251
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 252
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 255
    .local v1, "iconRes":[I
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 256
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v4, v4

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    .end local v1    # "iconRes":[I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->removeViewAt(I)V

    .line 261
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 262
    .local v1, "selection":I
    if-ne p1, v1, :cond_1

    .line 263
    const/4 v1, -0x1

    goto :goto_0

    .line 264
    :cond_1
    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 265
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 267
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 269
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "selection":I
    :cond_4
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 310
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 312
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setEnabled(ZI)V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "index"    # I

    .line 317
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 318
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 319
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->changeIndicatorEnable()V

    .line 321
    :cond_0
    return-void
.end method

.method public setSegmentIcon(ILjava/lang/CharSequence;I)V
    .locals 3
    .param p1, "res"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "vuiLabel"    # Ljava/lang/CharSequence;
    .param p3, "index"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-le v0, p3, :cond_3

    .line 232
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v1, :cond_2

    .line 234
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xui/widget/XImageView;

    .line 235
    .local v1, "xImageView":Lcom/xiaopeng/xui/widget/XImageView;
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    if-eqz p2, :cond_0

    .line 237
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiLabel(Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v2, v2

    if-le v2, p3, :cond_1

    .line 240
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    aput p1, v2, p3

    .line 242
    .end local v1    # "xImageView":Lcom/xiaopeng/xui/widget/XImageView;
    :cond_1
    goto :goto_0

    .line 243
    :cond_2
    sget-object v1, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string v2, "setSegmentIcon failed, view is not XImageView"

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 246
    :cond_3
    sget-object v0, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string v1, "setSegmentIcon failed, index > child count"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    :goto_1
    return-void
.end method

.method public setSegmentListener(Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;)V
    .locals 0
    .param p1, "segmentListener"    # Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    .line 396
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    .line 397
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "index"    # I

    .line 278
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZ)V

    .line 279
    return-void
.end method

.method public setSelection(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "playAnimation"    # Z

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZ)V

    .line 283
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "vuiLabel"    # Ljava/lang/CharSequence;
    .param p3, "index"    # I

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-le v0, p3, :cond_1

    .line 162
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v1, :cond_0

    .line 164
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    .line 165
    .local v1, "textView":Lcom/xiaopeng/xui/widget/XTextView;
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    .line 167
    .end local v1    # "textView":Lcom/xiaopeng/xui/widget/XTextView;
    goto :goto_0

    .line 168
    :cond_0
    sget-object v1, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string v2, "setTitleText failed, view is not XTextView"

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 171
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string v1, "setTitleText failed, index > child count"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    :goto_1
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 5
    .param p1, "colorRes"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 150
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextColorRes:I

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    .line 152
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 153
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 154
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 155
    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 152
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 4
    .param p1, "size"    # F

    .line 139
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextSize:F

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    .line 141
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 142
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 144
    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 141
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
