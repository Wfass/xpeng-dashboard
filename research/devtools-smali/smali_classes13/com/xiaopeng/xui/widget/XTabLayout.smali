.class public Lcom/xiaopeng/xui/widget/XTabLayout;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XTabLayout.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XTabLayout$b;,
        Lcom/xiaopeng/xui/widget/XTabLayout$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private agA:F

.field private agB:I

.field private agC:I

.field private agD:I

.field private agE:F

.field private agF:I

.field private agG:I

.field private agH:F

.field private agI:Z

.field private agJ:Landroid/graphics/Paint;

.field private agK:Landroid/graphics/Paint;

.field private agL:Landroid/graphics/Paint;

.field private agM:F

.field private agN:F

.field private agO:I

.field private agP:I

.field private agQ:I

.field private agR:I

.field private agS:I

.field private agT:I

.field private agU:I

.field private agV:I

.field private agW:I

.field private agX:I

.field private agY:I

.field private agZ:I

.field private final agt:I

.field private agu:I

.field private agv:Z

.field private agw:F

.field private agx:Landroid/content/res/ColorStateList;

.field private agy:F

.field private agz:F

.field private aha:F

.field private ahb:I

.field private ahc:Z

.field private ahd:I

.field private ahe:Z

.field private ahf:[Ljava/lang/CharSequence;

.field private ahg:[I

.field private ahh:[Ljava/lang/CharSequence;

.field private ahi:Lcom/xiaopeng/xui/widget/XTabLayout$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ahj:Landroid/view/View$OnClickListener;

.field private ahk:Z

.field private ahl:Z

.field private mIndicatorColor:I

.field private mIndicatorHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mStyle:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    if-nez p4, :cond_0

    sget p4, Lcom/xiaopeng/xpui/R$style;->XTabLayoutAppearance:I

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agt:I

    .line 72
    new-instance p4, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    .line 73
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agJ:Landroid/graphics/Paint;

    .line 74
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agK:Landroid/graphics/Paint;

    .line 75
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agL:Landroid/graphics/Paint;

    .line 79
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agO:I

    .line 80
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agP:I

    .line 81
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agQ:I

    .line 82
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agR:I

    .line 83
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agS:I

    .line 84
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agT:I

    .line 85
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agU:I

    .line 86
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agV:I

    .line 87
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agW:I

    .line 88
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agX:I

    .line 89
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agY:I

    .line 90
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agZ:I

    .line 91
    const p4, 0x3f19999a    # 0.6f

    iput p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->aha:F

    .line 92
    const/4 p4, -0x1

    iput p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    .line 93
    const/4 v1, 0x2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    .line 104
    new-instance v2, Lcom/xiaopeng/xui/widget/XTabLayout$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$1;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahj:Landroid/view/View$OnClickListener;

    .line 900
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahk:Z

    .line 128
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-gt v2, v3, :cond_1

    .line 129
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 132
    if-nez p3, :cond_2

    .line 133
    sget p3, Lcom/xiaopeng/xpui/R$style;->XTabLayoutAppearance:I

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout:[I

    sget v4, Lcom/xiaopeng/xpui/R$style;->XTabLayoutAppearance:I

    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 136
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_titles:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahf:[Ljava/lang/CharSequence;

    .line 137
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_titleTextSize:I

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agw:F

    .line 139
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_titleTextSize:I

    invoke-static {p2, p3}, Lcom/xiaopeng/xui/view/b/b;->a(Landroid/content/res/TypedArray;I)Lcom/xiaopeng/xui/view/b/b;

    move-result-object p3

    .line 140
    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->abs:Lcom/xiaopeng/xui/view/a;

    new-instance v3, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout$4Cp2U8F9Ia0QSq7u967xh5maB-g;

    invoke-direct {v3, p0, p3}, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout$4Cp2U8F9Ia0QSq7u967xh5maB-g;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;Lcom/xiaopeng/xui/view/b/b;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/view/a;->a(Lcom/xiaopeng/xui/view/a$a;)V

    .line 152
    :cond_3
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_titleTextColorStateList:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agx:Landroid/content/res/ColorStateList;

    .line 153
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_selectTab:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    .line 154
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorWidth:I

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agy:F

    .line 155
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorWidthPercent:I

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {p2, v2, v0, v0, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agz:F

    .line 156
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorMaxHeight:I

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->eN(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agM:F

    .line 157
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorMinHeight:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->eN(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agN:F

    .line 158
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agM:F

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    .line 159
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorMarginBottom:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->eN(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agA:F

    .line 160
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorColor:I

    sget v4, Lcom/xiaopeng/xpui/R$color;->x_theme_primary_normal:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColor:I

    .line 162
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorColorFrom:I

    invoke-virtual {p2, v2, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agB:I

    .line 163
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorColorTo:I

    invoke-virtual {p2, v2, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agC:I

    .line 164
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorShadowColor:I

    const v4, -0xf25107

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agD:I

    .line 165
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorShadowRadius:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->eN(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agE:F

    .line 166
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorColor2:I

    sget v5, Lcom/xiaopeng/xpui/R$color;->x_table_indicator_color:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agF:I

    .line 167
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorShadowColor2:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agG:I

    .line 168
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorShadowRadius2:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->eN(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agH:F

    .line 169
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorAnimatorEnable:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agv:Z

    .line 170
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_titleTextColorStateList:I

    invoke-virtual {p2, v2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahd:I

    .line 171
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_tabsBarStyle:I

    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahc:Z

    .line 172
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_tabCustomBackground:I

    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahe:Z

    .line 173
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_tabPaddingNight:I

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->eN(I)I

    move-result v2

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agu:I

    .line 174
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorDayNightDiff:I

    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agI:Z

    .line 175
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_tabLayoutIcons:I

    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 176
    if-eqz p4, :cond_5

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 178
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahg:[I

    .line 179
    move v2, p1

    :goto_0
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 180
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahg:[I

    invoke-virtual {p4, v2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v2

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_4
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    :cond_5
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_tabLayoutVuiLabels:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahh:[Ljava/lang/CharSequence;

    .line 185
    const/16 p4, 0x11

    invoke-virtual {p0, p4}, Lcom/xiaopeng/xui/widget/XTabLayout;->setGravity(I)V

    .line 186
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setWillNotDraw(Z)V

    .line 188
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->init()V

    .line 189
    invoke-direct {p0, p3, p1, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->b(IZZ)V

    .line 191
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    nop

    :cond_6
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setStyle(I)V

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/XTabLayout;F)F
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/XTabLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 10

    .line 805
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 810
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xff

    goto :goto_1

    :cond_1
    const/16 v1, 0x5c

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 812
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 813
    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    .line 814
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    .line 816
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agW:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agY:I

    if-ge v1, v2, :cond_2

    .line 817
    nop

    .line 819
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agW:I

    int-to-float v3, v1

    sub-float v4, v0, v8

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agY:I

    int-to-float v5, v1

    add-float v6, v0, v8

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 820
    goto :goto_2

    .line 821
    :cond_2
    nop

    .line 823
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agY:I

    int-to-float v3, v1

    sub-float v4, v0, v8

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agW:I

    int-to-float v5, v1

    add-float v6, v0, v8

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 825
    :goto_2
    return-void
.end method

.method private synthetic a(Lcom/xiaopeng/xui/view/b/b;)V
    .locals 3

    .line 142
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 143
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 144
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 145
    check-cast v1, Landroid/widget/TextView;

    .line 146
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/view/b/b;->a(Landroid/widget/TextView;)V

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XTabLayout;->b(IZZ)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/XTabLayout;ZLcom/xiaopeng/xui/widget/XTabLayout$a;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->a(ZLcom/xiaopeng/xui/widget/XTabLayout$a;)V

    return-void
.end method

.method private a(ZLcom/xiaopeng/xui/widget/XTabLayout$a;)V
    .locals 2
    .param p2    # Lcom/xiaopeng/xui/widget/XTabLayout$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 615
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 616
    return-void

    .line 618
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agv:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 619
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getIndicatorPosition()V

    .line 621
    if-eqz p1, :cond_3

    .line 622
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    .line 623
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 624
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 625
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$4;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 653
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$5;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 668
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout$6;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout$6;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;Lcom/xiaopeng/xui/widget/XTabLayout$a;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 686
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 688
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->rD()V

    .line 689
    if-eqz p2, :cond_4

    .line 690
    invoke-interface {p2}, Lcom/xiaopeng/xui/widget/XTabLayout$a;->onStart()V

    .line 691
    invoke-interface {p2}, Lcom/xiaopeng/xui/widget/XTabLayout$a;->onEnd()V

    .line 693
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->invalidate()V

    .line 695
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic b(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agW:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$b;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahi:Lcom/xiaopeng/xui/widget/XTabLayout$b;

    return-object p0
.end method

.method private b(IZZ)V
    .locals 8

    .line 483
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_6

    if-gez p1, :cond_0

    goto :goto_1

    .line 486
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    if-ne p1, v0, :cond_1

    .line 487
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahi:Lcom/xiaopeng/xui/widget/XTabLayout$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahi:Lcom/xiaopeng/xui/widget/XTabLayout$b;

    invoke-interface {v0, p0, p1, v1, p3}, Lcom/xiaopeng/xui/widget/XTabLayout$b;->b(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    return-void

    .line 494
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 498
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getSelectView()Landroid/view/View;

    move-result-object v0

    .line 500
    const/4 v2, 0x0

    if-eq v5, v0, :cond_5

    .line 501
    nop

    .line 502
    if-eqz v5, :cond_3

    .line 503
    invoke-virtual {v5, v1}, Landroid/view/View;->setSelected(Z)V

    .line 505
    :cond_3
    if-eqz v0, :cond_4

    .line 506
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 508
    :cond_4
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    .line 512
    move v4, v1

    goto :goto_0

    .line 510
    :cond_5
    nop

    .line 512
    move v4, v2

    :goto_0
    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout$3;

    move-object v2, v0

    move-object v3, p0

    move v6, p3

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xui/widget/XTabLayout$3;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;ZLandroid/view/View;ZI)V

    invoke-direct {p0, p2, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->a(ZLcom/xiaopeng/xui/widget/XTabLayout$a;)V

    .line 536
    return-void

    .line 484
    :cond_6
    :goto_1
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 10

    .line 828
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agE:F

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 830
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agK:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agH:F

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 833
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agK:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 835
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->isEnabled(I)Z

    move-result v1

    const/16 v2, 0x5c

    const/16 v3, 0xff

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 836
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agK:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 837
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    .line 838
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agA:F

    sub-float v6, v0, v1

    .line 840
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agX:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agZ:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_3

    .line 841
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 843
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agX:I

    int-to-float v3, v1

    sub-float v4, v6, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agZ:I

    int-to-float v5, v0

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agK:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 845
    :cond_3
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 847
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agZ:I

    int-to-float v3, v1

    sub-float v4, v6, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agX:I

    int-to-float v5, v0

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agK:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 859
    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agY:I

    return p1
.end method

.method static synthetic d(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agX:I

    return p1
.end method

.method static synthetic d(Lcom/xiaopeng/xui/widget/XTabLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahj:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/xui/widget/XTabLayout;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->aha:F

    return p0
.end method

.method static synthetic e(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agZ:I

    return p1
.end method

.method private eK(I)I
    .locals 3

    .line 547
    nop

    .line 549
    const/4 v0, 0x0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 550
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agu:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v1

    div-int/2addr v0, v1

    .line 552
    mul-int/2addr p1, v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->eM(I)I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agu:I

    add-int/2addr v0, p1

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v2

    div-int/2addr v1, v2

    .line 555
    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 558
    :cond_1
    :goto_0
    return v0
.end method

.method private eL(I)I
    .locals 3

    .line 562
    nop

    .line 564
    const/4 v0, 0x0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 565
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agu:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v1

    div-int/2addr v0, v1

    .line 567
    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->eM(I)I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agu:I

    add-int/2addr v0, p1

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v2

    div-int/2addr v1, v2

    .line 570
    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, v1

    add-int/lit8 v0, p1, 0x0

    .line 573
    :cond_1
    :goto_0
    return v0
.end method

.method private eM(I)I
    .locals 3

    .line 578
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 579
    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agy:F

    sub-float/2addr p1, v0

    div-float/2addr p1, v1

    goto :goto_0

    .line 581
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agz:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 582
    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 584
    :goto_0
    float-to-int p1, p1

    return p1
.end method

.method static synthetic f(Lcom/xiaopeng/xui/widget/XTabLayout;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agM:F

    return p0
.end method

.method static synthetic g(Lcom/xiaopeng/xui/widget/XTabLayout;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agN:F

    return p0
.end method

.method private getIndicatorPosition()V
    .locals 2

    .line 588
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getSelectedTabIndex()I

    move-result v0

    .line 589
    if-gez v0, :cond_0

    .line 590
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agS:I

    .line 591
    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agU:I

    .line 592
    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agT:I

    .line 593
    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agV:I

    goto :goto_0

    .line 600
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->eK(I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agS:I

    .line 601
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->eL(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agU:I

    .line 602
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agS:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agT:I

    .line 603
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agU:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agV:I

    .line 606
    :goto_0
    return-void
.end method

.method private getSelectView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 196
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agS:I

    return p0
.end method

.method static synthetic i(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agO:I

    return p0
.end method

.method private init()V
    .locals 6

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColor:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agJ:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agJ:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agD:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-gt v0, v2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agJ:Landroid/graphics/Paint;

    invoke-virtual {p0, v3, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agK:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agK:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agF:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agL:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agL:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agG:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v2, :cond_1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agL:Landroid/graphics/Paint;

    invoke-virtual {p0, v3, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahf:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahf:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahf:[Ljava/lang/CharSequence;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 266
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->m(Ljava/lang/CharSequence;)I

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahg:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahg:[I

    array-length v0, v0

    if-lez v0, :cond_4

    .line 269
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahg:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 270
    const-string v2, ""

    .line 271
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahh:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahh:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-le v3, v0, :cond_3

    .line 272
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahh:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahg:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->j(ILjava/lang/String;)I

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 279
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahj:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 281
    :cond_5
    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$2;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 325
    return-void
.end method

.method private isNight()Z
    .locals 1

    .line 913
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    const/4 v0, 0x0

    return v0

    .line 916
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/c/a;->aF(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agP:I

    return p0
.end method

.method static synthetic k(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agU:I

    return p0
.end method

.method static synthetic l(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agT:I

    return p0
.end method

.method public static synthetic lambda$4Cp2U8F9Ia0QSq7u967xh5maB-g(Lcom/xiaopeng/xui/widget/XTabLayout;Lcom/xiaopeng/xui/view/b/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->a(Lcom/xiaopeng/xui/view/b/b;)V

    return-void
.end method

.method static synthetic m(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agQ:I

    return p0
.end method

.method static synthetic n(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agR:I

    return p0
.end method

.method static synthetic o(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agV:I

    return p0
.end method

.method static synthetic p(Lcom/xiaopeng/xui/widget/XTabLayout;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->rD()V

    return-void
.end method

.method private rD()V
    .locals 1

    .line 698
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agS:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agO:I

    .line 699
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agU:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agP:I

    .line 700
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agT:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agQ:I

    .line 701
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agV:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agR:I

    .line 703
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agO:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agW:I

    .line 704
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agP:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agY:I

    .line 705
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agO:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agX:I

    .line 706
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agR:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agZ:I

    .line 707
    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)I
    .locals 5

    .line 363
    new-instance v0, Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;)V

    .line 364
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 365
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 367
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 368
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiElementType;->YU:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->a(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 369
    invoke-virtual {v0, p3}, Lcom/xiaopeng/xui/widget/XImageView;->fm(Ljava/lang/String;)V

    .line 370
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    const/4 p3, 0x1

    if-ne p2, p1, :cond_0

    move v2, p3

    nop

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setTag(Ljava/lang/Object;)V

    .line 371
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    if-gt p2, p1, :cond_1

    .line 372
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isSoundEffectsEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setSoundEffectsEnabled(Z)V

    .line 376
    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->addView(Landroid/view/View;I)V

    .line 377
    return p2
.end method

.method public b(Ljava/lang/CharSequence;I)I
    .locals 3

    .line 349
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_tab_layout_title_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 350
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agx:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 352
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agw:F

    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 353
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    const/4 v1, 0x1

    if-ne p2, p1, :cond_0

    move v2, v1

    nop

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 354
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    if-gt p2, p1, :cond_1

    .line 355
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isSoundEffectsEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 358
    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->addView(Landroid/view/View;I)V

    .line 359
    return p2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 337
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 339
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->a(Landroid/graphics/Canvas;)V

    .line 340
    nop

    .line 345
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 346
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected eN(I)I
    .locals 2

    .line 862
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getSelectedTabIndex()I
    .locals 1

    .line 793
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahb:I

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 801
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 769
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 770
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 771
    if-ge p1, v0, :cond_0

    if-eqz v1, :cond_0

    .line 772
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    return p1

    .line 774
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j(ILjava/lang/String;)I
    .locals 1

    .line 413
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 414
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->a(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public m(Ljava/lang/CharSequence;)I
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 409
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->b(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 905
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onAttachedToWindow()V

    .line 906
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahk:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahl:Z

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahk:Z

    .line 908
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setStyle(I)V

    .line 910
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 540
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 541
    invoke-static {p1}, Lcom/xiaopeng/xui/c/a;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setStyle(I)V

    .line 544
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 921
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onDetachedFromWindow()V

    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahk:Z

    .line 923
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahl:Z

    .line 924
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 610
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onLayout(ZIIII)V

    .line 611
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 779
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onSizeChanged(IIII)V

    .line 780
    new-instance p1, Lcom/xiaopeng/xui/widget/XTabLayout$7;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$7;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->post(Ljava/lang/Runnable;)Z

    .line 786
    return-void
.end method

.method public setAllTabClickable(Z)V
    .locals 3

    .line 396
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 397
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 398
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 399
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 734
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    .line 735
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 736
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 737
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 740
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_2

    .line 741
    if-eqz p1, :cond_1

    const/16 p1, 0xff

    goto :goto_1

    :cond_1
    const/16 p1, 0x5c

    .line 742
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 743
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agJ:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 744
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agK:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 745
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agL:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 746
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->invalidate()V

    .line 748
    :cond_2
    return-void
.end method

.method public setIndicatorAnimatorEnable(Z)V
    .locals 0

    .line 332
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agv:Z

    .line 333
    return-void
.end method

.method public setOnTabChangeListener(Lcom/xiaopeng/xui/widget/XTabLayout$b;)V
    .locals 0
    .param p1    # Lcom/xiaopeng/xui/widget/XTabLayout$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 870
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahi:Lcom/xiaopeng/xui/widget/XTabLayout$b;

    .line 871
    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 3

    .line 928
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setSoundEffectsEnabled(Z)V

    .line 929
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 930
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 931
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 932
    if-eqz v2, :cond_0

    .line 933
    invoke-virtual {v2, p1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 930
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    :cond_1
    return-void
.end method

.method public setStyle(I)V
    .locals 5

    .line 201
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahl:Z

    .line 202
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agI:Z

    if-nez v0, :cond_0

    .line 203
    nop

    .line 205
    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    .line 206
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahc:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 207
    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    .line 214
    :cond_1
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 215
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agu:I

    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agu:I

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setPadding(IIII)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setPadding(IIII)V

    .line 220
    :goto_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahd:I

    if-lez p1, :cond_5

    .line 221
    move p1, v1

    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 222
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 223
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahd:I

    .line 225
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 226
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 227
    goto :goto_2

    :cond_3
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 228
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahg:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahg:[I

    array-length v2, v2

    if-le v2, p1, :cond_4

    .line 229
    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->ahg:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 234
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agK:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->agF:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->a(ZLcom/xiaopeng/xui/widget/XTabLayout$a;)V

    .line 237
    return-void
.end method
