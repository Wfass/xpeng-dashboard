.class public Lcom/xiaopeng/xui/widget/XCircularProgressBar;
.super Landroid/widget/ProgressBar;
.source "XCircularProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XCircularProgressBar$IndicatorType;
    }
.end annotation


# static fields
.field public static final INDICATOR_TYPE_PAUSED:I = 0x0

.field public static final INDICATOR_TYPE_PLAYING_PAUSE:I = 0x2

.field public static final INDICATOR_TYPE_PLAYING_STOP:I = 0x1

.field public static final INDICATOR_TYPE_START_DOWNLOAD:I = 0x3

.field public static final OPAQUE:F = 1.0f

.field private static final STATE_PAUSED:[I

.field private static final STATE_PLAYING_PAUSE:[I

.field private static final STATE_PLAYING_STOP:[I

.field private static final STATE_START_DOWNLOAD:[I

.field public static final TRANSLUCENT:F = 0.16f


# instance fields
.field private mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

.field private mCircularIndeterminateDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

.field private mCircularPgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

.field private mEnableIndicator:Z

.field private mIndeterminateDrId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mIndicatorPause:Landroid/graphics/drawable/Drawable;

.field private mIndicatorPauseId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mIndicatorPlay:Landroid/graphics/drawable/Drawable;

.field private mIndicatorPlayId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mIndicatorStart:Landroid/graphics/drawable/Drawable;

.field private mIndicatorStartId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mIndicatorStop:Landroid/graphics/drawable/Drawable;

.field private mIndicatorStopId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mIndicatorType:I

.field private mInset:F

.field private mLightRadius:F

.field private mProgressDrawableId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mStrokeWidth:F

.field private mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/xiaopeng/xpui/R$attr;->progress_state_playing_stop:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_PLAYING_STOP:[I

    .line 32
    new-array v1, v0, [I

    sget v2, Lcom/xiaopeng/xpui/R$attr;->progress_state_playing_pause:I

    aput v2, v1, v3

    sput-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_PLAYING_PAUSE:[I

    .line 33
    new-array v1, v0, [I

    sget v2, Lcom/xiaopeng/xpui/R$attr;->progress_state_paused:I

    aput v2, v1, v3

    sput-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_PAUSED:[I

    .line 34
    new-array v0, v0, [I

    sget v1, Lcom/xiaopeng/xpui/R$attr;->progress_state_start_download:I

    aput v1, v0, v3

    sput-object v0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_START_DOWNLOAD:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 102
    sget v0, Lcom/xiaopeng/xpui/R$style;->XProgressBar_Circular_Medium:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 106
    sget v0, Lcom/xiaopeng/xpui/R$style;->XProgressBar_Circular_Medium:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mEnableIndicator:Z

    .line 111
    invoke-direct {p0, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->init(Landroid/util/AttributeSet;II)V

    .line 112
    return-void
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "id"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 336
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 136
    if-nez p1, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_enableIndicator:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mEnableIndicator:Z

    .line 142
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicatorType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    .line 143
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_inset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mInset:F

    .line 144
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_strokeWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mStrokeWidth:F

    .line 145
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_android_enabled:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 146
    .local v1, "stateEnabled":Z
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_light_radius:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mLightRadius:F

    .line 148
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_play:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPlay:Landroid/graphics/drawable/Drawable;

    .line 149
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_pause:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPause:Landroid/graphics/drawable/Drawable;

    .line 150
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_stop:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStop:Landroid/graphics/drawable/Drawable;

    .line 151
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_start:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStart:Landroid/graphics/drawable/Drawable;

    .line 152
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_play:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPlayId:I

    .line 153
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_pause:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPauseId:I

    .line 154
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_stop:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStopId:I

    .line 155
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_start:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStartId:I

    .line 157
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_android_indeterminateDrawable:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndeterminateDrId:I

    .line 158
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_android_progressDrawable:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mProgressDrawableId:I

    .line 160
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setEnabled(Z)V

    .line 163
    iget v2, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getMax()I

    move-result v2

    invoke-super {p0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xui/widget/-$$Lambda$SPexaB5wHRdqIMQjiB7GGtOU9Lg;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$SPexaB5wHRdqIMQjiB7GGtOU9Lg;-><init>(Lcom/xiaopeng/xui/widget/XCircularProgressBar;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 172
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setProgressDrawableProp()V

    .line 173
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndeterminateProp()V

    .line 174
    return-void
.end method

.method private parseIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "indeterminateDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 191
    instance-of v0, p1, Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_0

    .line 192
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 193
    .local v0, "indeterminate":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    if-eqz v1, :cond_0

    .line 194
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularIndeterminateDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    .line 197
    .end local v0    # "indeterminate":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private parseProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "progressDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 177
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 178
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 179
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 180
    .local v1, "pgDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    if-eqz v2, :cond_0

    .line 181
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularPgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    .line 183
    :cond_0
    const/high16 v2, 0x1020000

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 184
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    if-eqz v3, :cond_1

    .line 185
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    .line 188
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "pgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private setIndeterminateProp()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularIndeterminateDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularIndeterminateDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mInset:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->setInset(F)V

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularIndeterminateDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->setStrokeWidth(F)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularIndeterminateDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mLightRadius:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->setLightRadius(F)V

    .line 221
    :cond_0
    return-void
.end method

.method private setProgressDrawableProp()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularPgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularPgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mInset:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->setInset(F)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularPgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->setStrokeWidth(F)V

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularPgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mLightRadius:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->setLightRadius(F)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mInset:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->setInset(F)V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->setStrokeWidth(F)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->setIndicatorPlay(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPause:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->setIndicatorPause(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->setIndicatorStop(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->setIndicatorStart(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 327
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 328
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setAlpha(F)V

    goto :goto_0

    .line 331
    :cond_0
    const v0, 0x3e23d70a    # 0.16f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setAlpha(F)V

    .line 333
    :goto_0
    return-void
.end method

.method public getIndicatorType()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 289
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 291
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 283
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 285
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .param p1, "extraSpace"    # I

    .line 309
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mEnableIndicator:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 312
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 313
    .local v0, "drawableState":[I
    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    if-nez v1, :cond_1

    .line 314
    sget-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_PAUSED:[I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 315
    :cond_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 316
    sget-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_PLAYING_STOP:[I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 317
    :cond_2
    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 318
    sget-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_PLAYING_PAUSE:[I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 319
    :cond_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 320
    sget-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_START_DOWNLOAD:[I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mergeDrawableStates([I[I)[I

    .line 322
    :cond_4
    :goto_0
    return-object v0

    .line 310
    .end local v0    # "drawableState":[I
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 295
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 297
    return-void
.end method

.method public setEnableIndicator(Z)V
    .locals 0
    .param p1, "enableIndicator"    # Z

    .line 131
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mEnableIndicator:Z

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->refreshDrawableState()V

    .line 133
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 0
    .param p1, "indeterminate"    # Z

    monitor-enter p0

    .line 301
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 302
    if-nez p1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->refreshDrawableState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_0
    monitor-exit p0

    return-void

    .line 300
    .end local p1    # "indeterminate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/widget/XCircularProgressBar;
    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 276
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->parseIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndeterminateProp()V

    .line 278
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    return-void
.end method

.method public setIndicatorType(I)V
    .locals 2
    .param p1, "indicatorType"    # I

    .line 115
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getMin()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 118
    :cond_0
    if-ne p1, v1, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getMax()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 122
    :cond_1
    iput p1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->refreshDrawableState()V

    .line 124
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    monitor-enter p0

    .line 251
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getMax()I

    move-result v0

    move p1, v0

    .line 254
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 250
    .end local p1    # "progress":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/widget/XCircularProgressBar;
    throw p1
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 265
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->parseProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setProgressDrawableProp()V

    .line 267
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    return-void
.end method

.method protected updateThemeResource()V
    .locals 1

    .line 226
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStartId:I

    if-eqz v0, :cond_0

    .line 227
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStartId:I

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStart:Landroid/graphics/drawable/Drawable;

    .line 229
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPauseId:I

    if-eqz v0, :cond_1

    .line 230
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPauseId:I

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPause:Landroid/graphics/drawable/Drawable;

    .line 232
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStopId:I

    if-eqz v0, :cond_2

    .line 233
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStopId:I

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStop:Landroid/graphics/drawable/Drawable;

    .line 235
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPlayId:I

    if-eqz v0, :cond_3

    .line 236
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPlayId:I

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPlay:Landroid/graphics/drawable/Drawable;

    .line 241
    :cond_3
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndeterminateDrId:I

    if-eqz v0, :cond_4

    .line 242
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndeterminateDrId:I

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    :cond_4
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mProgressDrawableId:I

    if-eqz v0, :cond_5

    .line 245
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mProgressDrawableId:I

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    :cond_5
    return-void
.end method
