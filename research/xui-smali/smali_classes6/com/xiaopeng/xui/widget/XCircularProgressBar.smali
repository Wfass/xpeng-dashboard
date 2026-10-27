.class public Lcom/xiaopeng/xui/widget/XCircularProgressBar;
.super Landroid/widget/ProgressBar;
.source "XCircularProgressBar.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/XuiView;


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

    .line 34
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/xiaopeng/xpui/R$attr;->progress_state_playing_stop:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_PLAYING_STOP:[I

    .line 35
    new-array v1, v0, [I

    sget v2, Lcom/xiaopeng/xpui/R$attr;->progress_state_playing_pause:I

    aput v2, v1, v3

    sput-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_PLAYING_PAUSE:[I

    .line 36
    new-array v1, v0, [I

    sget v2, Lcom/xiaopeng/xpui/R$attr;->progress_state_paused:I

    aput v2, v1, v3

    sput-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_PAUSED:[I

    .line 37
    new-array v0, v0, [I

    sget v1, Lcom/xiaopeng/xpui/R$attr;->progress_state_start_download:I

    aput v1, v0, v3

    sput-object v0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_START_DOWNLOAD:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 105
    sget v0, Lcom/xiaopeng/xpui/R$style;->XProgressBar_Circular_Medium:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 109
    sget v0, Lcom/xiaopeng/xpui/R$style;->XProgressBar_Circular_Medium:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mEnableIndicator:Z

    .line 114
    invoke-direct {p0, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->init(Landroid/util/AttributeSet;II)V

    .line 115
    return-void
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "id"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 341
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

    .line 139
    if-nez p1, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_enableIndicator:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mEnableIndicator:Z

    .line 145
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicatorType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    .line 146
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_inset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mInset:F

    .line 147
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_strokeWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mStrokeWidth:F

    .line 148
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_android_enabled:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 149
    .local v1, "stateEnabled":Z
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_light_radius:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mLightRadius:F

    .line 151
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_play:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPlay:Landroid/graphics/drawable/Drawable;

    .line 152
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_pause:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPause:Landroid/graphics/drawable/Drawable;

    .line 153
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_stop:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStop:Landroid/graphics/drawable/Drawable;

    .line 154
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_start:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStart:Landroid/graphics/drawable/Drawable;

    .line 155
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_play:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPlayId:I

    .line 156
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_pause:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPauseId:I

    .line 157
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_stop:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStopId:I

    .line 158
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_progress_indicator_start:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStartId:I

    .line 160
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_android_indeterminateDrawable:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndeterminateDrId:I

    .line 161
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBar_android_progressDrawable:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mProgressDrawableId:I

    .line 163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setEnabled(Z)V

    .line 166
    iget v2, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getMax()I

    move-result v2

    invoke-super {p0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xui/widget/-$$Lambda$SPexaB5wHRdqIMQjiB7GGtOU9Lg;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$SPexaB5wHRdqIMQjiB7GGtOU9Lg;-><init>(Lcom/xiaopeng/xui/widget/XCircularProgressBar;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 175
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setProgressDrawableProp()V

    .line 176
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndeterminateProp()V

    .line 177
    return-void
.end method

.method private parseIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "indeterminateDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 194
    instance-of v0, p1, Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_0

    .line 195
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 196
    .local v0, "indeterminate":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    if-eqz v1, :cond_0

    .line 197
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularIndeterminateDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    .line 200
    .end local v0    # "indeterminate":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private parseProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "progressDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 180
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 181
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 182
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 183
    .local v1, "pgDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    if-eqz v2, :cond_0

    .line 184
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularPgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    .line 186
    :cond_0
    const/high16 v2, 0x1020000

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 187
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    if-eqz v3, :cond_1

    .line 188
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    .line 191
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "pgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private setIndeterminateProp()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularIndeterminateDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularIndeterminateDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mInset:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->setInset(F)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularIndeterminateDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->setStrokeWidth(F)V

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularIndeterminateDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mLightRadius:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressIndeterminateDrawable;->setLightRadius(F)V

    .line 224
    :cond_0
    return-void
.end method

.method private setProgressDrawableProp()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularPgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularPgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mInset:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->setInset(F)V

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularPgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->setStrokeWidth(F)V

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularPgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mLightRadius:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressPgDrawable;->setLightRadius(F)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mInset:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->setInset(F)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->setStrokeWidth(F)V

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->setIndicatorPlay(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPause:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->setIndicatorPause(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->setIndicatorStop(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mCircularBgDrawable:Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->setIndicatorStart(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 332
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 333
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setAlpha(F)V

    goto :goto_0

    .line 336
    :cond_0
    const v0, 0x3e23d70a    # 0.16f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setAlpha(F)V

    .line 338
    :goto_0
    return-void
.end method

.method public getIndicatorType()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 294
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 296
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 288
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 290
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .param p1, "extraSpace"    # I

    .line 314
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mEnableIndicator:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 317
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 318
    .local v0, "drawableState":[I
    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    if-nez v1, :cond_1

    .line 319
    sget-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_PAUSED:[I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 320
    :cond_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 321
    sget-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_PLAYING_STOP:[I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 322
    :cond_2
    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 323
    sget-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_PLAYING_PAUSE:[I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 324
    :cond_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 325
    sget-object v1, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->STATE_START_DOWNLOAD:[I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mergeDrawableStates([I[I)[I

    .line 327
    :cond_4
    :goto_0
    return-object v0

    .line 315
    .end local v0    # "drawableState":[I
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 300
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 302
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 365
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    .line 366
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->onVisibilityChangedThemeRefresh(I)V

    .line 367
    return-void
.end method

.method public setEnableIndicator(Z)V
    .locals 0
    .param p1, "enableIndicator"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mEnableIndicator:Z

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->refreshDrawableState()V

    .line 136
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 346
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 347
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    if-eqz p1, :cond_0

    .line 349
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setAlpha(F)V

    goto :goto_0

    .line 351
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setAlpha(F)V

    .line 354
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 0
    .param p1, "indeterminate"    # Z

    monitor-enter p0

    .line 306
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 307
    if-nez p1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->refreshDrawableState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_0
    monitor-exit p0

    return-void

    .line 305
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

    .line 281
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->parseIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndeterminateProp()V

    .line 283
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    return-void
.end method

.method public setIndicatorType(I)V
    .locals 2
    .param p1, "indicatorType"    # I

    .line 118
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getMin()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 121
    :cond_0
    if-ne p1, v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getMax()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 125
    :cond_1
    iput p1, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->refreshDrawableState()V

    .line 127
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    monitor-enter p0

    .line 254
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getMax()I

    move-result v0

    move p1, v0

    .line 257
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 253
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

    .line 269
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->parseProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setProgressDrawableProp()V

    .line 271
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 361
    :cond_0
    return-void
.end method

.method protected updateThemeResource()V
    .locals 1

    .line 229
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStartId:I

    if-eqz v0, :cond_0

    .line 230
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStartId:I

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStart:Landroid/graphics/drawable/Drawable;

    .line 232
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPauseId:I

    if-eqz v0, :cond_1

    .line 233
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPauseId:I

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPause:Landroid/graphics/drawable/Drawable;

    .line 235
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStopId:I

    if-eqz v0, :cond_2

    .line 236
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStopId:I

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorStop:Landroid/graphics/drawable/Drawable;

    .line 238
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPlayId:I

    if-eqz v0, :cond_3

    .line 239
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPlayId:I

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndicatorPlay:Landroid/graphics/drawable/Drawable;

    .line 244
    :cond_3
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndeterminateDrId:I

    if-eqz v0, :cond_4

    .line 245
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mIndeterminateDrId:I

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    :cond_4
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mProgressDrawableId:I

    if-eqz v0, :cond_5

    .line 248
    iget v0, p0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->mProgressDrawableId:I

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    :cond_5
    return-void
.end method
