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
.field private static final HOR_ORIENTATION:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final VER_ORIENTATION:I = 0x1


# instance fields
.field private drawableBg:Landroid/graphics/drawable/Drawable;

.field private elementCountLimitEn:I

.field private elementCountLimitZh:I

.field private isDomestic:Z

.field private layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mIconRes:[I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mIconResIndex:[I

.field private final mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

.field private mIsHorOrientation:Z

.field private final mIsInit:Z

.field private mIsPlayingAnim:Z

.field private mNewLineSelf:Z

.field private mOrientation:I

.field private mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

.field private mSelection:I

.field private mStandardHeg:I

.field private mStandardLen:I

.field private mStanderLenOverFourChild:I

.field private mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTextColorRes:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field private mTextLtRtPadding:I

.field private mTextSize:F

.field private matchPercentDirection:I

.field private matrix:Landroid/graphics/Matrix;

.field private maxString:Ljava/lang/String;

.field private originWidth:I

.field private segmentHorToVerLines:I

.field private singleLine:Z

.field private singleTextLen:I

.field private textLenList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textLineSpaceAdd:I

.field private ty1:Landroid/content/res/TypedArray;

.field private useMatchPercent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSegmented;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
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

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSegmented;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
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

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    const/4 v0, -0x5

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLineSpaceAdd:I

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    .line 83
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 84
    iput v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleTextLen:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->maxString:Ljava/lang/String;

    .line 86
    const/16 v0, 0x14

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextLtRtPadding:I

    .line 103
    new-instance v0, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    .line 104
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->matrix:Landroid/graphics/Matrix;

    .line 105
    new-instance v0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-direct {v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v0, v2, p2, v3}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/xpui/R$styleable;->XSegmented:[I

    invoke-virtual {v0, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_vui_labels:I

    .line 112
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 113
    .local v2, "vuiLabels":[Ljava/lang/CharSequence;
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_selected_pos:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 116
    .local v3, "selection":I
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_anim_disable_click:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    new-instance v5, Lcom/xiaopeng/xui/widget/XSegmented$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xui/widget/XSegmented$1;-><init>(Lcom/xiaopeng/xui/widget/XSegmented;)V

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setOnAnimationListener(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;)V

    .line 135
    :cond_0
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_orientation:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mOrientation:I

    .line 136
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_use_match_percent:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    .line 137
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_match_element_limit_zh:I

    const/4 v6, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitZh:I

    .line 138
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_match_element_limit_en:I

    const/4 v6, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitEn:I

    .line 139
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_match_percent_direction:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->matchPercentDirection:I

    .line 140
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_hor_to_ver_max_line:I

    const/4 v6, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->segmentHorToVerLines:I

    .line 141
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_android_singleLine:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleLine:Z

    .line 142
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_newline_self:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mNewLineSelf:Z

    .line 143
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mOrientation:I

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/xiaopeng/xpui/R$bool;->x_segment_is_domestic:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->isDomestic:Z

    .line 145
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/xiaopeng/xpui/R$dimen;->x_segment_standard_len:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mStandardLen:I

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/xiaopeng/xpui/R$dimen;->x_segment_standard_high:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mStandardHeg:I

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/xiaopeng/xpui/R$dimen;->x_segment_text_line_space_add:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLineSpaceAdd:I

    .line 150
    :cond_2
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mOrientation:I

    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XSegmented;->setOrientation(I)V

    .line 154
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    if-eqz v4, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->drawableBg:Landroid/graphics/drawable/Drawable;

    .line 156
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setBackgroundColor(I)V

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/xiaopeng/xpui/R$dimen;->x_segement_text_size:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextSize:F

    .line 159
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_texts:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 162
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_text_color:I

    sget v6, Lcom/xiaopeng/xpui/R$color;->x_tabs_layout_title_color:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextColorRes:I

    .line 164
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_texts:I

    .line 165
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 166
    .local v4, "mTitleTexts":[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 167
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v6

    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_texts:I

    invoke-interface {v6, p1, v0, v7, v4}, Lcom/xiaopeng/xui/lang/LangPresenter;->parseTextArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 170
    :cond_4
    invoke-virtual {p0, v4, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 171
    .end local v4    # "mTitleTexts":[Ljava/lang/CharSequence;
    goto :goto_2

    .line 172
    :cond_5
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_icons:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 174
    .local v4, "iconRes":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 175
    .local v6, "iconArray":Landroid/content/res/TypedArray;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 176
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 177
    move v7, v1

    .local v7, "i":I
    :goto_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 178
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    invoke-virtual {v6, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v8, v7

    .line 179
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    aput v7, v8, v7

    .line 177
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 181
    .end local v7    # "i":I
    :cond_6
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    invoke-virtual {p0, v7, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView([I[Ljava/lang/CharSequence;)V

    .line 185
    .end local v4    # "iconRes":I
    .end local v6    # "iconArray":Landroid/content/res/TypedArray;
    :goto_2
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_text_size:I

    invoke-static {v0, v4}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->create(Landroid/content/res/TypedArray;I)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    move-result-object v4

    .line 186
    .local v4, "xFontScaleHelper":Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    if-eqz v4, :cond_7

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v6, :cond_7

    .line 187
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    new-instance v7, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$U9d4Heeogz6Zf5wXBlZLmokOwUo;

    invoke-direct {v7, p0, v4}, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$U9d4Heeogz6Zf5wXBlZLmokOwUo;-><init>(Lcom/xiaopeng/xui/widget/XSegmented;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xui/view/XViewDelegate;->setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V

    .line 200
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    invoke-direct {p0, v3, v1, v1, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZZ)V

    .line 203
    const/16 v6, 0x11

    invoke-virtual {p0, v6}, Lcom/xiaopeng/xui/widget/XSegmented;->setGravity(I)V

    .line 204
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setWillNotDraw(Z)V

    .line 205
    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsInit:Z

    .line 206
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v5}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 207
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v5}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$Fr0ax3jNPGIpPY5QXOZY4QghFbI;

    invoke-direct {v6, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$Fr0ax3jNPGIpPY5QXOZY4QghFbI;-><init>(Lcom/xiaopeng/xui/widget/XSegmented;)V

    invoke-virtual {v5, v6}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 225
    :cond_8
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/xiaopeng/xpui/R$dimen;->x_segement_text_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v1, v6}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    .line 226
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v5, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setSingleLine(Z)V

    .line 227
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLineSpaceAdd:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setLineSpacing(FF)V

    .line 228
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextLtRtPadding:I

    invoke-direct {p0, v6, v7}, Lcom/xiaopeng/xui/widget/XSegmented;->dp(Landroid/content/res/Resources;I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextLtRtPadding:I

    invoke-direct {p0, v7, v8}, Lcom/xiaopeng/xui/widget/XSegmented;->dp(Landroid/content/res/Resources;I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v1, v7, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setPadding(IIII)V

    .line 229
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/widget/XSegmented;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XSegmented;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsPlayingAnim:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/XSegmented;)Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XSegmented;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    return-object v0
.end method

.method private changeDirection(I)V
    .locals 8
    .param p1, "orientation"    # I

    .line 686
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    .line 687
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mOrientation:I

    .line 688
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setOrientation(Z)V

    .line 689
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mOrientation:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setOrientation(I)V

    .line 690
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    .line 691
    .local v1, "childCount":I
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 692
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 693
    .local v3, "childView":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->removeViewAt(I)V

    .line 694
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    const/4 v6, -0x1

    if-eqz v5, :cond_1

    move v5, v0

    goto :goto_2

    :cond_1
    move v5, v6

    :goto_2
    iget-boolean v7, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move v6, v0

    :goto_3
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 696
    .local v4, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->addView(Landroid/view/View;I)V

    .line 691
    .end local v3    # "childView":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 699
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private changeIndicatorEnable()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setEnable(Z)V

    .line 561
    :cond_0
    return-void
.end method

.method private dp(Landroid/content/res/Resources;I)F
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "value"    # I

    .line 264
    int-to-float v0, p2

    .line 265
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 264
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private getTextLineCount()I
    .locals 5

    .line 674
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    .line 675
    .local v0, "count":I
    const/4 v1, 0x1

    .line 676
    .local v1, "lineCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 677
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 678
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 679
    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 676
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 682
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private getTextMaxString()Ljava/lang/String;
    .locals 5

    .line 663
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 664
    .local v0, "len":I
    const-string v1, ""

    .line 665
    .local v1, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 666
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 667
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 665
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 670
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xui/widget/XSegmented;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V
    .locals 5
    .param p1, "xFontScaleHelper"    # Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 189
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 191
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 192
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->refreshTextSize(Landroid/widget/TextView;)V

    .line 194
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setTitleText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 188
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->refreshTextSize(Landroid/widget/TextView;)V

    .line 198
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/xiaopeng/xui/widget/XSegmented;)V
    .locals 5

    .line 208
    sget-object v0, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string v1, "XSegmented: addCallback onThemeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextColorRes:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setTitleTextColor(I)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    if-eqz v0, :cond_0

    .line 211
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    aget v2, v2, v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    aget v4, v4, v0

    invoke-virtual {p0, v2, v3, v4}, Lcom/xiaopeng/xui/widget/XSegmented;->setSegmentIcon(ILjava/lang/CharSequence;I)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->onConfigurationChanged(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 219
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->drawableBg:Landroid/graphics/drawable/Drawable;

    .line 221
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setBackgroundColor(I)V

    .line 223
    :cond_2
    return-void
.end method

.method public static synthetic lambda$onVuiElementEvent$2(Lcom/xiaopeng/xui/widget/XSegmented;Ljava/lang/Double;Landroid/view/View;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Double;
    .param p2, "view"    # Landroid/view/View;

    .line 761
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 763
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 764
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "elementView":Landroid/view/View;
    goto :goto_0

    .line 766
    .end local v1    # "elementView":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .line 768
    .restart local v1    # "elementView":Landroid/view/View;
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 769
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    invoke-interface {v2, p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;->onInterceptChange(Lcom/xiaopeng/xui/widget/XSegmented;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 771
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->setPerformVuiAction(Z)V

    .line 772
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZZ)V

    .line 773
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setPerformVuiAction(Z)V

    .line 776
    :cond_2
    return-void
.end method

.method private setSelection(IZZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "playAnimation"    # Z
    .param p3, "isEdt"    # Z

    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZZ)V

    .line 501
    return-void
.end method

.method private setSelection(IZZZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "playAnimation"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "isEdt"    # Z

    .line 508
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 509
    .local v0, "current":I
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 510
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 511
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 513
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 514
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

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    .end local v2    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v1, :cond_4

    .line 517
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-virtual {v1, v2, v3, p2}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setSelection(IIZ)V

    .line 519
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->changeIndicatorEnable()V

    .line 520
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-eq v0, v1, :cond_5

    .line 521
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-interface {v1, p0, v2, p3}, Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;->onSelectionChange(Lcom/xiaopeng/xui/widget/XSegmented;IZ)V

    .line 523
    :cond_5
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-ne v0, v1, :cond_6

    if-eqz p4, :cond_7

    .line 524
    :cond_6
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XSegmented;->updateVui(Landroid/view/View;)V

    .line 526
    :cond_7
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

    .line 360
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(ILjava/lang/CharSequence;I)V

    .line 361
    return-void
.end method

.method public addSegmentView(ILjava/lang/CharSequence;I)V
    .locals 1
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

    .line 365
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(ILjava/lang/CharSequence;II)V

    .line 366
    return-void
.end method

.method public addSegmentView(ILjava/lang/CharSequence;II)V
    .locals 8
    .param p1, "icon"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "vuiLabel"    # Ljava/lang/CharSequence;
    .param p3, "index"    # I
    .param p4, "limitIconHight"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 371
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 372
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 374
    :cond_0
    if-gez p3, :cond_1

    .line 375
    const/4 p3, 0x0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v0, v0

    const/4 v2, 0x1

    if-lt p3, v0, :cond_4

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 379
    .local v0, "iconRes":[I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 380
    .local v3, "iconResIndex":[I
    array-length v4, v0

    add-int/2addr v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 381
    array-length v4, v3

    add-int/2addr v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 382
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v5, v0

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    array-length v5, v3

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v5, v0

    aput p1, v4, v5

    .line 385
    move v4, v1

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 386
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    aget v5, v5, v4

    if-lt v5, p3, :cond_2

    .line 387
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    aget v6, v5, v4

    add-int/2addr v6, v2

    aput v6, v5, v4

    .line 385
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 390
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    array-length v5, v3

    aput p3, v4, v5

    .line 391
    .end local v0    # "iconRes":[I
    .end local v3    # "iconResIndex":[I
    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_5

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 393
    .restart local v0    # "iconRes":[I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 394
    .restart local v3    # "iconResIndex":[I
    array-length v4, v0

    add-int/2addr v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 395
    array-length v4, v3

    add-int/2addr v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 396
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    invoke-static {v0, v1, v4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    invoke-static {v3, v1, v4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    aput p1, v4, p3

    .line 399
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    aput p3, v4, p3

    .line 400
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    add-int/lit8 v5, p3, 0x1

    array-length v6, v0

    sub-int/2addr v6, p3

    invoke-static {v0, p3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    add-int/lit8 v5, p3, 0x1

    array-length v6, v3

    sub-int/2addr v6, p3

    invoke-static {v3, p3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    add-int/lit8 v4, p3, 0x1

    .restart local v4    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 405
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    aget v6, v5, v4

    add-int/2addr v6, v2

    aput v6, v5, v4

    .line 404
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 408
    .end local v0    # "iconRes":[I
    .end local v3    # "iconResIndex":[I
    .end local v4    # "i":I
    :cond_5
    :goto_2
    new-instance v0, Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;)V

    .line 410
    .local v0, "imageView":Lcom/xiaopeng/xui/widget/XImageView;
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    if-lez p4, :cond_8

    .line 411
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v6, :cond_6

    move v4, v1

    nop

    :cond_6
    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v6, :cond_7

    const/4 v1, -0x2

    nop

    :cond_7
    invoke-direct {v5, v4, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v1, v5

    .line 413
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, p4}, Lcom/xiaopeng/xui/widget/XImageView;->setMaxHeight(I)V

    .line 414
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setAdjustViewBounds(Z)V

    .line 415
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_4

    .line 417
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v6, :cond_9

    move v6, v1

    goto :goto_3

    :cond_9
    move v6, v4

    :goto_3
    iget-boolean v7, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v7, :cond_a

    move v1, v4

    nop

    :cond_a
    invoke-direct {v5, v6, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v1, v5

    .line 419
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 421
    :goto_4
    if-eqz p1, :cond_b

    .line 422
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    :cond_b
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    if-eqz p2, :cond_c

    .line 426
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiLabel(Ljava/lang/String;)V

    .line 428
    :cond_c
    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->TEXTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 429
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->isSoundEffectsEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setSoundEffectsEnabled(Z)V

    .line 430
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    const-string v4, ""

    invoke-virtual {v3, p3, v4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 432
    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->addView(Landroid/view/View;I)V

    .line 433
    iget v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 434
    .local v3, "selection":I
    if-gt p3, v3, :cond_d

    .line 435
    add-int/lit8 v3, v3, 0x1

    .line 437
    :cond_d
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsInit:Z

    invoke-direct {p0, v3, v2, v4}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZ)V

    .line 438
    return-void
.end method

.method public addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "vuiLabel"    # Ljava/lang/CharSequence;

    .line 278
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 279
    return-void
.end method

.method public addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "vuiLabel"    # Ljava/lang/CharSequence;
    .param p3, "index"    # I

    .line 282
    if-eqz p1, :cond_4

    .line 283
    new-instance v0, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    .line 284
    .local v0, "textView":Lcom/xiaopeng/xui/widget/XTextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 286
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setGravity(I)V

    .line 288
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_segement_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v4, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    .line 290
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextColorRes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 291
    if-eqz p2, :cond_2

    .line 292
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    .line 294
    :cond_2
    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->TEXTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 295
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->isSoundEffectsEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setSoundEffectsEnabled(Z)V

    .line 296
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleLine:Z

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setSingleLine(Z)V

    .line 298
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLineSpaceAdd:I

    int-to-float v2, v2

    invoke-virtual {v0, v2, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setLineSpacing(FF)V

    .line 299
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextLtRtPadding:I

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->dp(Landroid/content/res/Resources;I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextLtRtPadding:I

    invoke-direct {p0, v3, v5}, Lcom/xiaopeng/xui/widget/XSegmented;->dp(Landroid/content/res/Resources;I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v4, v3, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setPadding(IIII)V

    .line 300
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 301
    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->addView(Landroid/view/View;I)V

    .line 302
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 303
    .local v2, "selection":I
    if-gt p3, v2, :cond_3

    .line 304
    add-int/lit8 v2, v2, 0x1

    .line 306
    :cond_3
    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsInit:Z

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZ)V

    .line 308
    .end local v0    # "textView":Lcom/xiaopeng/xui/widget/XTextView;
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "selection":I
    :cond_4
    return-void
.end method

.method public addSegmentView([I[Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "icons"    # [I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "vuiLabels"    # [Ljava/lang/CharSequence;

    .line 352
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 354
    if-eqz p2, :cond_0

    array-length v1, p2

    if-le v1, v0, :cond_0

    aget-object v1, p2, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 355
    .local v1, "c":Ljava/lang/CharSequence;
    :goto_1
    aget v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(ILjava/lang/CharSequence;)V

    .line 353
    .end local v1    # "c":Ljava/lang/CharSequence;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public addSegmentView([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "titles"    # [Ljava/lang/CharSequence;
    .param p2, "vuiLabels"    # [Ljava/lang/CharSequence;

    .line 269
    if-eqz p1, :cond_1

    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 271
    if-eqz p2, :cond_0

    array-length v1, p2

    if-le v1, v0, :cond_0

    aget-object v1, p2, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 272
    .local v1, "c":Ljava/lang/CharSequence;
    :goto_1
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 270
    .end local v1    # "c":Ljava/lang/CharSequence;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public clearSegment()V
    .locals 2

    .line 489
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->removeAllViews()V

    .line 490
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 491
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 492
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 493
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 621
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->drawableStateChanged()V

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setState([I)Z

    .line 625
    :cond_0
    return-void
.end method

.method public getSelection()I
    .locals 1

    .line 529
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 703
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 704
    instance-of v0, p1, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->invalidate()V

    .line 707
    :cond_0
    return-void
.end method

.method public isEnable(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 551
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 552
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0

    .line 554
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p1, "vuiElementId"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 739
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setVuiValue(Ljava/lang/Object;)V

    .line 740
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 741
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 742
    .local v1, "childView":Landroid/view/View;
    instance-of v2, v1, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v2, :cond_0

    .line 743
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    .line 744
    .local v2, "xView":Lcom/xiaopeng/xui/vui/VuiView;
    invoke-interface {v2, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    .line 746
    sget-object v3, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBuildVuiElement:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "xView":Lcom/xiaopeng/xui/vui/VuiView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 711
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsPlayingAnim:Z

    if-eqz v0, :cond_0

    .line 712
    return-void

    .line 714
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 715
    .local v0, "index":I
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-ne v0, v1, :cond_1

    .line 716
    return-void

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    invoke-interface {v1, p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;->onInterceptChange(Lcom/xiaopeng/xui/widget/XSegmented;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 720
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZZ)V

    .line 722
    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 629
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 630
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 631
    return-void

    .line 634
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v0, :cond_3

    .line 635
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->isDomestic:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitZh:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitEn:I

    :goto_0
    if-ge v0, v1, :cond_3

    .line 636
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_3

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->originWidth:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->matchPercentDirection:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 638
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 641
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->drawableBg:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    if-eqz v0, :cond_4

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->drawableBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 643
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->drawableBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 645
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 647
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mNewLineSelf:Z

    if-eqz v0, :cond_6

    .line 648
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getTextLineCount()I

    move-result v0

    .line 649
    .local v0, "lineCount":I
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->segmentHorToVerLines:I

    if-le v0, v2, :cond_5

    .line 650
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->changeDirection(I)V

    goto :goto_1

    .line 651
    :cond_5
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-nez v2, :cond_6

    .line 652
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->maxString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleTextLen:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xui/widget/XTextView;->measure(II)V

    .line 654
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XTextView;->getLineCount()I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->segmentHorToVerLines:I

    if-gt v2, v3, :cond_6

    .line 655
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->changeDirection(I)V

    .line 659
    .end local v0    # "lineCount":I
    :cond_6
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 660
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
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

    .line 586
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onLayout(ZIIII)V

    .line 587
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 588
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v0, :cond_4

    .line 592
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->isDomestic:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitZh:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitEn:I

    :goto_0
    if-ge v0, v1, :cond_4

    .line 593
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_4

    .line 594
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    .line 595
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v0

    .line 597
    .local v1, "width":I
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->originWidth:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 598
    .local v2, "leftMarge":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 599
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 600
    .local v5, "childView":Landroid/view/View;
    mul-int v6, v1, v4

    iget v7, p0, Lcom/xiaopeng/xui/widget/XSegmented;->matchPercentDirection:I

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    .line 601
    .local v6, "left":I
    add-int v7, v6, v1

    .line 602
    .local v7, "right":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 598
    .end local v5    # "childView":Landroid/view/View;
    .end local v6    # "left":I
    .end local v7    # "right":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 604
    .end local v4    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, p2

    invoke-direct {v4, p2, p3, v5, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 605
    .end local v0    # "childCount":I
    .end local v1    # "width":I
    .end local v2    # "leftMarge":I
    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_5

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 609
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mNewLineSelf:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-nez v0, :cond_6

    .line 610
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleTextLen:I

    .line 611
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleTextLen:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 612
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleTextLen:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setMaxWidth(I)V

    .line 615
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getTextMaxString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->maxString:Ljava/lang/String;

    .line 617
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 237
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    .line 238
    .local v0, "count":I
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v1

    const/4 v2, -0x2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_7

    .line 239
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mStandardLen:I

    mul-int/2addr v1, v0

    .line 241
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v2, :cond_1

    .line 242
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleLine:Z

    if-eqz v4, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getTextMaxString()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v5}, Lcom/xiaopeng/xui/widget/XTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextLtRtPadding:I

    invoke-direct {p0, v7, v8}, Lcom/xiaopeng/xui/widget/XSegmented;->dp(Landroid/content/res/Resources;I)F

    move-result v7

    float-to-int v7, v7

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    .line 245
    .local v5, "maxWidth":I
    mul-int v6, v5, v0

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 246
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "maxWidth":I
    goto :goto_2

    .line 247
    :cond_0
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2

    .line 249
    :cond_1
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v4, :cond_4

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->isDomestic:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitZh:I

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitEn:I

    :goto_0
    if-ge v0, v4, :cond_4

    .line 250
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    .line 251
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->originWidth:I

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredWidth()I

    move-result v4

    mul-int/2addr v4, v0

    iget-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->isDomestic:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitZh:I

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitEn:I

    :goto_1
    div-int/2addr v4, v5

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 254
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mNewLineSelf:Z

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v2, :cond_6

    .line 255
    :cond_5
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mStandardHeg:I

    mul-int/2addr v2, v0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 257
    .end local v1    # "width":I
    :cond_6
    goto :goto_3

    :cond_7
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_8

    .line 258
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mStandardHeg:I

    mul-int/2addr v1, v0

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 260
    :cond_8
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    .line 261
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 754
    const-string v0, "Segmented onVuiElementEvent"

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/String;)V

    .line 755
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 756
    return v0

    .line 758
    :cond_0
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 759
    .local v1, "value":Ljava/lang/Double;
    if-eqz v1, :cond_1

    .line 760
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$7AbZ3mY5zsxAPystAHr8fZrX0Tg;

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$7AbZ3mY5zsxAPystAHr8fZrX0Tg;-><init>(Lcom/xiaopeng/xui/widget/XSegmented;Ljava/lang/Double;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->post(Ljava/lang/Runnable;)Z

    .line 777
    const/4 v0, 0x1

    return v0

    .line 779
    :cond_1
    return v0
.end method

.method public removeSegment(I)V
    .locals 8
    .param p1, "index"    # I

    .line 462
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 463
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 464
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ImageView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 466
    .local v1, "iconRes":[I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 467
    .local v3, "iconResIndex":[I
    array-length v4, v1

    sub-int/2addr v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 468
    array-length v4, v3

    sub-int/2addr v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 469
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    const/4 v5, 0x0

    invoke-static {v1, v5, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    add-int/lit8 v4, p1, 0x1

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v7, v7

    sub-int/2addr v7, p1

    invoke-static {v1, v4, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    invoke-static {v3, v5, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v6, v6

    sub-int/2addr v6, p1

    invoke-static {v3, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    .end local v1    # "iconRes":[I
    .end local v3    # "iconResIndex":[I
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 477
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->removeViewAt(I)V

    .line 478
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 479
    .local v1, "selection":I
    if-ne p1, v1, :cond_1

    .line 480
    const/4 v1, -0x1

    goto :goto_0

    .line 481
    :cond_1
    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 482
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 484
    :cond_3
    :goto_0
    invoke-direct {p0, v1, v2, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZ)V

    .line 486
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "selection":I
    :cond_4
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 534
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 536
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setEnabled(ZI)V

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setEnabled(ZI)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "index"    # I

    .line 541
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 542
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 543
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 546
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->changeIndicatorEnable()V

    .line 548
    :cond_1
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

    .line 442
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-le v0, p3, :cond_2

    .line 443
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 444
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v1, :cond_1

    .line 445
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xui/widget/XImageView;

    .line 446
    .local v1, "xImageView":Lcom/xiaopeng/xui/widget/XImageView;
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    if-eqz p2, :cond_0

    .line 448
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiLabel(Ljava/lang/String;)V

    .line 453
    .end local v1    # "xImageView":Lcom/xiaopeng/xui/widget/XImageView;
    :cond_0
    goto :goto_0

    .line 454
    :cond_1
    sget-object v1, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string v2, "setSegmentIcon failed, view is not XImageView"

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 457
    :cond_2
    sget-object v0, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string v1, "setSegmentIcon failed, index > child count"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    :goto_1
    return-void
.end method

.method public setSegmentListener(Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;)V
    .locals 0
    .param p1, "segmentListener"    # Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    .line 725
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    .line 726
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "index"    # I

    .line 496
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZZ)V

    .line 497
    return-void
.end method

.method public setSelection(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "playAnimation"    # Z

    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZZ)V

    .line 505
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "vuiLabel"    # Ljava/lang/CharSequence;
    .param p3, "index"    # I

    .line 334
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-le v0, p3, :cond_1

    .line 335
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 336
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v1, :cond_0

    .line 337
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    .line 338
    .local v1, "textView":Lcom/xiaopeng/xui/widget/XTextView;
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getTextMaxString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->maxString:Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->invalidate()V

    .line 343
    .end local v1    # "textView":Lcom/xiaopeng/xui/widget/XTextView;
    goto :goto_0

    .line 344
    :cond_0
    sget-object v1, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string v2, "setTitleText failed, view is not XTextView"

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 347
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string v1, "setTitleText failed, index > child count"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    :goto_1
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 6
    .param p1, "colorRes"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 322
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextColorRes:I

    .line 323
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    .line 324
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 325
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 326
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 327
    sget-object v3, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTitleTextColor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "   ,color:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "   ,childCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 324
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 0
    .param p1, "size"    # F

    .line 319
    return-void
.end method
