.class public Lcom/xiaopeng/xui/widget/XSegmented;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XSegmented.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbxt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;
    }
.end annotation


# static fields
.field private static final HOR_ORIENTATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "XSegmented"

.field private static final VER_ORIENTATION:I = 0x1


# instance fields
.field private drawableBg:Landroid/graphics/drawable/Drawable;

.field private elementCountLimitEn:I

.field private elementCountLimitZh:I

.field private isDomestic:Z

.field private layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mIconRes:[I

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

.field private mTextLtRtPadding:I

.field private mTextSize:F

.field private matchPercentDirection:I

.field private matrix:Landroid/graphics/Matrix;

.field private maxSingleTextWidth:F

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
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSegmented;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSegmented;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables",
            "CustomViewStyleable"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x5

    .line 78
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

    const-string v0, ""

    .line 85
    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->maxString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->maxSingleTextWidth:F

    const/16 v0, 0x14

    .line 87
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextLtRtPadding:I

    .line 104
    new-instance v0, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    .line 105
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->matrix:Landroid/graphics/Matrix;

    .line 106
    new-instance v0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-direct {v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v0, v2, p2, v3}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lbyg$n;->XSegmented:[I

    invoke-virtual {v0, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 112
    sget p3, Lbyg$n;->XSegmented_segment_vui_labels:I

    .line 113
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    .line 114
    sget p4, Lbyg$n;->XSegmented_segment_selected_pos:I

    const/4 v0, -0x1

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 117
    sget v0, Lbyg$n;->XSegmented_segment_anim_disable_click:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    new-instance v2, Lcom/xiaopeng/xui/widget/XSegmented$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/XSegmented$1;-><init>(Lcom/xiaopeng/xui/widget/XSegmented;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setOnAnimationListener(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;)V

    .line 136
    :cond_0
    sget v0, Lbyg$n;->XSegmented_segment_orientation:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mOrientation:I

    .line 137
    sget v0, Lbyg$n;->XSegmented_segment_use_match_percent:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    .line 138
    sget v0, Lbyg$n;->XSegmented_segment_match_element_limit_zh:I

    const/4 v3, 0x4

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitZh:I

    .line 139
    sget v0, Lbyg$n;->XSegmented_segment_match_element_limit_en:I

    const/4 v3, 0x3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitEn:I

    .line 140
    sget v0, Lbyg$n;->XSegmented_segment_match_percent_direction:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->matchPercentDirection:I

    .line 141
    sget v0, Lbyg$n;->XSegmented_segment_hor_to_ver_max_line:I

    const/4 v3, 0x2

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->segmentHorToVerLines:I

    .line 142
    sget v0, Lbyg$n;->XSegmented_android_singleLine:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleLine:Z

    .line 143
    sget v0, Lbyg$n;->XSegmented_segment_newline_self:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mNewLineSelf:Z

    .line 144
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mOrientation:I

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lbyg$d;->x_segment_is_domestic:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->isDomestic:Z

    .line 146
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lbyg$f;->x_segment_standard_len:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mStandardLen:I

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lbyg$f;->x_segment_standard_high:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mStandardHeg:I

    .line 149
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lbyg$f;->x_segment_text_line_space_add:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLineSpaceAdd:I

    .line 151
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setOrientation(I)V

    .line 155
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->drawableBg:Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setBackgroundColor(I)V

    .line 159
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lbyg$f;->x_segement_text_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextSize:F

    .line 160
    sget v0, Lbyg$n;->XSegmented_segment_texts:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    sget v0, Lbyg$n;->XSegmented_segment_text_color:I

    sget v3, Lbyg$e;->x_tabs_layout_title_color:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextColorRes:I

    .line 165
    sget v0, Lbyg$n;->XSegmented_segment_texts:I

    .line 166
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 167
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v3

    sget v4, Lbyg$n;->XSegmented_segment_texts:I

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/xiaopeng/xui/lang/LangPresenter;->parseTextArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 171
    :cond_4
    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 173
    :cond_5
    sget p1, Lbyg$n;->XSegmented_segment_icons:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 177
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    move v0, v1

    .line 178
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 179
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v0

    .line 180
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    aput v0, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView([I[Ljava/lang/CharSequence;)V

    .line 186
    :goto_2
    sget p1, Lbyg$n;->XSegmented_segment_text_size:I

    invoke-static {p2, p1}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->create(Landroid/content/res/TypedArray;I)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 187
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz p3, :cond_7

    .line 188
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$U9d4Heeogz6Zf5wXBlZLmokOwUo;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$U9d4Heeogz6Zf5wXBlZLmokOwUo;-><init>(Lcom/xiaopeng/xui/widget/XSegmented;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V

    .line 201
    :cond_7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    invoke-direct {p0, p4, v1, v1, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZZ)V

    const/16 p1, 0x11

    .line 204
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->setGravity(I)V

    .line 205
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setWillNotDraw(Z)V

    .line 206
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsInit:Z

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 208
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$88yxti4Tm8RhURQZPhHPlP8P37s;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$88yxti4Tm8RhURQZPhHPlP8P37s;-><init>(Lcom/xiaopeng/xui/widget/XSegmented;)V

    invoke-virtual {p1, p2}, Lapr;->b(Lapr$a;)V

    .line 226
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lbyg$f;->x_segement_text_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setSingleLine(Z)V

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLineSpaceAdd:I

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setLineSpacing(FF)V

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextLtRtPadding:I

    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->dp(Landroid/content/res/Resources;I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget p4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextLtRtPadding:I

    invoke-direct {p0, p3, p4}, Lcom/xiaopeng/xui/widget/XSegmented;->dp(Landroid/content/res/Resources;I)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, v1, p3, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/widget/XSegmented;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsPlayingAnim:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/XSegmented;)Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    return-object p0
.end method

.method private changeDirection(I)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 690
    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    .line 691
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mOrientation:I

    .line 692
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setOrientation(Z)V

    .line 693
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->setOrientation(I)V

    .line 694
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result p1

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_3

    .line 696
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 697
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->removeViewAt(I)V

    .line 698
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_2
    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    move v5, v0

    :goto_3
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 700
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private changeIndicatorEnable()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method private dp(Landroid/content/res/Resources;I)F
    .locals 1

    int-to-float p2, p2

    .line 266
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    .line 265
    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private getTextLineCount()I
    .locals 5

    .line 678
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 681
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 682
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 683
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getTextMaxString()Ljava/lang/String;
    .locals 6

    .line 664
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 668
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpl-float v5, v4, v2

    if-lez v5, :cond_0

    .line 671
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private setSelection(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 501
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZZ)V

    return-void
.end method

.method private setSelection(IZZZ)V
    .locals 4

    .line 509
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 510
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    .line 511
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 p1, -0x1

    .line 512
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    :cond_1
    const/4 p1, 0x0

    move v1, p1

    .line 514
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 515
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-ne v3, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, p1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz p1, :cond_4

    .line 518
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-virtual {p1, v1, v2, p2}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setSelection(IIZ)V

    .line 520
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->changeIndicatorEnable()V

    .line 521
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    if-eqz p1, :cond_5

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-eq v0, p2, :cond_5

    .line 522
    invoke-interface {p1, p0, p2, p3}, Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;->onSelectionChange(Lcom/xiaopeng/xui/widget/XSegmented;IZ)V

    .line 524
    :cond_5
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-ne v0, p1, :cond_6

    if-eqz p4, :cond_7

    .line 525
    :cond_6
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XSegmented;->updateVui(Landroid/view/View;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public addSegmentView(ILjava/lang/CharSequence;)V
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(ILjava/lang/CharSequence;I)V

    return-void
.end method

.method public addSegmentView(ILjava/lang/CharSequence;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    const/4 v0, -0x1

    .line 366
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(ILjava/lang/CharSequence;II)V

    return-void
.end method

.method public addSegmentView(ILjava/lang/CharSequence;II)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 372
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 373
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    :cond_0
    if-gez p3, :cond_1

    move p3, v1

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v2, v0

    const/4 v3, 0x1

    if-lt p3, v2, :cond_4

    .line 380
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 381
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 382
    array-length v4, v2

    add-int/2addr v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 383
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v5, v0

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    array-length v5, v2

    invoke-static {v2, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v0, v0

    aput p1, v4, v0

    move v0, v1

    .line 386
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 387
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    aget v5, v4, v0

    if-lt v5, p3, :cond_2

    .line 388
    aget v5, v4, v0

    add-int/2addr v5, v3

    aput v5, v4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    array-length v2, v2

    aput p3, v0, v2

    goto :goto_2

    .line 392
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_5

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 394
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 395
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 396
    array-length v4, v2

    add-int/2addr v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 397
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    invoke-static {v0, v1, v4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    invoke-static {v2, v1, v4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    aput p1, v4, p3

    .line 400
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    aput p3, v5, p3

    add-int/lit8 v5, p3, 0x1

    .line 401
    array-length v6, v0

    sub-int/2addr v6, p3

    invoke-static {v0, p3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    array-length v4, v2

    sub-int/2addr v4, p3

    invoke-static {v2, p3, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    array-length v2, v0

    if-ge v5, v2, :cond_5

    .line 406
    aget v2, v0, v5

    add-int/2addr v2, v3

    aput v2, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 409
    :cond_5
    :goto_2
    new-instance v0, Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    if-lez p4, :cond_8

    .line 412
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v6, :cond_6

    move v4, v1

    :cond_6
    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v6, :cond_7

    const/4 v1, -0x2

    :cond_7
    invoke-direct {v5, v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 414
    invoke-virtual {v0, p4}, Lcom/xiaopeng/xui/widget/XImageView;->setMaxHeight(I)V

    .line 415
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setAdjustViewBounds(Z)V

    .line 416
    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p4}, Lcom/xiaopeng/xui/widget/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_4

    .line 418
    :cond_8
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean p4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz p4, :cond_9

    move p4, v1

    goto :goto_3

    :cond_9
    move p4, v4

    :goto_3
    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v6, :cond_a

    move v1, v4

    :cond_a
    invoke-direct {v5, p4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 420
    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p4}, Lcom/xiaopeng/xui/widget/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_4
    if-eqz p1, :cond_b

    .line 423
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    :cond_b
    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_c

    .line 427
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiLabel(Ljava/lang/String;)V

    .line 429
    :cond_c
    sget-object p1, Lbxy;->TEXTVIEW:Lbxy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiElementType(Lbxy;)V

    .line 430
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->isSoundEffectsEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setSoundEffectsEnabled(Z)V

    .line 431
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    const-string p2, ""

    invoke-virtual {p1, p3, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 433
    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->addView(Landroid/view/View;I)V

    .line 434
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-gt p3, p1, :cond_d

    add-int/lit8 p1, p1, 0x1

    .line 438
    :cond_d
    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsInit:Z

    invoke-direct {p0, p1, v3, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZ)V

    return-void
.end method

.method public addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 6

    if-eqz p1, :cond_4

    .line 284
    new-instance v0, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    .line 285
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

    .line 287
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    .line 288
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setGravity(I)V

    .line 289
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbyg$f;->x_segement_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    .line 291
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextColorRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_2

    .line 293
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    .line 295
    :cond_2
    sget-object p2, Lbxy;->TEXTVIEW:Lbxy;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementType(Lbxy;)V

    .line 296
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->isSoundEffectsEnabled()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setSoundEffectsEnabled(Z)V

    .line 297
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleLine:Z

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setSingleLine(Z)V

    .line 299
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLineSpaceAdd:I

    int-to-float p2, p2

    invoke-virtual {v0, p2, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setLineSpacing(FF)V

    .line 300
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextLtRtPadding:I

    invoke-direct {p0, p2, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->dp(Landroid/content/res/Resources;I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextLtRtPadding:I

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->dp(Landroid/content/res/Resources;I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p2, v4, v1, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setPadding(IIII)V

    .line 301
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 302
    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->addView(Landroid/view/View;I)V

    .line 303
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-gt p3, p1, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 307
    :cond_3
    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsInit:Z

    const/4 p3, 0x1

    invoke-direct {p0, p1, p3, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZ)V

    :cond_4
    return-void
.end method

.method public addSegmentView([I[Ljava/lang/CharSequence;)V
    .locals 3

    .line 353
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    const/4 v0, 0x0

    .line 354
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 355
    array-length v1, p2

    if-le v1, v0, :cond_0

    aget-object v1, p2, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 356
    :goto_1
    aget v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(ILjava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addSegmentView([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 271
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 272
    array-length v1, p2

    if-le v1, v0, :cond_0

    aget-object v1, p2, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 273
    :goto_1
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearSegment()V
    .locals 2

    .line 490
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->removeAllViews()V

    const/4 v0, 0x0

    .line 491
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 492
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    const/4 v0, -0x1

    .line 493
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 622
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->drawableStateChanged()V

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getSelection()I
    .locals 1

    .line 530
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 707
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 708
    instance-of p1, p1, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz p1, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->invalidate()V

    :cond_0
    return-void
.end method

.method public isEnable(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 553
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$new$0$XSegmented(Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V
    .locals 3

    const/4 v0, 0x0

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 190
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 191
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 192
    check-cast v1, Landroid/widget/TextView;

    .line 193
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->refreshTextSize(Landroid/widget/TextView;)V

    .line 195
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setTitleText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->refreshTextSize(Landroid/widget/TextView;)V

    return-void
.end method

.method public synthetic lambda$new$1$XSegmented()V
    .locals 5

    .line 209
    sget-object v0, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string v1, "XSegmented: addCallback onThemeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextColorRes:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setTitleTextColor(I)V

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    if-eqz v0, :cond_0

    move v0, v1

    .line 212
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    aget v3, v3, v0

    const/4 v4, 0x0

    aget v2, v2, v0

    invoke-virtual {p0, v3, v4, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->setSegmentIcon(ILjava/lang/CharSequence;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->onConfigurationChanged(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 220
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->drawableBg:Landroid/graphics/drawable/Drawable;

    .line 222
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$onVuiElementEvent$2$XSegmented(Ljava/lang/Double;Landroid/view/View;)V
    .locals 2

    .line 765
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 767
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 768
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 772
    :cond_0
    invoke-static {p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 773
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;->onInterceptChange(Lcom/xiaopeng/xui/widget/XSegmented;I)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 775
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->setPerformVuiAction(Z)V

    const/4 p2, 0x0

    .line 776
    invoke-direct {p0, v0, p1, p1, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZZ)V

    .line 777
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->setPerformVuiAction(Z)V

    :cond_2
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 3

    .line 743
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->setVuiValue(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 744
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 745
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 746
    instance-of v1, v0, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v1, :cond_0

    .line 747
    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 748
    invoke-interface {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    .line 750
    sget-object v0, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBuildVuiElement:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 715
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsPlayingAnim:Z

    if-eqz v0, :cond_0

    return-void

    .line 718
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 719
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-ne v0, v1, :cond_1

    return-void

    .line 722
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;->onInterceptChange(Lcom/xiaopeng/xui/widget/XSegmented;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 724
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZZ)V

    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 630
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 631
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 635
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v0, :cond_3

    .line 636
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

    .line 637
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_3

    .line 638
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

    .line 639
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 642
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->drawableBg:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    if-eqz v2, :cond_4

    .line 643
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 644
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->drawableBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 646
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 648
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mNewLineSelf:Z

    if-eqz v0, :cond_6

    .line 649
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getTextLineCount()I

    move-result v0

    .line 650
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->segmentHorToVerLines:I

    if-le v0, v2, :cond_5

    const/4 v0, 0x1

    .line 651
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->changeDirection(I)V

    goto :goto_1

    .line 652
    :cond_5
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-nez v0, :cond_6

    .line 653
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->maxString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleTextLen:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->measure(II)V

    .line 655
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getLineCount()I

    move-result v0

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->segmentHorToVerLines:I

    if-gt v0, v2, :cond_6

    .line 656
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->changeDirection(I)V

    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 660
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 587
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onLayout(ZIIII)V

    .line 588
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 592
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-eqz p1, :cond_4

    .line 593
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result p1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->isDomestic:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitZh:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitEn:I

    :goto_0
    if-ge p1, v0, :cond_4

    .line 594
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_4

    .line 595
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result p1

    .line 596
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredWidth()I

    move-result p4

    div-int/2addr p4, p1

    .line 598
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->originWidth:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_3

    .line 600
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    mul-int v4, p4, v2

    .line 601
    iget v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->matchPercentDirection:I

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    add-int v5, v4, p4

    .line 603
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 605
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p4, p2, p3, v0, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p4}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 606
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIndicatorDrawable:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    if-eqz p1, :cond_5

    .line 607
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 610
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mNewLineSelf:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-nez p1, :cond_6

    .line 611
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleTextLen:I

    .line 612
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleTextLen:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 613
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 614
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleTextLen:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setMaxWidth(I)V

    .line 616
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getTextMaxString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->maxString:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    .line 239
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v1

    const/4 v2, -0x2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_6

    .line 240
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mStandardLen:I

    mul-int/2addr v1, v0

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v2, :cond_1

    .line 243
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->singleLine:Z

    if-eqz p1, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getTextMaxString()Ljava/lang/String;

    move-result-object p1

    .line 245
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTestTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextLtRtPadding:I

    invoke-direct {p0, v1, v4}, Lcom/xiaopeng/xui/widget/XSegmented;->dp(Landroid/content/res/Resources;I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, v0

    .line 246
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2

    .line 248
    :cond_0
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2

    .line 250
    :cond_1
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->useMatchPercent:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v1, :cond_4

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->isDomestic:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitZh:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitEn:I

    :goto_0
    if-ge v0, v1, :cond_4

    .line 251
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    .line 252
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->originWidth:I

    .line 253
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getMeasuredWidth()I

    move-result p1

    mul-int/2addr p1, v0

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->isDomestic:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitZh:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->elementCountLimitEn:I

    :goto_1
    div-int/2addr p1, v1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 255
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mNewLineSelf:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_7

    .line 256
    :cond_5
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mStandardHeg:I

    mul-int/2addr p2, v0

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_3

    .line 258
    :cond_6
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIsHorOrientation:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_7

    .line 259
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mStandardHeg:I

    mul-int/2addr p2, v0

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 261
    :cond_7
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 1

    const-string v0, "Segmented onVuiElementEvent"

    .line 758
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 762
    :cond_0
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    if-eqz p2, :cond_1

    .line 764
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$7AbZ3mY5zsxAPystAHr8fZrX0Tg;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$7AbZ3mY5zsxAPystAHr8fZrX0Tg;-><init>(Lcom/xiaopeng/xui/widget/XSegmented;Ljava/lang/Double;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public removeSegment(I)V
    .locals 7

    .line 463
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 464
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 465
    instance-of v0, v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    if-eqz v0, :cond_0

    .line 467
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 468
    array-length v3, v0

    sub-int/2addr v3, v1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    .line 469
    array-length v3, v2

    sub-int/2addr v3, v1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    .line 470
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, p1, 0x1

    .line 471
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v6, v5

    sub-int/2addr v6, p1

    invoke-static {v0, v3, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconResIndex:[I

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mIconRes:[I

    array-length v4, v4

    sub-int/2addr v4, p1

    invoke-static {v2, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 478
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->removeViewAt(I)V

    .line 479
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSelection:I

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-lt p1, v0, :cond_2

    .line 482
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result p1

    if-lt v0, p1, :cond_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 485
    :cond_3
    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZ)V

    :cond_4
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 535
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 536
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 537
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setEnabled(ZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnabled(ZI)V
    .locals 1

    if-ltz p2, :cond_1

    .line 542
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 543
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 544
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 545
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 547
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->changeIndicatorEnable()V

    :cond_1
    return-void
.end method

.method public setSegmentIcon(ILjava/lang/CharSequence;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-le v0, p3, :cond_1

    .line 444
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 445
    instance-of v0, p3, Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v0, :cond_0

    .line 446
    check-cast p3, Lcom/xiaopeng/xui/widget/XImageView;

    .line 447
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_2

    .line 449
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_0
    sget-object p1, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string p2, "setSegmentIcon failed, view is not XImageView"

    invoke-static {p1, p2}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_1
    sget-object p1, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string p2, "setSegmentIcon failed, index > child count"

    invoke-static {p1, p2}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSegmentListener(Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mSegmentListener:Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 497
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZZ)V

    return-void
.end method

.method public setSelection(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 505
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZZZ)V

    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2

    .line 335
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    if-le v0, p3, :cond_1

    .line 336
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 337
    instance-of v1, v0, Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v1, :cond_0

    .line 338
    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    .line 339
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    .line 341
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSegmented;->textLenList:Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getTextMaxString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->maxString:Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->invalidate()V

    goto :goto_0

    .line 345
    :cond_0
    sget-object p1, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string p2, "setTitleText failed, view is not XTextView"

    invoke-static {p1, p2}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_1
    sget-object p1, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    const-string p2, "setTitleText failed, index > child count"

    invoke-static {p1, p2}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 6

    .line 323
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSegmented;->mTextColorRes:I

    .line 324
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 326
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 327
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 328
    sget-object v3, Lcom/xiaopeng/xui/widget/XSegmented;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTitleTextColor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

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

    .line 329
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 0

    return-void
.end method
