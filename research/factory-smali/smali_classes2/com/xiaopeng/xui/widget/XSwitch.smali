.class public Lcom/xiaopeng/xui/widget/XSwitch;
.super Lcom/xiaopeng/xui/widget/XCompoundButton;
.source "XSwitch.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_ALPHA_IN:I = 0xc8

.field private static final ANIMATION_ALPHA_OUT:I = 0xc8

.field private static final ANIMATION_TRANSLATE:I = 0x12c

.field private static final ANIMATION_VERTICAL_OFFSET:I = 0x78

.field private static final ANIMATOR_DURATION:I = 0x2bc

.field private static final BLUR_ALPHA_DISABLE:F = 0.36f

.field private static final BLUR_ALPHA_ENABLE:F = 1.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private BG_BOTTOM:F

.field private final BG_RADIUS:F

.field private BG_RIGHT:F

.field private CENTER_Y:F

.field private final CIRCLE_OUT_DAY_SHADOW_RADIUS:F

.field private final CIRCLE_OUT_NIGHT_ON_SHADOW_RADIUS:F

.field private final DIMEN_2:F

.field private INNER_BOTTOM:F

.field private final INNER_CIRCLE_RADIUS:F

.field private INNER_CIRCLE_RIGHT:F

.field private INNER_LEFT:F

.field private INNER_TOP:F

.field private final MOVE_X:F

.field private OUT_CIRCLE_BOTTOM:F

.field private OUT_CIRCLE_TOP:F

.field private OUT_STROKE_BOTTOM:F

.field private OUT_STROKE_LEFT:F

.field private final OUT_STROKE_RADIUS:F

.field private OUT_STROKE_RIGHT:F

.field private OUT_STROKE_TOP:F

.field private PADDING_LEFT:F

.field private PADDING_TOP:F

.field private final SHADOW_RADIUS:F

.field private final VER_HEIGHT_RIGHT:F

.field private VER_LEFT:F

.field private final VER_RADIUS:F

.field private VER_RIGHT:F

.field private VER_TOP_RIGHT:F

.field private final VER_WIDTH_LEFT:F

.field private final VER_WIDTH_RIGHT:F

.field private isDetachedFromWindow:Z

.field private isDetachedNightTheme:Z

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mBackgroundShader:Landroid/graphics/Shader;

.field private mBgDisableOffColorEnd:I

.field private mBgDisableOffColorStart:I

.field private mBgDisableOnColorEnd:I

.field private mBgDisableOnColorStart:I

.field private mBgEnableOffNormalColorEnd:I

.field private mBgEnableOffNormalColorStart:I

.field private mBgEnableOffPressedColorEnd:I

.field private mBgEnableOffPressedColorStart:I

.field private mBgEnableOnNormalColorEnd:I

.field private mBgEnableOnNormalColorStart:I

.field private mBgEnableOnPressedColorEnd:I

.field private mBgEnableOnPressedColorStart:I

.field private mBgOffColorEnd:I

.field private mBgOffColorStart:I

.field private mBgOnColorEnd:I

.field private mBgOnColorStart:I

.field private mBlurAlphaDst:F

.field private mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mCheckSoundEnable:Z

.field private mCircleInnerDisableColorEnd:I

.field private mCircleInnerDisableColorStart:I

.field private mCircleInnerEnableColorEnd:I

.field private mCircleInnerEnableColorStart:I

.field private mCircleInnerShader:Landroid/graphics/Shader;

.field private mCircleOutDisableOffColorEnd:I

.field private mCircleOutDisableOffColorStart:I

.field private mCircleOutDisableOnColorEnd:I

.field private mCircleOutDisableOnColorStart:I

.field private mCircleOutEnableOffColorEnd:I

.field private mCircleOutEnableOffColorStart:I

.field private mCircleOutEnableOnColorEnd:I

.field private mCircleOutEnableOnColorStart:I

.field private mCircleOutLightShader:Landroid/graphics/Shader;

.field private mCircleOutOffColorEnd:I

.field private mCircleOutOffColorStart:I

.field private mCircleOutOffShadowOffsetY:F

.field private mCircleOutOffShadowRadius:F

.field private mCircleOutOnColorEnd:I

.field private mCircleOutOnColorStart:I

.field private mCircleOutOnShadowOffsetY:F

.field private mCircleOutOnShadowRadius:F

.field private mCircleOutShader:Landroid/graphics/Shader;

.field private mCircleOutShadowColor:I

.field private mCircleOutShadowOffsetY:F

.field private mCircleOutShadowRadius:F

.field private mColorPaint:Landroid/graphics/Paint;

.field private mCurrentAnimValue:I

.field private mOnInterceptListener:Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

.field private mShaderPaint:Landroid/graphics/Paint;

.field private mTranslateX:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mVerticalColor:I

.field private mVerticalDisableOffColor:I

.field private mVerticalDisableOnColor:I

.field private mVerticalEnableOffColor:I

.field private mVerticalEnableOnColor:I

.field private mVerticalHeight:F

.field private mVerticalLeft:F

.field private mVerticalLightColor:I

.field private mVerticalOffColor:I

.field private mVerticalOnColor:I

.field private mVerticalShadowRadius:F

.field private mVerticalTop:F

.field private mVerticalWidth:F

.field private mXFerModeAdd:Landroid/graphics/Xfermode;

.field private transPercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/widget/XSwitch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    .line 49
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_switch_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_switch_padding_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_LEFT:F

    .line 53
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    const/16 v2, 0x32

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_BOTTOM:F

    .line 54
    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_RADIUS:F

    .line 55
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_LEFT:F

    const/16 v2, 0x5a

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_RIGHT:F

    .line 57
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_TOP:F

    .line 58
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    .line 59
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    .line 60
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_LEFT:F

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    .line 61
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_BOTTOM:F

    .line 62
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_BOTTOM:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_BOTTOM:F

    .line 63
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RIGHT:F

    .line 65
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RADIUS:F

    .line 66
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_LEFT:F

    .line 67
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    .line 68
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RADIUS:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_BOTTOM:F

    .line 69
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_LEFT:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RADIUS:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RIGHT:F

    .line 71
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_BOTTOM:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CENTER_Y:F

    .line 72
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->MOVE_X:F

    .line 74
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_LEFT:F

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_LEFT:F

    .line 75
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_LEFT:F

    const/16 v2, 0x2e

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_RIGHT:F

    .line 76
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_TOP_RIGHT:F

    .line 77
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_WIDTH_LEFT:F

    .line 78
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_WIDTH_RIGHT:F

    .line 79
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_HEIGHT_RIGHT:F

    .line 80
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_RADIUS:F

    .line 114
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CIRCLE_OUT_DAY_SHADOW_RADIUS:F

    .line 115
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CIRCLE_OUT_NIGHT_ON_SHADOW_RADIUS:F

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCheckSoundEnable:Z

    .line 320
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->isDetachedFromWindow:Z

    .line 160
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->init()V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    .line 49
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_switch_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_switch_padding_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_LEFT:F

    .line 53
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    const/16 v2, 0x32

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_BOTTOM:F

    .line 54
    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_RADIUS:F

    .line 55
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_LEFT:F

    const/16 v2, 0x5a

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_RIGHT:F

    .line 57
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_TOP:F

    .line 58
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    .line 59
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    .line 60
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_LEFT:F

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    .line 61
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_BOTTOM:F

    .line 62
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_BOTTOM:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_BOTTOM:F

    .line 63
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RIGHT:F

    .line 65
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RADIUS:F

    .line 66
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_LEFT:F

    .line 67
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    .line 68
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RADIUS:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_BOTTOM:F

    .line 69
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_LEFT:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RADIUS:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RIGHT:F

    .line 71
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_BOTTOM:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CENTER_Y:F

    .line 72
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->MOVE_X:F

    .line 74
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_LEFT:F

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_LEFT:F

    .line 75
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_LEFT:F

    const/16 v2, 0x2e

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_RIGHT:F

    .line 76
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_TOP_RIGHT:F

    .line 77
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_WIDTH_LEFT:F

    .line 78
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_WIDTH_RIGHT:F

    .line 79
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_HEIGHT_RIGHT:F

    .line 80
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_RADIUS:F

    .line 114
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CIRCLE_OUT_DAY_SHADOW_RADIUS:F

    .line 115
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CIRCLE_OUT_NIGHT_ON_SHADOW_RADIUS:F

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCheckSoundEnable:Z

    .line 320
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->isDetachedFromWindow:Z

    .line 165
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->init()V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 169
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    .line 49
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_switch_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_switch_padding_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_LEFT:F

    .line 53
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    const/16 v2, 0x32

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_BOTTOM:F

    .line 54
    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_RADIUS:F

    .line 55
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_LEFT:F

    const/16 v2, 0x5a

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_RIGHT:F

    .line 57
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_TOP:F

    .line 58
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    .line 59
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    .line 60
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_LEFT:F

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    .line 61
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_BOTTOM:F

    .line 62
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_BOTTOM:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_BOTTOM:F

    .line 63
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RIGHT:F

    .line 65
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RADIUS:F

    .line 66
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_LEFT:F

    .line 67
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    .line 68
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RADIUS:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_BOTTOM:F

    .line 69
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_LEFT:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RADIUS:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RIGHT:F

    .line 71
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_BOTTOM:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CENTER_Y:F

    .line 72
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->MOVE_X:F

    .line 74
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_LEFT:F

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_LEFT:F

    .line 75
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_LEFT:F

    const/16 v2, 0x2e

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_RIGHT:F

    .line 76
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_TOP_RIGHT:F

    .line 77
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_WIDTH_LEFT:F

    .line 78
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_WIDTH_RIGHT:F

    .line 79
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_HEIGHT_RIGHT:F

    .line 80
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_RADIUS:F

    .line 114
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CIRCLE_OUT_DAY_SHADOW_RADIUS:F

    .line 115
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CIRCLE_OUT_NIGHT_ON_SHADOW_RADIUS:F

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCheckSoundEnable:Z

    .line 320
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->isDetachedFromWindow:Z

    .line 170
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->init()V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XSwitch;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XSwitch;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/widget/XSwitch;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XSwitch;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private changeColorAlpha(FI)I
    .locals 4
    .param p1, "percent"    # F
    .param p2, "color"    # I

    .line 554
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 555
    .local v0, "alpha":I
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method private changeParams()V
    .locals 11

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOnPressedColorStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOnColorStart:I

    .line 241
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOnPressedColorEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOnColorEnd:I

    .line 242
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOffPressedColorStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOffColorStart:I

    .line 243
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOffPressedColorEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOffColorEnd:I

    goto :goto_0

    .line 245
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOnNormalColorStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOnColorStart:I

    .line 246
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOnNormalColorEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOnColorEnd:I

    .line 247
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOffNormalColorStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOffColorStart:I

    .line 248
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOffNormalColorEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOffColorEnd:I

    .line 250
    :goto_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutEnableOffColorStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffColorStart:I

    .line 251
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutEnableOffColorEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffColorEnd:I

    .line 252
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutEnableOnColorStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnColorStart:I

    .line 253
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutEnableOnColorEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnColorEnd:I

    .line 255
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurAlphaDst:F

    .line 257
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleInnerEnableColorStart:I

    .line 258
    .local v0, "mCircleInnerColorStart":I
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleInnerEnableColorEnd:I

    .line 260
    .local v1, "mCircleInnerColorEnd":I
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalEnableOffColor:I

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalOffColor:I

    .line 261
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalEnableOnColor:I

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalOnColor:I

    goto :goto_1

    .line 263
    .end local v0    # "mCircleInnerColorStart":I
    .end local v1    # "mCircleInnerColorEnd":I
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgDisableOnColorStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOnColorStart:I

    .line 264
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgDisableOnColorEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOnColorEnd:I

    .line 265
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgDisableOffColorStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOffColorStart:I

    .line 266
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgDisableOffColorEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOffColorEnd:I

    .line 268
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutDisableOffColorStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffColorStart:I

    .line 269
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutDisableOffColorEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffColorEnd:I

    .line 270
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutDisableOnColorStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnColorStart:I

    .line 271
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutDisableOnColorEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnColorEnd:I

    .line 273
    const v0, 0x3eb851ec    # 0.36f

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurAlphaDst:F

    .line 275
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleInnerDisableColorStart:I

    .line 276
    .restart local v0    # "mCircleInnerColorStart":I
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleInnerDisableColorEnd:I

    .line 278
    .restart local v1    # "mCircleInnerColorEnd":I
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalDisableOffColor:I

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalOffColor:I

    .line 279
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalDisableOnColor:I

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalOnColor:I

    .line 282
    :goto_1
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_BOTTOM:F

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v2

    move v8, v0

    move v9, v1

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleInnerShader:Landroid/graphics/Shader;

    .line 285
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isNight()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 286
    iput v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffShadowRadius:F

    .line 287
    iput v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffShadowOffsetY:F

    .line 288
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CIRCLE_OUT_NIGHT_ON_SHADOW_RADIUS:F

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnShadowRadius:F

    .line 289
    iput v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnShadowOffsetY:F

    .line 291
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalShadowRadius:F

    goto :goto_2

    .line 293
    :cond_2
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CIRCLE_OUT_DAY_SHADOW_RADIUS:F

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffShadowRadius:F

    .line 294
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CIRCLE_OUT_DAY_SHADOW_RADIUS:F

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffShadowOffsetY:F

    .line 295
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CIRCLE_OUT_DAY_SHADOW_RADIUS:F

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnShadowRadius:F

    .line 296
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CIRCLE_OUT_DAY_SHADOW_RADIUS:F

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnShadowOffsetY:F

    .line 298
    iput v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalShadowRadius:F

    .line 301
    :goto_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->updateViewState()V

    .line 302
    return-void
.end method

.method private getColor(I)I
    .locals 2
    .param p1, "resourceId"    # I

    .line 550
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method private gradientColor(IIF)I
    .locals 3
    .param p1, "colorS"    # I
    .param p2, "colorT"    # I
    .param p3, "percent"    # F

    .line 559
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p3, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 3

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setClickable(Z)V

    .line 175
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    .line 176
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 177
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mColorPaint:Landroid/graphics/Paint;

    .line 178
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXFerModeAdd:Landroid/graphics/Xfermode;

    .line 179
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 180
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_switch_drawable:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setButtonDrawable(I)V

    .line 181
    const v0, 0x106000d

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setBackgroundColor(I)V

    .line 182
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setGravity(I)V

    .line 184
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->initColor()V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setSoundEffectsEnabled(Z)V

    .line 187
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 188
    return-void
.end method

.method private initColor()V
    .locals 1

    .line 198
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->isDetachedNightTheme:Z

    .line 199
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_off_enable_normal_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOffNormalColorStart:I

    .line 200
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_off_enable_normal_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOffNormalColorEnd:I

    .line 201
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_off_enable_pressed_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOffPressedColorStart:I

    .line 202
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_off_enable_pressed_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOffPressedColorEnd:I

    .line 203
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_on_enable_normal_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOnNormalColorStart:I

    .line 204
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_on_enable_normal_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOnNormalColorEnd:I

    .line 205
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_on_enable_pressed_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOnPressedColorStart:I

    .line 206
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_on_enable_pressed_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgEnableOnPressedColorEnd:I

    .line 207
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_off_disable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgDisableOffColorStart:I

    .line 208
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_off_disable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgDisableOffColorEnd:I

    .line 209
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_on_disable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgDisableOnColorStart:I

    .line 210
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_on_disable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgDisableOnColorEnd:I

    .line 212
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_off_enable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutEnableOffColorStart:I

    .line 213
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_off_enable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutEnableOffColorEnd:I

    .line 214
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_on_enable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutEnableOnColorStart:I

    .line 215
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_on_enable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutEnableOnColorEnd:I

    .line 216
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_off_disable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutDisableOffColorStart:I

    .line 217
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_off_disable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutDisableOffColorEnd:I

    .line 218
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_on_disable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutDisableOnColorStart:I

    .line 219
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_on_disable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutDisableOnColorEnd:I

    .line 221
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_shadow_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutShadowColor:I

    .line 223
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_inner_enable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleInnerEnableColorStart:I

    .line 224
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_inner_enable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleInnerEnableColorEnd:I

    .line 225
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_inner_disable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleInnerDisableColorStart:I

    .line 226
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_inner_disable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleInnerDisableColorEnd:I

    .line 228
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_vertical_off_enable_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalEnableOffColor:I

    .line 229
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_vertical_on_enable_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalEnableOnColor:I

    .line 230
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_vertical_off_disable_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalDisableOffColor:I

    .line 231
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_vertical_on_disable_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalDisableOnColor:I

    .line 232
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeParams()V

    .line 233
    return-void
.end method

.method private isNight()Z
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 194
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private px(I)F
    .locals 3
    .param p1, "dp"    # I

    .line 652
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private resetAnimValue()V
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    goto :goto_0

    .line 405
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    .line 407
    :goto_0
    return-void
.end method

.method private runAnimator(I)V
    .locals 3
    .param p1, "dstValue"    # I

    .line 416
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 419
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/widget/XSwitch$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XSwitch$1;-><init>(Lcom/xiaopeng/xui/widget/XSwitch;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 437
    return-void
.end method

.method private stopAnimation()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 451
    :cond_0
    return-void
.end method

.method private updateBgFraction()V
    .locals 4

    .line 454
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 455
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOffColorStart:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOffColorEnd:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->updateBgShader(II)V

    goto :goto_0

    .line 456
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_1

    .line 457
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOffColorStart:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOnColorStart:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->transPercent:F

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->gradientColor(IIF)I

    move-result v0

    .line 458
    .local v0, "bgColorStart":I
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOffColorEnd:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOnColorEnd:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->transPercent:F

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->gradientColor(IIF)I

    move-result v1

    .line 459
    .local v1, "bgColorEnd":I
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->updateBgShader(II)V

    .line 460
    .end local v0    # "bgColorStart":I
    .end local v1    # "bgColorEnd":I
    goto :goto_0

    .line 461
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOnColorStart:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBgOnColorEnd:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->updateBgShader(II)V

    .line 463
    :goto_0
    return-void
.end method

.method private updateBgShader(II)V
    .locals 9
    .param p1, "colorStart"    # I
    .param p2, "colorEnd"    # I

    .line 466
    new-instance v8, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_BOTTOM:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBackgroundShader:Landroid/graphics/Shader;

    .line 468
    return-void
.end method

.method private updateCircleMoveFraction()V
    .locals 2

    .line 509
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    goto :goto_0

    .line 511
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_1

    .line 512
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->MOVE_X:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->transPercent:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    goto :goto_0

    .line 514
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->MOVE_X:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    .line 516
    :goto_0
    return-void
.end method

.method private updateCircleOutFraction()V
    .locals 5

    .line 471
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    const/high16 v1, 0x43480000    # 200.0f

    const/16 v2, 0xc8

    if-gt v0, v2, :cond_0

    .line 472
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffColorStart:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffColorEnd:I

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->updateCircleOutShader(II)V

    .line 473
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffShadowRadius:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutShadowRadius:F

    .line 474
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffShadowOffsetY:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutShadowOffsetY:F

    .line 475
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurAlphaDst:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 476
    .local v0, "alphaPercent":F
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffColorStart:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->changeColorAlpha(FI)I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffColorEnd:I

    .line 477
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->changeColorAlpha(FI)I

    move-result v2

    .line 476
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->updateCircleOutLightShader(II)V

    .line 478
    .end local v0    # "alphaPercent":F
    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    const/16 v3, 0x1f4

    if-gt v0, v3, :cond_1

    .line 479
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffColorStart:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnColorStart:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->transPercent:F

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->gradientColor(IIF)I

    move-result v0

    .line 481
    .local v0, "circleOutColorStart":I
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffColorEnd:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnColorEnd:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->transPercent:F

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->gradientColor(IIF)I

    move-result v1

    .line 483
    .local v1, "circleOutColorEnd":I
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->updateCircleOutShader(II)V

    .line 484
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnShadowRadius:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffShadowRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->transPercent:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutShadowRadius:F

    .line 485
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnShadowOffsetY:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOffShadowOffsetY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->transPercent:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutShadowOffsetY:F

    .line 486
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurAlphaDst:F

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeColorAlpha(FI)I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurAlphaDst:F

    .line 487
    invoke-direct {p0, v3, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->changeColorAlpha(FI)I

    move-result v3

    .line 486
    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->updateCircleOutLightShader(II)V

    .line 488
    .end local v0    # "circleOutColorStart":I
    .end local v1    # "circleOutColorEnd":I
    goto :goto_0

    .line 489
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnColorStart:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnColorEnd:I

    invoke-direct {p0, v0, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->updateCircleOutShader(II)V

    .line 490
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnShadowRadius:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutShadowRadius:F

    .line 491
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnShadowOffsetY:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutShadowOffsetY:F

    .line 492
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurAlphaDst:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurAlphaDst:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    add-int/lit16 v4, v4, -0x12c

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    .line 493
    .local v0, "alphaPercent":F
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnColorStart:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->changeColorAlpha(FI)I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutOnColorEnd:I

    .line 494
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->changeColorAlpha(FI)I

    move-result v2

    .line 493
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->updateCircleOutLightShader(II)V

    .line 496
    .end local v0    # "alphaPercent":F
    :goto_0
    return-void
.end method

.method private updateCircleOutLightShader(II)V
    .locals 9
    .param p1, "colorStart"    # I
    .param p2, "colorEnd"    # I

    .line 504
    new-instance v8, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_TOP:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_BOTTOM:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutLightShader:Landroid/graphics/Shader;

    .line 506
    return-void
.end method

.method private updateCircleOutShader(II)V
    .locals 9
    .param p1, "colorStart"    # I
    .param p2, "colorEnd"    # I

    .line 499
    new-instance v8, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_TOP:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_BOTTOM:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutShader:Landroid/graphics/Shader;

    .line 501
    return-void
.end method

.method private updateVerticalFraction()V
    .locals 5

    .line 519
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    const/high16 v1, 0x43480000    # 200.0f

    const/4 v2, 0x0

    const/16 v3, 0xc8

    if-gt v0, v3, :cond_0

    .line 520
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalOffColor:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalColor:I

    .line 521
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_LEFT:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalLeft:F

    .line 522
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CENTER_Y:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalTop:F

    .line 523
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_WIDTH_LEFT:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalWidth:F

    .line 524
    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalHeight:F

    .line 525
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurAlphaDst:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 526
    .local v0, "alphaPercent":F
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalColor:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->changeColorAlpha(FI)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalLightColor:I

    .line 527
    .end local v0    # "alphaPercent":F
    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    const/16 v4, 0x1f4

    if-gt v0, v4, :cond_2

    .line 528
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalOffColor:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalOnColor:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->transPercent:F

    invoke-direct {p0, v0, v1, v4}, Lcom/xiaopeng/xui/widget/XSwitch;->gradientColor(IIF)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalColor:I

    .line 529
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x78

    int-to-float v0, v0

    .line 530
    .local v0, "animationValue":F
    const/high16 v1, 0x43340000    # 180.0f

    div-float v1, v0, v1

    .line 531
    .local v1, "percent":F
    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    .line 532
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_LEFT:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_RIGHT:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_LEFT:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalLeft:F

    .line 533
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CENTER_Y:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CENTER_Y:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_TOP_RIGHT:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalTop:F

    .line 534
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_WIDTH_LEFT:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_WIDTH_LEFT:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_WIDTH_RIGHT:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalWidth:F

    .line 535
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_HEIGHT_RIGHT:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalHeight:F

    .line 537
    :cond_1
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurAlphaDst:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalColor:I

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->changeColorAlpha(FI)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalLightColor:I

    .line 538
    .end local v0    # "animationValue":F
    .end local v1    # "percent":F
    goto :goto_0

    .line 539
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalOnColor:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalColor:I

    .line 540
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_RIGHT:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalLeft:F

    .line 541
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_TOP_RIGHT:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalTop:F

    .line 542
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_WIDTH_RIGHT:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalWidth:F

    .line 543
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_HEIGHT_RIGHT:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalHeight:F

    .line 544
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurAlphaDst:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurAlphaDst:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    add-int/lit16 v4, v4, -0x12c

    sub-int/2addr v4, v3

    int-to-float v3, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 545
    .local v0, "alphaPercent":F
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalColor:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->changeColorAlpha(FI)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalLightColor:I

    .line 547
    .end local v0    # "alphaPercent":F
    :goto_0
    return-void
.end method

.method private updateViewState()V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->updateBgFraction()V

    .line 306
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->updateCircleOutFraction()V

    .line 307
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->updateCircleMoveFraction()V

    .line 308
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->updateVerticalFraction()V

    .line 309
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->invalidate()V

    .line 310
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 442
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    .line 443
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCurrentAnimValue:I

    add-int/lit16 v0, v0, -0xc8

    int-to-float v0, v0

    const/high16 v1, 0x43960000    # 300.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->transPercent:F

    .line 444
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->updateViewState()V

    .line 445
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 324
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onAttachedToWindow()V

    .line 325
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->isDetachedFromWindow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->isDetachedNightTheme:Z

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isNight()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->isDetachedFromWindow:Z

    .line 327
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->initColor()V

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->resetAnimValue()V

    .line 330
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeParams()V

    .line 331
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 314
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 315
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->initColor()V

    .line 318
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 335
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onDetachedFromWindow()V

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 339
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->isDetachedFromWindow:Z

    .line 340
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->isDetachedNightTheme:Z

    .line 341
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 592
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 593
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 594
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBackgroundShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 599
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_LEFT:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_RIGHT:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_BOTTOM:F

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_RADIUS:F

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_RADIUS:F

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 602
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v8

    .line 603
    .local v8, "count":I
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 604
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 605
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutShadowRadius:F

    const/4 v9, 0x0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutShadowRadius:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutShadowOffsetY:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutShadowColor:I

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 609
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    add-float/2addr v1, v0

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RIGHT:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_BOTTOM:F

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 612
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXFerModeAdd:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 615
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 616
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleOutLightShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 617
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    add-float/2addr v1, v0

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RIGHT:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_BOTTOM:F

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 620
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 625
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 626
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCircleInnerShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 627
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_LEFT:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    add-float/2addr v1, v0

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RIGHT:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_BOTTOM:F

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RADIUS:F

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RADIUS:F

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 630
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 631
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalShadowRadius:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalShadowRadius:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalColor:I

    invoke-virtual {v0, v1, v9, v9, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 634
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mShaderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v8

    .line 635
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalLeft:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalTop:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalLeft:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalWidth:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalTop:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalHeight:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_RADIUS:F

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_RADIUS:F

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mColorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 639
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalLightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mColorPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mXFerModeAdd:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mColorPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 643
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalLeft:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalTop:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalLeft:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalWidth:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalTop:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mVerticalHeight:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_RADIUS:F

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_RADIUS:F

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mColorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 646
    :cond_3
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 647
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 649
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 564
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onLayout(ZIIII)V

    .line 567
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    .line 569
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_BOTTOM:F

    .line 570
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_TOP:F

    .line 571
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_TOP:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    .line 572
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_BOTTOM:F

    .line 573
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_BOTTOM:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_CIRCLE_BOTTOM:F

    .line 574
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_TOP:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    .line 575
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RADIUS:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_BOTTOM:F

    .line 576
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_BOTTOM:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_TOP:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->CENTER_Y:F

    .line 577
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_TOP:F

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_TOP_RIGHT:F

    .line 578
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_LEFT:F

    .line 579
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_LEFT:F

    const/16 v1, 0x5a

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->BG_RIGHT:F

    .line 580
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->PADDING_LEFT:F

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    .line 581
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RADIUS:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_RIGHT:F

    .line 582
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->OUT_STROKE_LEFT:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->DIMEN_2:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_LEFT:F

    .line 583
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_LEFT:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RADIUS:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_CIRCLE_RIGHT:F

    .line 585
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->INNER_LEFT:F

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_LEFT:F

    .line 586
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_LEFT:F

    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->px(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->VER_RIGHT:F

    .line 587
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeParams()V

    .line 588
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 345
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onMeasure(II)V

    .line 346
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 350
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->stopAnimation()V

    .line 352
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->resetAnimValue()V

    .line 353
    return-void
.end method

.method public setCheckSoundEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 362
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCheckSoundEnable:Z

    .line 363
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mOnInterceptListener:Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mOnInterceptListener:Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

    .line 368
    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;->onInterceptCheck(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v0

    .line 372
    .local v0, "currentChecked":Z
    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mCheckSoundEnable:Z

    if-eqz v1, :cond_2

    .line 373
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->play(I)V

    .line 375
    :cond_2
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setChecked(Z)V

    .line 376
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getWidth()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 380
    :cond_3
    if-eq v0, p1, :cond_6

    .line 381
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->stopAnimation()V

    .line 382
    if-eqz p1, :cond_4

    .line 383
    const/16 v1, 0x2bc

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->runAnimator(I)V

    goto :goto_2

    .line 385
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->runAnimator(I)V

    goto :goto_2

    .line 377
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->resetAnimValue()V

    .line 378
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeParams()V

    .line 389
    :cond_6
    :goto_2
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 0
    .param p1, "checked"    # Z
    .param p2, "animator"    # Z

    .line 392
    if-eqz p2, :cond_0

    .line 393
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setChecked(Z)V

    .line 396
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->resetAnimValue()V

    .line 397
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeParams()V

    .line 399
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 411
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setEnabled(Z)V

    .line 412
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeParams()V

    .line 413
    return-void
.end method

.method public setOnInterceptListener(Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

    .line 660
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mOnInterceptListener:Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;

    .line 661
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .line 357
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setPressed(Z)V

    .line 358
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeParams()V

    .line 359
    return-void
.end method
