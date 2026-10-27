.class public Lcom/xiaopeng/xui/widget/XOffsetView;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XOffsetView.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XOffsetView$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private exceedMaxText:Ljava/lang/String;

.field private exceedMinText:Ljava/lang/String;

.field private maxValue:I

.field private minValue:I

.field private onButtonClickListener:Lcom/xiaopeng/xui/widget/XOffsetView$OnButtonClickListener;

.field private step:I

.field private unit:Ljava/lang/String;

.field private useStep:Z

.field private value:I

.field private x_btn_increase:Lcom/xiaopeng/xui/widget/XImageButton;

.field private x_btn_reduce:Lcom/xiaopeng/xui/widget/XImageButton;

.field private x_text_content:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
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

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;->setOrientation(I)V

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_offset_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XOffsetView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 62
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XOffsetView_offset_view_value:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    .line 63
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XOffsetView_offset_view_step:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->step:I

    .line 64
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XOffsetView_offset_view_use_step:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->useStep:Z

    .line 65
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XOffsetView_offset_view_max_value:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->maxValue:I

    .line 66
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XOffsetView_offset_view_min_value:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->minValue:I

    .line 67
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XOffsetView_offset_view_unit:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->unit:Ljava/lang/String;

    .line 68
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XOffsetView_offset_view_out_exceed_max_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMaxText:Ljava/lang/String;

    .line 69
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XOffsetView_offset_view_out_exceed_min_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMinText:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->unit:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->unit:Ljava/lang/String;

    .line 73
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XOffsetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/xiaopeng/xpui/R$drawable;->x_btn_offset_selector:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XOffsetView;->initView()V

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XOffsetView;->refreshContent()V

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XOffsetView;->initEvent()V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xui/widget/XOffsetView$1;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xui/widget/XOffsetView$1;-><init>(Lcom/xiaopeng/xui/widget/XOffsetView;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;->setImportantForAccessibility(I)V

    .line 85
    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_reduce:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$YKHQd5X6VjOlTwshEZSdFM9LIeM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$YKHQd5X6VjOlTwshEZSdFM9LIeM;-><init>(Lcom/xiaopeng/xui/widget/XOffsetView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_increase:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$b26D0YtKblM0SsIn1qw2KNL-nzY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$b26D0YtKblM0SsIn1qw2KNL-nzY;-><init>(Lcom/xiaopeng/xui/widget/XOffsetView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void
.end method

.method private initView()V
    .locals 1

    .line 88
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_btn_reduce:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_reduce:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 89
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_btn_increase:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_increase:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 90
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_text_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_text_content:Lcom/xiaopeng/xui/widget/XTextView;

    .line 91
    return-void
.end method

.method public static synthetic lambda$initEvent$0(Lcom/xiaopeng/xui/widget/XOffsetView;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 167
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->step:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->useStep:Z

    if-eqz v0, :cond_0

    .line 168
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->step:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;->setValue(I)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->onButtonClickListener:Lcom/xiaopeng/xui/widget/XOffsetView$OnButtonClickListener;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->onButtonClickListener:Lcom/xiaopeng/xui/widget/XOffsetView$OnButtonClickListener;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/XOffsetView$OnButtonClickListener;->onReduce(I)V

    .line 173
    :cond_1
    return-void
.end method

.method public static synthetic lambda$initEvent$1(Lcom/xiaopeng/xui/widget/XOffsetView;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 175
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->step:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->useStep:Z

    if-eqz v0, :cond_0

    .line 176
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->step:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;->setValue(I)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->onButtonClickListener:Lcom/xiaopeng/xui/widget/XOffsetView$OnButtonClickListener;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->onButtonClickListener:Lcom/xiaopeng/xui/widget/XOffsetView$OnButtonClickListener;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/XOffsetView$OnButtonClickListener;->onIncrease(I)V

    .line 181
    :cond_1
    return-void
.end method

.method public static synthetic lambda$onVuiElementEvent$2(Lcom/xiaopeng/xui/widget/XOffsetView;Ljava/lang/Double;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Double;

    .line 259
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 261
    .local v0, "lastValue":I
    const/4 v1, 0x0

    .line 262
    .local v1, "vuiFloatingLayerView":Landroid/view/View;
    iget v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    if-ge v0, v2, :cond_0

    .line 263
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_reduce:Lcom/xiaopeng/xui/widget/XImageButton;

    goto :goto_0

    .line 264
    :cond_0
    iget v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    if-le v0, v2, :cond_1

    .line 265
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_increase:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 268
    :cond_1
    :goto_0
    iget v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->maxValue:I

    if-gt v0, v2, :cond_4

    iget v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->minValue:I

    if-ge v0, v2, :cond_2

    goto :goto_1

    .line 276
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XOffsetView;->setPerformVuiAction(Z)V

    .line 277
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;->setValue(I)V

    .line 278
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XOffsetView;->setPerformVuiAction(Z)V

    .line 279
    iget v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->maxValue:I

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMaxText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 280
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMaxText:Ljava/lang/String;

    invoke-interface {v2, p0, v3}, Lcom/xiaopeng/vui/commons/IVuiEngine;->vuiFeedback(Landroid/view/View;Ljava/lang/String;)V

    .line 282
    :cond_3
    iget v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->minValue:I

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMinText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 283
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMinText:Ljava/lang/String;

    invoke-interface {v2, p0, v3}, Lcom/xiaopeng/vui/commons/IVuiEngine;->vuiFeedback(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    .line 269
    :cond_4
    :goto_1
    iget v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->maxValue:I

    if-le v0, v2, :cond_5

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMaxText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 270
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMaxText:Ljava/lang/String;

    invoke-interface {v2, p0, v3}, Lcom/xiaopeng/vui/commons/IVuiEngine;->vuiFeedback(Landroid/view/View;Ljava/lang/String;)V

    .line 272
    :cond_5
    iget v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->minValue:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMinText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 273
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMinText:Ljava/lang/String;

    invoke-interface {v2, p0, v3}, Lcom/xiaopeng/vui/commons/IVuiEngine;->vuiFeedback(Landroid/view/View;Ljava/lang/String;)V

    .line 287
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 288
    invoke-static {v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 290
    :cond_7
    return-void
.end method

.method private refreshContent()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 95
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->maxValue:I

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-lt v0, v1, :cond_0

    .line 96
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->maxValue:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_increase:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageButton;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_increase:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setAlpha(F)V

    .line 99
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->minValue:I

    if-le v0, v1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_reduce:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageButton;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_reduce:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XImageButton;->setAlpha(F)V

    goto :goto_0

    .line 103
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->minValue:I

    if-gt v0, v1, :cond_1

    .line 104
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->minValue:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_reduce:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageButton;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_reduce:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setAlpha(F)V

    .line 107
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->maxValue:I

    if-ge v0, v1, :cond_2

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_increase:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageButton;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_increase:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XImageButton;->setAlpha(F)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_increase:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageButton;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_reduce:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageButton;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_increase:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XImageButton;->setAlpha(F)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_btn_reduce:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XImageButton;->setAlpha(F)V

    .line 117
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->x_text_content:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->unit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method private showExceedToast()V
    .locals 2

    .line 185
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->maxValue:I

    if-lt v0, v1, :cond_0

    .line 186
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->maxValue:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMaxText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMaxText:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->minValue:I

    if-gt v0, v1, :cond_1

    .line 191
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->minValue:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMinText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMinText:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;)V

    .line 196
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->maxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->minValue:I

    return v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    return v0
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iVuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 233
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;->setVuiValue(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XOffsetView;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    .line 235
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 236
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 238
    :cond_0
    const-string v1, "minValue"

    iget v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->minValue:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 239
    const-string v1, "maxValue"

    iget v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->maxValue:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    const-string v1, "interval"

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->useStep:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->step:I

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    const-string v1, "unit"

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMaxText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->exceedMinText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 243
    :cond_2
    const-string v1, "hasFeedback"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 245
    :cond_3
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 246
    :catch_0
    move-exception v0

    .line 249
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 210
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 211
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 212
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 298
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XOffsetView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x1

    return v0

    .line 301
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 254
    const-string v0, "slider onVuiElementEvent"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;->logD(Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 256
    :cond_0
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 257
    .local v1, "value":Ljava/lang/Double;
    if-eqz v1, :cond_1

    .line 258
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$DvCsbeAo5AgaW4dGxc30mOn_Gnk;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$DvCsbeAo5AgaW4dGxc30mOn_Gnk;-><init>(Lcom/xiaopeng/xui/widget/XOffsetView;Ljava/lang/Double;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XOffsetView;->post(Ljava/lang/Runnable;)Z

    .line 291
    const/4 v0, 0x1

    return v0

    .line 293
    :cond_1
    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 221
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 222
    if-eqz p2, :cond_0

    .line 223
    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 224
    .local v0, "progress":F
    float-to-int v1, v0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XOffsetView;->setValue(I)V

    .line 227
    .end local v0    # "progress":F
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setMaxValue(I)V
    .locals 0
    .param p1, "maxValue"    # I

    .line 140
    iput p1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->maxValue:I

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XOffsetView;->refreshContent()V

    .line 142
    return-void
.end method

.method public setMinValue(I)V
    .locals 0
    .param p1, "minValue"    # I

    .line 149
    iput p1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->minValue:I

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XOffsetView;->refreshContent()V

    .line 151
    return-void
.end method

.method public setOnButtonClickListener(Lcom/xiaopeng/xui/widget/XOffsetView$OnButtonClickListener;)V
    .locals 0
    .param p1, "onButtonClickListener"    # Lcom/xiaopeng/xui/widget/XOffsetView$OnButtonClickListener;

    .line 199
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->onButtonClickListener:Lcom/xiaopeng/xui/widget/XOffsetView$OnButtonClickListener;

    .line 200
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "step"    # I

    .line 158
    iput p1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->step:I

    .line 159
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->unit:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 133
    iput p1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->value:I

    .line 134
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XOffsetView;->showExceedToast()V

    .line 135
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XOffsetView;->refreshContent()V

    .line 136
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XOffsetView;->updateVui(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method public useStep(Z)V
    .locals 0
    .param p1, "useStep"    # Z

    .line 162
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XOffsetView;->useStep:Z

    .line 163
    return-void
.end method
