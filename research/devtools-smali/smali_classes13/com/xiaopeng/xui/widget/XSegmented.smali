.class public Lcom/xiaopeng/xui/widget/XSegmented;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XSegmented.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/vui/commons/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XSegmented$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aeA:Lcom/xiaopeng/xui/widget/XSegmented$a;

.field private aew:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field private aex:[I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private aey:I

.field private final aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

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

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
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
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSegmented;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XSegmented:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 70
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_vui_labels:I

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    .line 72
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_selected_pos:I

    const/4 p4, -0x1

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 75
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_texts:I

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 76
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_text_size:I

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_font_title_03_size:I

    int-to-float v1, v1

    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextSize:F

    .line 78
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_text_color:I

    sget v1, Lcom/xiaopeng/xpui/R$color;->x_tabs_layout_title_color:I

    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aew:I

    .line 80
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_texts:I

    .line 81
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p4

    .line 82
    invoke-virtual {p0, p4, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_icons:I

    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 87
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    .line 88
    move v1, v0

    :goto_0
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    invoke-virtual {p0, p4, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->a([I[Ljava/lang/CharSequence;)V

    .line 94
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-direct {p0, p3, v0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->a(IZZ)V

    .line 97
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->setGravity(I)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setWillNotDraw(Z)V

    .line 99
    return-void
.end method

.method private a(IZZ)V
    .locals 4

    .line 286
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    .line 287
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    .line 288
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 289
    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    .line 291
    :cond_1
    const/4 p1, 0x0

    move v1, p1

    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 292
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    if-ne v3, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, p1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz p1, :cond_4

    .line 295
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    invoke-virtual {p1, v1, v2, p2}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setSelection(IIZ)V

    .line 297
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->rv()V

    .line 298
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aeA:Lcom/xiaopeng/xui/widget/XSegmented$a;

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    if-eq v0, p1, :cond_5

    .line 299
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aeA:Lcom/xiaopeng/xui/widget/XSegmented$a;

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    invoke-interface {p1, p0, p2, p3}, Lcom/xiaopeng/xui/widget/XSegmented$a;->a(Lcom/xiaopeng/xui/widget/XSegmented;IZ)V

    .line 301
    :cond_5
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XSegmented;->l(Landroid/view/View;)V

    .line 302
    return-void
.end method

.method private rv()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setEnable(Z)V

    .line 334
    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->a(ILjava/lang/CharSequence;I)V

    .line 185
    return-void
.end method

.method public a(ILjava/lang/CharSequence;I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 190
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    .line 192
    :cond_0
    if-gez p3, :cond_1

    .line 193
    nop

    .line 195
    move p3, v1

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    array-length v0, v0

    if-lt p3, v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    .line 197
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    .line 198
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    array-length v0, v0

    aput p1, v2, v0

    .line 200
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    .line 202
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    .line 203
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    invoke-static {v0, v1, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    aput p1, v2, p3

    .line 205
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    add-int/lit8 v3, p3, 0x1

    array-length v4, v0

    sub-int/2addr v4, p3

    invoke-static {v0, p3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    :cond_3
    :goto_0
    new-instance v0, Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;)V

    .line 209
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

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    :cond_4
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 215
    if-eqz p2, :cond_5

    .line 216
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->fm(Ljava/lang/String;)V

    .line 218
    :cond_5
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiElementType;->YU:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->a(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->isSoundEffectsEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setSoundEffectsEnabled(Z)V

    .line 220
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->addView(Landroid/view/View;I)V

    .line 222
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    .line 223
    if-gt p3, p1, :cond_6

    .line 224
    add-int/lit8 p1, p1, 0x1

    .line 226
    :cond_6
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 227
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 5

    .line 115
    if-eqz p1, :cond_2

    .line 116
    new-instance v0, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    .line 117
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
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextSize:F

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(F)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aew:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 123
    if-eqz p2, :cond_0

    .line 124
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->fm(Ljava/lang/String;)V

    .line 126
    :cond_0
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiElementType;->YU:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->a(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->isSoundEffectsEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setSoundEffectsEnabled(Z)V

    .line 128
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->addView(Landroid/view/View;I)V

    .line 130
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    .line 131
    if-gt p3, p1, :cond_1

    .line 132
    add-int/lit8 p1, p1, 0x1

    .line 134
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 136
    :cond_2
    return-void
.end method

.method public a([I[Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    .line 177
    const/4 v0, 0x0

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
    :goto_1
    aget v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->a(ILjava/lang/CharSequence;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    return-void
.end method

.method public a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 3

    .line 102
    if-eqz p1, :cond_1

    .line 103
    const/4 v0, 0x0

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
    :goto_1
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method

.method public b(ILjava/lang/CharSequence;I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
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
    instance-of v1, v0, Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v1, :cond_2

    .line 234
    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    if-eqz p2, :cond_0

    .line 237
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XImageView;->fm(Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    array-length p2, p2

    if-le p2, p3, :cond_1

    .line 240
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    aput p1, p2, p3

    .line 242
    :cond_1
    goto :goto_0

    .line 243
    :cond_2
    sget-object p1, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string p2, "setSegmentIcon failed, view is not XImageView"

    invoke-static {p1, p2}, Lcom/xiaopeng/xui/d/f;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    :goto_0
    goto :goto_1

    .line 246
    :cond_3
    sget-object p1, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string p2, "setSegmentIcon failed, index > child count"

    invoke-static {p1, p2}, Lcom/xiaopeng/xui/d/f;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 112
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 364
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->drawableStateChanged()V

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setState([I)Z

    .line 368
    :cond_0
    return-void
.end method

.method public e(ZI)V
    .locals 1

    .line 317
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 318
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 319
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->rv()V

    .line 321
    :cond_0
    return-void
.end method

.method public getSelection()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aey:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 380
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    instance-of p1, p1, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->invalidate()V

    .line 384
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 388
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 389
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aeA:Lcom/xiaopeng/xui/widget/XSegmented$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aeA:Lcom/xiaopeng/xui/widget/XSegmented$a;

    invoke-interface {v1, p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented$a;->a(Lcom/xiaopeng/xui/widget/XSegmented;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->a(IZZ)V

    .line 393
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 339
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 340
    invoke-static {p1}, Lcom/xiaopeng/xui/c/a;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 341
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aew:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->setTitleTextColor(I)V

    .line 342
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    array-length p1, p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 343
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aex:[I

    aget v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->b(ILjava/lang/CharSequence;I)V

    .line 343
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz p1, :cond_1

    .line 348
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->onConfigurationChanged(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 351
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 372
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 376
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 356
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onLayout(ZIIII)V

    .line 357
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz p1, :cond_0

    .line 358
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aez:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 360
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 310
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    .line 311
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 312
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->e(ZI)V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method public setSegmentListener(Lcom/xiaopeng/xui/widget/XSegmented$a;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aeA:Lcom/xiaopeng/xui/widget/XSegmented$a;

    .line 397
    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .line 278
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->a(IZZ)V

    .line 279
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 150
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->aew:I

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    .line 152
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 153
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 154
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 155
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_1
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 4

    .line 139
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextSize:F

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    .line 141
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 142
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 143
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 144
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_1
    return-void
.end method
