.class public Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;
.super Lcom/xiaopeng/xui/widget/XViewGroup;
.source "SeatSettingView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isDrv:Z

.field private isLeg:Z

.field line_circle_end_x:F

.field line_circle_end_y:F

.field line_circle_start_x:F

.field line_circle_start_y:F

.field line_down_end_y:F

.field line_down_start_y:F

.field line_down_x:F

.field line_left_end_x:F

.field line_left_start_x:F

.field line_left_y:F

.field line_len:I

.field line_right_end_x:F

.field line_right_start_x:F

.field line_right_y:F

.field private mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

.field private paint:Landroid/graphics/Paint;

.field t1_bottom:I

.field t1_left:I

.field t1_right:I

.field t1_top:I

.field t2_bottom:I

.field t2_left:I

.field t2_right:I

.field t2_top:I

.field t3_bottom:I

.field t3_left:I

.field t3_right:I

.field t3_top:I

.field t4_bottom:I

.field t4_left:I

.field t4_right:I

.field t4_top:I

.field t5_bottom:I

.field t5_left:I

.field t5_right:I

.field t5_top:I

.field private tipIcon:Landroid/graphics/drawable/Drawable;

.field private tip_1:Lcom/xiaopeng/xui/widget/XTextView;

.field private tip_2:Lcom/xiaopeng/xui/widget/XTextView;

.field private tip_3:Lcom/xiaopeng/xui/widget/XTextView;

.field private tip_4:Lcom/xiaopeng/xui/widget/XTextView;

.field private tip_5:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->isLeg:Z

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->paint:Landroid/graphics/Paint;

    const/16 p1, 0x46

    .line 32
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_len:I

    const/high16 p1, 0x43820000    # 260.0f

    .line 33
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_left_start_x:F

    const/high16 v0, 0x43660000    # 230.0f

    .line 34
    iput v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_left_y:F

    const/high16 v1, 0x41c80000    # 25.0f

    add-float/2addr p1, v1

    .line 35
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_left_end_x:F

    const/high16 p1, 0x43af0000    # 350.0f

    .line 37
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_right_start_x:F

    .line 38
    iput v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_right_y:F

    const/high16 v1, 0x41f00000    # 30.0f

    add-float/2addr p1, v1

    .line 39
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_right_end_x:F

    const/high16 p1, 0x439f0000    # 318.0f

    .line 41
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_x:F

    const v2, 0x43858000    # 267.0f

    .line 42
    iput v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_start_y:F

    add-float/2addr v2, v1

    .line 43
    iput v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_end_y:F

    .line 45
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_start_x:F

    .line 46
    iput v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_start_y:F

    .line 47
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_end_x:F

    const/high16 p1, 0x42820000    # 65.0f

    sub-float/2addr v0, p1

    .line 48
    iput v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_end_y:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->isLeg:Z

    .line 24
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x46

    .line 32
    iput v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_len:I

    const/high16 v1, 0x43820000    # 260.0f

    .line 33
    iput v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_left_start_x:F

    const/high16 v2, 0x43660000    # 230.0f

    .line 34
    iput v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_left_y:F

    const/high16 v3, 0x41c80000    # 25.0f

    add-float/2addr v1, v3

    .line 35
    iput v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_left_end_x:F

    const/high16 v1, 0x43af0000    # 350.0f

    .line 37
    iput v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_right_start_x:F

    .line 38
    iput v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_right_y:F

    const/high16 v3, 0x41f00000    # 30.0f

    add-float/2addr v1, v3

    .line 39
    iput v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_right_end_x:F

    const/high16 v1, 0x439f0000    # 318.0f

    .line 41
    iput v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_x:F

    const v4, 0x43858000    # 267.0f

    .line 42
    iput v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_start_y:F

    add-float/2addr v4, v3

    .line 43
    iput v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_end_y:F

    .line 45
    iput v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_start_x:F

    .line 46
    iput v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_start_y:F

    .line 47
    iput v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_end_x:F

    const/high16 v1, 0x42820000    # 65.0f

    sub-float/2addr v2, v1

    .line 48
    iput v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_end_y:F

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->context:Landroid/content/Context;

    .line 66
    sget-object v1, Lcom/xiaopeng/carcontrol/R$styleable;->SeatSettingView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x2

    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->isDrv:Z

    .line 68
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->isDrv:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x439d0000    # 314.0f

    .line 70
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_x:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43a30000    # 326.0f

    .line 72
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_x:F

    const/high16 p1, 0x43b40000    # 360.0f

    .line 73
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_right_start_x:F

    .line 74
    iget p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_left_start_x:F

    add-float/2addr p1, v3

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_left_end_x:F

    .line 76
    :goto_0
    iget p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_x:F

    const/high16 v0, 0x41700000    # 15.0f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_start_x:F

    .line 77
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_end_x:F

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->initView()V

    return-void
.end method

.method private dp(I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    int-to-float p1, p1

    .line 216
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 215
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private initView()V
    .locals 14

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->context:Landroid/content/Context;

    const v2, 0x7f0601de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    new-instance v0, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_1:Lcom/xiaopeng/xui/widget/XTextView;

    .line 103
    new-instance v0, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_2:Lcom/xiaopeng/xui/widget/XTextView;

    .line 104
    new-instance v0, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_3:Lcom/xiaopeng/xui/widget/XTextView;

    .line 105
    new-instance v0, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_4:Lcom/xiaopeng/xui/widget/XTextView;

    .line 106
    new-instance v0, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_5:Lcom/xiaopeng/xui/widget/XTextView;

    .line 107
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_1:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v4, 0x109

    const/16 v5, 0x2c

    const v6, 0x7f110190

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->initViewByPosition(Lcom/xiaopeng/xui/widget/XTextView;IIII)V

    .line 108
    iget-object v9, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_2:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v10, 0x190

    const/16 v11, 0x58

    const v12, 0x7f11020f

    const/4 v13, 0x2

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->initViewByPosition(Lcom/xiaopeng/xui/widget/XTextView;IIII)V

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_3:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v2, 0x15e

    const/16 v3, 0x2c

    const v4, 0x7f11020e

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->initViewByPosition(Lcom/xiaopeng/xui/widget/XTextView;IIII)V

    .line 110
    iget-object v7, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_4:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v8, 0x109

    const/16 v9, 0x2c

    const v10, 0x7f110208

    const/4 v11, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->initViewByPosition(Lcom/xiaopeng/xui/widget/XTextView;IIII)V

    .line 111
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_5:Lcom/xiaopeng/xui/widget/XTextView;

    const v4, 0x7f110209

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->initViewByPosition(Lcom/xiaopeng/xui/widget/XTextView;IIII)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_1:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->addView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_2:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->addView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_3:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->addView(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_4:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->addView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_5:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initViewByPosition(Lcom/xiaopeng/xui/widget/XTextView;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tv_tip",
            "width",
            "height",
            "tip",
            "lines"
        }
    .end annotation

    .line 187
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 p5, -0x2

    invoke-direct {p3, p2, p5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 188
    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {p1, p4}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    const/high16 p3, 0x41a00000    # 20.0f

    .line 190
    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(F)V

    .line 191
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setMaxWidth(I)V

    const/16 p2, 0x1e

    .line 192
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setMinHeight(I)V

    const/4 p2, 0x5

    const/16 p3, 0x8

    .line 193
    invoke-virtual {p1, p2, p3, p2, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setPadding(IIII)V

    const p2, 0x7f080343

    .line 194
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setBackgroundResource(I)V

    .line 195
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->context:Landroid/content/Context;

    const p3, 0x7f0601de

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->onAttachedToWindow()V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onAttachedToWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 84
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onConfigurationChanged(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 87
    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_1:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v2, 0x109

    const/16 v3, 0x2c

    const v4, 0x7f110190

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->initViewByPosition(Lcom/xiaopeng/xui/widget/XTextView;IIII)V

    .line 90
    iget-object v7, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_2:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v8, 0x190

    const/16 v9, 0x58

    const v10, 0x7f11020f

    const/4 v11, 0x2

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->initViewByPosition(Lcom/xiaopeng/xui/widget/XTextView;IIII)V

    .line 91
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_3:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v2, 0x15e

    const v4, 0x7f11020e

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->initViewByPosition(Lcom/xiaopeng/xui/widget/XTextView;IIII)V

    .line 92
    iget-object v7, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_4:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v8, 0x109

    const/16 v9, 0x2c

    const v10, 0x7f110208

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->initViewByPosition(Lcom/xiaopeng/xui/widget/XTextView;IIII)V

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_5:Lcom/xiaopeng/xui/widget/XTextView;

    const v4, 0x7f110209

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->initViewByPosition(Lcom/xiaopeng/xui/widget/XTextView;IIII)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 208
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->onDetachedFromWindow()V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 173
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 175
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->isLeg:Z

    if-eqz v0, :cond_0

    .line 176
    iget v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_left_start_x:F

    iget v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_left_y:F

    iget v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_left_end_x:F

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 177
    iget v8, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_start_x:F

    iget v9, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_start_y:F

    iget v10, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_end_x:F

    iget v11, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_end_y:F

    iget-object v12, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->paint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 178
    iget v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_x:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_start_y:F

    iget v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_end_y:F

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 180
    :cond_0
    iget v7, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_right_start_x:F

    iget v10, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_right_y:F

    iget v9, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_right_end_x:F

    iget-object v11, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 181
    iget v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_x:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_start_y:F

    iget v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_end_y:F

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 131
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->isLeg:Z

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_4:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_5:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_1:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_2:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_3:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 137
    iget p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_left_y:F

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_1:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t1_top:I

    .line 138
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_1:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t1_bottom:I

    const/16 p1, 0x104

    .line 139
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t1_right:I

    .line 140
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_1:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    const/4 p2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t1_left:I

    .line 141
    iget p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_end_y:F

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t2_bottom:I

    .line 142
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_2:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t2_top:I

    .line 143
    iget p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_circle_start_x:F

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_2:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t2_left:I

    .line 145
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_2:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t2_right:I

    .line 146
    iget p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_end_y:F

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t3_top:I

    .line 147
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_3:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t3_bottom:I

    .line 148
    iget p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_x:F

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_3:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t3_left:I

    .line 149
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_3:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t3_right:I

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_1:Lcom/xiaopeng/xui/widget/XTextView;

    iget p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t1_left:I

    iget p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t1_top:I

    iget p4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t1_right:I

    iget p5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t1_bottom:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/xiaopeng/xui/widget/XTextView;->layout(IIII)V

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_2:Lcom/xiaopeng/xui/widget/XTextView;

    iget p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t2_left:I

    iget p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t2_top:I

    iget p4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t2_right:I

    iget p5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t2_bottom:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/xiaopeng/xui/widget/XTextView;->layout(IIII)V

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_3:Lcom/xiaopeng/xui/widget/XTextView;

    iget p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t3_left:I

    iget p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t3_top:I

    iget p4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t3_right:I

    iget p5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t3_bottom:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/xiaopeng/xui/widget/XTextView;->layout(IIII)V

    goto/16 :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_4:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_5:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_1:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_2:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_3:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 159
    iget p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_left_y:F

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_4:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t4_top:I

    .line 160
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_4:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t4_bottom:I

    .line 161
    iget p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_right_end_x:F

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t4_left:I

    .line 162
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_4:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t4_right:I

    .line 163
    iget p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_end_y:F

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t5_top:I

    .line 164
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_5:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t5_bottom:I

    .line 165
    iget p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->line_down_x:F

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_5:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t5_left:I

    .line 166
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_5:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t5_right:I

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_4:Lcom/xiaopeng/xui/widget/XTextView;

    iget p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t4_left:I

    iget p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t4_top:I

    iget p4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t4_right:I

    iget p5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t4_bottom:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/xiaopeng/xui/widget/XTextView;->layout(IIII)V

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_5:Lcom/xiaopeng/xui/widget/XTextView;

    iget p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t5_left:I

    iget p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t5_top:I

    iget p4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t5_right:I

    iget p5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->t5_bottom:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/xiaopeng/xui/widget/XTextView;->layout(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_1:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->measure(II)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_2:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->measure(II)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_3:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->measure(II)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_4:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->measure(II)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->tip_5:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->measure(II)V

    .line 126
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XViewGroup;->onMeasure(II)V

    return-void
.end method

.method public setLegOrLumbar(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Leg"
        }
    .end annotation

    .line 199
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->isLeg:Z

    .line 201
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->invalidate()V

    .line 202
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->requestLayout()V

    return-void
.end method
