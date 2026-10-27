.class public Lcom/xiaopeng/carcontrol/widget/SeatControlView;
.super Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;
.source "SeatControlView.java"


# static fields
.field private static final DIMEN_SHADOW_TOP:I = 0x1bd

.field private static final DISABLE_ALPHA:I = 0x29

.field private static final DISABLE_ALPHA_CHAIR:I = 0x29

.field private static final DOWN_BUTTON_SCALE:I = 0x10

.field private static final ENABLE_ALPHA:I = 0xff

.field private static final OFFSET_THUMB_TOUCH:I = 0x14

.field private static final OFFSET_TOUCH:I = 0x14

.field private static final SLIDER_ADD_CLICK_AREA:I = 0xc8

.field private static final TEXT_MARGIN:I = 0x32

.field private static drawableScale:F = 0.7f

.field private static final drvXOffset:I = 0xfa

.field private static final drvYOffset:I = 0xc8

.field private static final mDrvSeatId:I = 0x0

.field private static final mPsnRowSeatId:I = 0x1

.field private static final mSecRowSeatId:I = 0x2

.field private static final mTrdRowSeatId:I = 0x3

.field private static final secXOffset:I = 0x12c

.field private static final secYOffset:I = 0xf0

.field private static final trdXOffset:I = 0x177

.field private static final trdYOffset:I = 0x96


# instance fields
.field private DIMEN_FORTH_LEG_DOWN_LEFT:I

.field private DIMEN_FORTH_LEG_DOWN_TOP:I

.field private DIMEN_FORTH_LEG_UP_LEFT:I

.field private DIMEN_FORTH_LEG_UP_TOP:I

.field private DIMEN_HEADREST_BACK_BTN_LEFT:I

.field private final DIMEN_HEADREST_BACK_BTN_TOP:I

.field private final DIMEN_HEADREST_DOWN_BTN_LEFT:I

.field private final DIMEN_HEADREST_DOWN_BTN_TOP:I

.field private final DIMEN_HEADREST_FRONT_BTN_LEFT:I

.field private final DIMEN_HEADREST_FRONT_BTN_TOP:I

.field private final DIMEN_HEADREST_UP_BTN_LEFT:I

.field private final DIMEN_HEADREST_UP_BTN_TOP:I

.field private DIMEN_HORZ_SlIDER_LEFT_WITHOUT_BTN:I

.field private DIMEN_HORZ_SlIDER_RIGHT_WITH_BTN:I

.field private DIMEN_HORZ_SlIDER_TOP_WITHOUT_BTN:I

.field private DIMEN_LEG_DOWN_BTN_LEFT:I

.field private DIMEN_LEG_DOWN_BTN_TOP:I

.field private DIMEN_LEG_UP_BTN_LEFT:I

.field private DIMEN_LEG_UP_BTN_TOP:I

.field private DIMEN_LUMBAR_BACK_BTN_LEFT:I

.field private DIMEN_LUMBAR_DOWN_BTN_TOP:I

.field private DIMEN_LUMBAR_FRONT_BTN_LEFT:I

.field private DIMEN_LUMBAR_FRONT_BTN_TOP:I

.field private DIMEN_LUMBAR_LEFT:I

.field private DIMEN_LUMBAR_TOP:I

.field private DIMEN_LUMBAR_UP_BTN_LEFT:I

.field private DIMEN_LUMBAR_UP_BTN_TOP:I

.field private DIMEN_SEAT_BACK_BTN_LEFT:I

.field private final DIMEN_SEAT_BACK_BTN_TOP:I

.field private DIMEN_SEAT_CUSHION_LEFT:I

.field private DIMEN_SEAT_CUSHION_TOP:I

.field private DIMEN_SEAT_DOWN_TOP:I

.field private final DIMEN_SEAT_FRONT_BTN_LEFT:I

.field private final DIMEN_SEAT_FRONT_BTN_TOP:I

.field private DIMEN_SEAT_HEAD_LEFT:I

.field private DIMEN_SEAT_HEAD_TOP:I

.field private DIMEN_SEAT_LEFT:I

.field private DIMEN_SEAT_SMALL_LEG_LEFT:I

.field private DIMEN_SEAT_SMELL_LEG_TOP:I

.field private DIMEN_SEAT_TOP:I

.field private final DIMEN_SEAT_UP_BTN_LEFT:I

.field private final DIMEN_SEAT_UP_BTN_TOP:I

.field private DIMEN_SMALL_LEG_DOWN_LEFT:I

.field private DIMEN_SMALL_LEG_DOWN_TOP:I

.field private DIMEN_SMALL_LEG_UP_LEFT:I

.field private DIMEN_SMALL_LEG_UP_TOP:I

.field private DIMEN_TILT_DOWN_BTN_LEFT:I

.field private final DIMEN_TILT_DOWN_BTN_TOP:I

.field public DIMEN_TILT_LEFT:I

.field public DIMEN_TILT_TOP:I

.field private DIMEN_TILT_UP_BTN_LEFT:I

.field private final DIMEN_TILT_UP_BTN_TOP:I

.field private final DIMEN_TRD_TILT_BTN_TOP:I

.field private DIMEN_VER_SlIDER_BOTTOM_WITH_BTN:I

.field private DIMEN_VER_SlIDER_LEFT_WITHOUT_BTN:I

.field private DIMEN_VER_SlIDER_TOP_WITHOUT_BTN:I

.field private LUMBAR_MARGIN:I

.field private MID_DOWN_BTN_SIZE:I

.field private cCushionAngleRemain:F

.field private cCushionR:F

.field private cCushionStartAngle:F

.field private cCushionSweepAngle:F

.field private cCushionThumbStartAngle:F

.field private cCushionThumbSweepAngle:F

.field private cCushionX:F

.field private cCushionY:F

.field private cRearLegAngleRemain:F

.field private cRearLegR:F

.field private cRearLegStartAngle:F

.field private cRearLegSweepAngle:F

.field private cRearLegThumbStartAngle:F

.field private cRearLegThumbSweepAngle:F

.field private cRearLegX:F

.field private cRearLegY:F

.field private cTiltAngleRemain:F

.field private cTiltR:F

.field private cTiltStartAngle:F

.field private cTiltSweepAngle:F

.field private cTiltThumbStartAngle:F

.field private cTiltThumbSweepAngle:F

.field private cTiltX:F

.field private cTiltY:F

.field private drvChairBackHeight:I

.field private drvChairBackWidth:I

.field private drvChairCushionWidth:I

.field private drvChairCusionHeight:I

.field private mBgSliderPaint:Landroid/graphics/Paint;

.field private mBound:Landroid/graphics/Rect;

.field private mBtnHalf:F

.field private mDChairBack:Landroid/graphics/drawable/Drawable;

.field private mDChairCushion:Landroid/graphics/drawable/Drawable;

.field private mDChairHead:Landroid/graphics/drawable/Drawable;

.field private mDChairSet:Landroid/graphics/drawable/Drawable;

.field private mDShadow:Landroid/graphics/drawable/Drawable;

.field private mHalfLine:F

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLinePath:Landroid/graphics/Path;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRealProcessPaint:Landroid/graphics/Paint;

.field private mRearSliderCushionHorEndX:F

.field private mRearSliderCushionHorStartX:F

.field private mRearSliderCushionY:F

.field private mRearThumbCushionHorEndX:F

.field private mRearThumbCushionHorStartX:F

.field private mRearThumbCushionHorY:F

.field private volatile mSeatId:I

.field private mSecRowControlVerLeg:Landroid/graphics/drawable/Drawable;

.field private mSecRowCushion:Landroid/graphics/drawable/Drawable;

.field private mSecRowFirstControl:Landroid/graphics/drawable/Drawable;

.field private mSecRowHand:Landroid/graphics/drawable/Drawable;

.field private mSecRowSmallLeg:Landroid/graphics/drawable/Drawable;

.field private mSecRowZeroBack:Landroid/graphics/drawable/Drawable;

.field private mSecRowZeroCushion:Landroid/graphics/drawable/Drawable;

.field private mSecRowZeroFirstControl:Landroid/graphics/drawable/Drawable;

.field private mSecRowZeroHand:Landroid/graphics/drawable/Drawable;

.field private mSecRowZeroHead:Landroid/graphics/drawable/Drawable;

.field private mSecRowZeroHeadBack:Landroid/graphics/drawable/Drawable;

.field private volatile mSelectButton:I

.field private mSliderHorEndX:F

.field private mSliderHorStartX:F

.field private mSliderHorY:F

.field private mSliderVerEndY:F

.field private mSliderVerStartY:F

.field private mSliderVerX:F

.field private mSmallLegDrawable:Landroid/graphics/drawable/Drawable;

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mSupportMove:Z

.field private mTextPaint:Landroid/graphics/Paint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbHorEndX:F

.field private mThumbHorStartX:F

.field private mThumbHorY:F

.field private mThumbPaint:Landroid/graphics/Paint;

.field private mThumbVerEndY:F

.field private mThumbVerStartY:F

.field private mThumbVerX:F

.field private mTrdRowBack:Landroid/graphics/drawable/Drawable;

.field private mTrdRowControl:Landroid/graphics/drawable/Drawable;

.field private mTrdRowHead:Landroid/graphics/drawable/Drawable;

.field private mTrdRowMidHead:Landroid/graphics/drawable/Drawable;

.field private mTrdRowSet:Landroid/graphics/drawable/Drawable;

.field private paint:Landroid/graphics/Paint;

.field private secrowChairBackHeight:I

.field private secrowChairBackWidth:I

.field private secrowChairCushionHeight:I

.field private secrowChairCushionWidth:I

.field private trdChairBackHeight:I

.field private trdChairBackWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x40800000    # 4.0f

    .line 69
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHalfLine:F

    const/16 p3, 0x12c

    .line 79
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_FRONT_BTN_LEFT:I

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    rsub-int v0, v0, 0x384

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_FRONT_BTN_TOP:I

    const/16 v1, 0x2bc

    .line 81
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_BACK_BTN_LEFT:I

    .line 82
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_BACK_BTN_TOP:I

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_UP_BTN_LEFT:I

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v3, p3

    iput v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_UP_BTN_TOP:I

    .line 86
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_DOWN_TOP:I

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0025

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v1, p3

    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_LEFT:I

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_LEFT:I

    add-int/lit16 v1, v3, -0xdc

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b0026

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_TOP:I

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_TOP:I

    add-int/lit8 v1, v3, -0x5a

    .line 93
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TRD_TILT_BTN_TOP:I

    .line 95
    iput v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_UP_BTN_LEFT:I

    .line 96
    iput v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_UP_BTN_TOP:I

    .line 97
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_DOWN_TOP:I

    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_DOWN_BTN_TOP:I

    .line 98
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_FRONT_BTN_TOP:I

    .line 99
    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_BACK_BTN_LEFT:I

    iput v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_BACK_BTN_LEFT:I

    .line 100
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_FRONT_BTN_LEFT:I

    .line 102
    iput v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_UP_BTN_LEFT:I

    .line 103
    iput v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_UP_BTN_TOP:I

    .line 104
    iput v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_DOWN_BTN_LEFT:I

    .line 105
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_DOWN_BTN_TOP:I

    .line 106
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_FRONT_BTN_LEFT:I

    .line 107
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_FRONT_BTN_TOP:I

    .line 108
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_BACK_BTN_TOP:I

    .line 109
    iput v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_BACK_BTN_LEFT:I

    const/16 v5, 0x1a4

    .line 111
    iput v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_UP_LEFT:I

    .line 112
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_UP_TOP:I

    add-int/lit16 v6, v5, 0x190

    .line 113
    iput v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_DOWN_LEFT:I

    .line 114
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_DOWN_TOP:I

    add-int/lit8 v6, v2, -0x64

    .line 115
    iput v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_LEFT:I

    add-int/2addr v6, p3

    .line 116
    iput v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_LEFT:I

    add-int/lit8 v6, v1, -0x64

    .line 117
    iput v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_TOP:I

    add-int/2addr v6, p3

    .line 118
    iput v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_TOP:I

    add-int/lit8 v1, v1, 0x50

    .line 120
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_DOWN_BTN_TOP:I

    .line 121
    iput v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_DOWN_BTN_LEFT:I

    sub-int/2addr v1, p3

    .line 122
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_UP_BTN_TOP:I

    add-int/lit16 p3, v2, 0x12c

    .line 123
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_UP_BTN_LEFT:I

    .line 126
    iput v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_LEFT:I

    add-int/lit16 p3, v0, -0xd7

    .line 127
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_TOP:I

    add-int/lit16 v5, v5, 0x118

    .line 128
    iput v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_LEFT:I

    add-int/lit16 v1, p3, -0x145

    .line 129
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_TOP:I

    const/16 v6, 0x32

    rsub-int v7, v6, 0x1a4

    .line 130
    iput v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_CUSHION_LEFT:I

    add-int/lit8 v7, p3, -0x1e

    .line 131
    iput v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_CUSHION_TOP:I

    add-int/lit8 v7, v5, 0x5a

    .line 132
    iput v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_HEAD_LEFT:I

    add-int/lit16 v7, v1, -0x91

    .line 133
    iput v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_HEAD_TOP:I

    rsub-int v7, v6, 0x1a4

    .line 134
    iput v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_SMALL_LEG_LEFT:I

    add-int/lit8 p3, p3, 0xf

    .line 135
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_SMELL_LEG_TOP:I

    add-int/lit8 v5, v5, 0x4

    .line 137
    iput v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_LEFT:I

    add-int/lit16 v1, v1, 0x9a

    .line 138
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_TOP:I

    const/16 p3, 0x1e

    .line 139
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->LUMBAR_MARGIN:I

    const/16 p3, 0x15e

    .line 142
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HORZ_SlIDER_LEFT_WITHOUT_BTN:I

    .line 143
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HORZ_SlIDER_TOP_WITHOUT_BTN:I

    sub-int/2addr v4, v6

    .line 144
    iput v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HORZ_SlIDER_RIGHT_WITH_BTN:I

    add-int/2addr v3, v6

    .line 146
    iput v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_VER_SlIDER_TOP_WITHOUT_BTN:I

    .line 147
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_DOWN_TOP:I

    sub-int/2addr p3, v6

    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_VER_SlIDER_BOTTOM_WITH_BTN:I

    .line 148
    iput v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_VER_SlIDER_LEFT_WITHOUT_BTN:I

    const/high16 p3, -0x3d660000    # -77.0f

    .line 175
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    const/high16 p3, 0x42800000    # 64.0f

    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    const/4 p3, 0x0

    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbSweepAngle:F

    const/high16 v0, 0x41500000    # 13.0f

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltAngleRemain:F

    const/high16 v0, 0x42d20000    # 105.0f

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegStartAngle:F

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegSweepAngle:F

    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbSweepAngle:F

    const/high16 v1, 0x41700000    # 15.0f

    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegAngleRemain:F

    const/high16 v2, 0x43430000    # 195.0f

    iput v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionStartAngle:F

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionSweepAngle:F

    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionThumbSweepAngle:F

    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionAngleRemain:F

    const/4 p3, -0x1

    .line 1230
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    .line 192
    sget-object p3, Lcom/xiaopeng/carcontrol/R$styleable;->SeatControlView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 193
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    .line 194
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    .line 198
    sget p2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_Tilt_Chair:I

    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    goto :goto_1

    .line 196
    :cond_1
    :goto_0
    sget p2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_CHAIR:I

    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    .line 200
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "matrix",
            "scale"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    return-object p1

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 214
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 215
    invoke-virtual {p2, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v6, p2

    .line 216
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 217
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 218
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private checkCushion(FFII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "buttonWidth",
            "buttonHeight"
        }
    .end annotation

    .line 1487
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldCushionMove:Z

    const/16 v1, 0x18

    if-eqz v0, :cond_0

    .line 1488
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1492
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_UP_BTN_LEFT:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_UP_BTN_TOP:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    const/4 p1, 0x7

    .line 1496
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1499
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_DOWN_BTN_LEFT:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x14

    int-to-float p3, v0

    cmpg-float p3, p1, p3

    if-gez p3, :cond_2

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_DOWN_BTN_TOP:I

    add-int/lit8 v0, p3, -0x14

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, 0x14

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_2

    const/16 p1, 0x8

    .line 1503
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1507
    :cond_2
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionX:F

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    sub-float v0, p3, p4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    cmpg-float v0, p1, p3

    if-gez v0, :cond_3

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionY:F

    cmpg-float v2, p2, v0

    if-gez v2, :cond_3

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    sub-float/2addr v2, p4

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    sub-float v2, p1, p3

    sub-float p3, p1, p3

    mul-float/2addr v2, p3

    sub-float p3, v0, p2

    sub-float/2addr v0, p2

    mul-float/2addr p3, v0

    add-float/2addr v2, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p4, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p3, v0

    mul-float/2addr p4, p3

    cmpl-float p3, v2, p4

    if-ltz p3, :cond_3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionX:F

    sub-float p4, p1, p3

    sub-float p3, p1, p3

    mul-float/2addr p4, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionY:F

    sub-float v0, p3, p2

    sub-float/2addr p3, p2

    mul-float/2addr v0, p3

    add-float/2addr p4, v0

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p2, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p3, v0

    mul-float/2addr p2, p3

    cmpg-float p2, p4, p2

    if-gtz p2, :cond_3

    .line 1510
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    .line 1511
    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionX:F

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p3

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionAngleRemain:F

    float-to-double p3, p3

    sub-double/2addr p1, p3

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    .line 1512
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionSweepAngle:F

    float-to-double v0, v0

    div-double/2addr p1, v0

    mul-double/2addr p1, p3

    double-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbCushionProgress:F

    .line 1513
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbCushionProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    const/4 p1, 0x1

    .line 1514
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldCushionMove:Z

    .line 1515
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_3
    return-void
.end method

.method private checkDrvThumbCushion(FF)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1813
    iget v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionX:F

    float-to-double v1, v1

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    float-to-double v3, v3

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionThumbStartAngle:F

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v7

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v3, v3

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    sub-double/2addr v1, v3

    .line 1814
    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionX:F

    float-to-double v5, v5

    iget v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    float-to-double v11, v11

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionThumbStartAngle:F

    iget v14, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionThumbSweepAngle:F

    add-float/2addr v13, v14

    float-to-double v13, v13

    mul-double/2addr v13, v7

    div-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v5, v11

    iget v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v11, v11

    add-double/2addr v5, v11

    add-double/2addr v5, v3

    .line 1815
    iget v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionY:F

    float-to-double v11, v11

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    float-to-double v13, v13

    iget v15, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionThumbStartAngle:F

    float-to-double v3, v15

    mul-double/2addr v3, v7

    div-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v13, v3

    sub-double/2addr v11, v13

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v3, v3

    add-double/2addr v11, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    add-double/2addr v11, v3

    .line 1816
    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionY:F

    float-to-double v3, v3

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    float-to-double v13, v13

    iget v15, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionThumbStartAngle:F

    iget v9, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionThumbSweepAngle:F

    add-float/2addr v15, v9

    float-to-double v9, v15

    mul-double/2addr v9, v7

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v13, v7

    sub-double/2addr v3, v13

    iget v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v7, v7

    sub-double/2addr v3, v7

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    sub-double/2addr v3, v7

    move/from16 v7, p1

    float-to-double v7, v7

    cmpl-double v1, v7, v1

    if-ltz v1, :cond_0

    cmpg-double v1, v7, v5

    if-gtz v1, :cond_0

    move/from16 v1, p2

    float-to-double v1, v1

    cmpg-double v5, v1, v11

    if-gtz v5, :cond_0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    .line 1818
    iput-boolean v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldCushionMove:Z

    :cond_0
    return-void
.end method

.method private checkFrontBack(FFII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "buttonWidth",
            "buttonHeight"
        }
    .end annotation

    .line 1344
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHorMove:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_0

    .line 1345
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1348
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_FRONT_BTN_TOP:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_4

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x14

    int-to-float p4, v0

    cmpg-float p4, p2, p4

    if-gez p4, :cond_4

    const/high16 p4, 0x438c0000    # 280.0f

    cmpl-float p4, p1, p4

    const/4 v0, 0x1

    if-lez p4, :cond_1

    add-int/lit16 p4, p3, 0x12c

    add-int/lit8 p4, p4, 0x14

    int-to-float p4, p4

    cmpg-float p4, p1, p4

    if-gez p4, :cond_1

    .line 1352
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1355
    :cond_1
    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_BACK_BTN_LEFT:I

    add-int/lit8 v2, p4, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    add-int/2addr p4, p3

    add-int/lit8 p4, p4, 0x14

    int-to-float p3, p4

    cmpg-float p3, p1, p3

    if-gez p3, :cond_2

    const/4 p1, 0x2

    .line 1357
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1360
    :cond_2
    iget-boolean p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHorMove:Z

    if-eqz p3, :cond_3

    .line 1361
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1364
    :cond_3
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    cmpg-float p3, p1, p3

    if-gtz p3, :cond_4

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorEndX:F

    cmpl-float p3, p1, p3

    if-ltz p3, :cond_4

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorY:F

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p3, p4

    cmpl-float p3, p2, p3

    if-ltz p3, :cond_4

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorY:F

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p3, p4

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_4

    .line 1365
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    const/high16 p2, 0x42c80000    # 100.0f

    .line 1366
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    sub-float/2addr p1, p3

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorEndX:F

    sub-float/2addr p2, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorProgress:F

    .line 1367
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    .line 1368
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHorMove:Z

    .line 1369
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_4
    return-void
.end method

.method private checkHeadRestHor(FFII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "buttonWidth",
            "buttonHeight"
        }
    .end annotation

    .line 1433
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHeadHorMove:Z

    const/16 v1, 0x1b

    if-eqz v0, :cond_0

    .line 1434
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1437
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_FRONT_BTN_TOP:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x14

    int-to-float p4, v0

    cmpg-float p4, p2, p4

    if-gez p4, :cond_3

    const/high16 p4, 0x438c0000    # 280.0f

    cmpl-float p4, p1, p4

    if-lez p4, :cond_1

    add-int/lit16 p4, p3, 0x12c

    add-int/lit8 p4, p4, 0x14

    int-to-float p4, p4

    cmpg-float p4, p1, p4

    if-gez p4, :cond_1

    const/16 p1, 0xf

    .line 1441
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1444
    :cond_1
    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_BACK_BTN_LEFT:I

    add-int/lit8 v0, p4, -0x14

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    add-int/2addr p4, p3

    add-int/lit8 p4, p4, 0x14

    int-to-float p3, p4

    cmpg-float p3, p1, p3

    if-gez p3, :cond_2

    const/16 p1, 0x10

    .line 1446
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1449
    :cond_2
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    cmpg-float p3, p1, p3

    if-gtz p3, :cond_3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorEndX:F

    cmpl-float p3, p1, p3

    if-ltz p3, :cond_3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorY:F

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p3, p4

    cmpl-float p3, p2, p3

    if-ltz p3, :cond_3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorY:F

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p3, p4

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_3

    .line 1450
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    const/high16 p2, 0x42c80000    # 100.0f

    .line 1451
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    sub-float/2addr p1, p3

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorEndX:F

    sub-float/2addr p2, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHeadHorProgress:F

    .line 1452
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHeadHorProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    const/4 p1, 0x1

    .line 1453
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHeadHorMove:Z

    .line 1454
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_3
    return-void
.end method

.method private checkHeadRestVer(FFII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "buttonWidth",
            "buttonHeight"
        }
    .end annotation

    .line 1406
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHeadVerMove:Z

    const/16 v1, 0x1a

    if-eqz v0, :cond_0

    .line 1407
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1410
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_UP_BTN_LEFT:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x14

    int-to-float p3, v0

    cmpg-float p3, p1, p3

    if-gez p3, :cond_3

    .line 1412
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_UP_BTN_TOP:I

    add-int/lit8 v0, p3, -0x14

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, 0x14

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_1

    const/16 p1, 0x11

    .line 1414
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1417
    :cond_1
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_DOWN_BTN_TOP:I

    add-int/lit8 v0, p3, -0x14

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, 0x14

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_2

    const/16 p1, 0x12

    .line 1419
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1422
    :cond_2
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerStartY:F

    cmpg-float p3, p2, p3

    if-gtz p3, :cond_3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerEndY:F

    cmpl-float p3, p2, p3

    if-ltz p3, :cond_3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerX:F

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p3, p4

    cmpl-float p3, p1, p3

    if-ltz p3, :cond_3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerX:F

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p3, p4

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_3

    .line 1423
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    const/high16 p1, 0x42c80000    # 100.0f

    .line 1424
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerStartY:F

    sub-float p2, p3, p2

    mul-float/2addr p2, p1

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerEndY:F

    sub-float/2addr p3, p1

    div-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHeadVerProgress:F

    .line 1425
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHeadVerProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    const/4 p1, 0x1

    .line 1426
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHeadVerMove:Z

    .line 1427
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_3
    return-void
.end method

.method private checkLumbar(FFII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "buttonWidth",
            "buttonHeight"
        }
    .end annotation

    .line 1460
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_FRONT_BTN_TOP:I

    add-int/lit8 v1, v0, -0x14

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 1462
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_FRONT_BTN_LEFT:I

    add-int/lit8 v1, v0, -0x14

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/16 v0, 0x9

    .line 1464
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    .line 1466
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_BACK_BTN_LEFT:I

    add-int/lit8 v1, v0, -0x14

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/16 v0, 0xa

    .line 1468
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    .line 1472
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_UP_BTN_LEFT:I

    add-int/lit8 v1, v0, -0x14

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x14

    int-to-float p3, v0

    cmpg-float p1, p1, p3

    if-gez p1, :cond_3

    .line 1474
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_UP_BTN_TOP:I

    add-int/lit8 p3, p1, -0x14

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-lez p3, :cond_2

    add-int/2addr p1, p4

    add-int/lit8 p1, p1, 0x14

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    const/16 p1, 0xb

    .line 1476
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    .line 1478
    :cond_2
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_DOWN_BTN_TOP:I

    add-int/lit8 p3, p1, -0x14

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-lez p3, :cond_3

    add-int/2addr p1, p4

    add-int/lit8 p1, p1, 0x14

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    const/16 p1, 0xc

    .line 1480
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    :cond_3
    return-void
.end method

.method private checkPsnSmallLeg(FFII)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "buttonWidth",
            "buttonHeight"
        }
    .end annotation

    .line 1522
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldSmallLegMove:Z

    const/16 v1, 0x19

    if-eqz v0, :cond_0

    .line 1523
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1527
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_LEFT:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    const/16 v3, 0x14

    if-lez v2, :cond_1

    add-int/2addr v0, p3

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_TOP:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    add-int/2addr v0, p4

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    const/16 p1, 0x13

    .line 1531
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1534
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_LEFT:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    add-int/2addr v0, p3

    add-int/2addr v0, v3

    int-to-float p3, v0

    cmpg-float p3, p1, p3

    if-gez p3, :cond_2

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_TOP:I

    add-int/lit8 v0, p3, -0x14

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    add-int/2addr p3, p4

    add-int/2addr p3, v3

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_2

    .line 1538
    iput v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1542
    :cond_2
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    sub-float v0, p3, p4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    cmpg-float v0, p1, p3

    if-gez v0, :cond_3

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    add-float v2, v0, p4

    cmpg-float v2, p2, v2

    if-gez v2, :cond_3

    cmpl-float v2, p2, v0

    if-lez v2, :cond_3

    sub-float v2, p1, p3

    sub-float p3, p1, p3

    mul-float/2addr v2, p3

    sub-float p3, v0, p2

    sub-float/2addr v0, p2

    mul-float/2addr p3, v0

    add-float/2addr v2, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p4, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p3, v0

    mul-float/2addr p4, p3

    cmpl-float p3, v2, p4

    if-ltz p3, :cond_3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    sub-float p4, p1, p3

    sub-float p3, p1, p3

    mul-float/2addr p4, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    sub-float v0, p3, p2

    sub-float/2addr p3, p2

    mul-float/2addr v0, p3

    add-float/2addr p4, v0

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p2, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p3, v0

    mul-float/2addr p2, p3

    cmpg-float p2, p4, p2

    if-gtz p2, :cond_3

    .line 1545
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    .line 1546
    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p3

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegAngleRemain:F

    float-to-double p3, p3

    sub-double/2addr p1, p3

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    .line 1547
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegSweepAngle:F

    float-to-double v0, v0

    div-double/2addr p1, v0

    mul-double/2addr p1, p3

    double-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbSmallLegProgress:F

    .line 1548
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbSmallLegProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    const/4 p1, 0x1

    .line 1549
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldSmallLegMove:Z

    .line 1550
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_3
    return-void
.end method

.method private checkRearLegTitle(FFII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "buttonWidth",
            "buttonHeight"
        }
    .end annotation

    .line 1591
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldCushionMove:Z

    const/16 v1, 0x18

    if-eqz v0, :cond_0

    .line 1592
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1596
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_UP_TOP:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_UP_LEFT:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 p1, 0x7

    .line 1600
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1604
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_DOWN_TOP:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x14

    int-to-float p4, v0

    cmpg-float p2, p2, p4

    if-gez p2, :cond_2

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_DOWN_LEFT:I

    add-int/lit8 p4, p2, -0x14

    int-to-float p4, p4

    cmpl-float p4, p1, p4

    if-lez p4, :cond_2

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x14

    int-to-float p2, p2

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    const/16 p1, 0x8

    .line 1608
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1612
    :cond_2
    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorStartX:F

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_3

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorEndX:F

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_3

    .line 1613
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    const/high16 p2, 0x42c80000    # 100.0f

    .line 1614
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorStartX:F

    sub-float p1, p3, p1

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorEndX:F

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbCushionProgress:F

    .line 1615
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbCushionProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    const/4 p1, 0x1

    .line 1616
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldCushionMove:Z

    .line 1617
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_3
    return-void
.end method

.method private checkRearSmallLeg(FFII)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "buttonWidth",
            "buttonHeight"
        }
    .end annotation

    .line 1556
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldSmallLegMove:Z

    const/16 v1, 0x19

    if-eqz v0, :cond_0

    .line 1557
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1561
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_LEFT:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    const/16 v3, 0x14

    if-lez v2, :cond_1

    add-int/2addr v0, p3

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_TOP:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    add-int/2addr v0, p4

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    const/16 p1, 0x13

    .line 1565
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1568
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_LEFT:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    add-int/2addr v0, p3

    add-int/2addr v0, v3

    int-to-float p3, v0

    cmpg-float p3, p1, p3

    if-gez p3, :cond_2

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_TOP:I

    add-int/lit8 v0, p3, -0x14

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    add-int/2addr p3, p4

    add-int/2addr p3, v3

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_2

    .line 1572
    iput v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1576
    :cond_2
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    sub-float v0, p3, p4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    cmpg-float v0, p1, p3

    if-gez v0, :cond_3

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    add-float v2, v0, p4

    cmpg-float v2, p2, v2

    if-gez v2, :cond_3

    cmpl-float v2, p2, v0

    if-lez v2, :cond_3

    sub-float v2, p1, p3

    sub-float p3, p1, p3

    mul-float/2addr v2, p3

    sub-float p3, v0, p2

    sub-float/2addr v0, p2

    mul-float/2addr p3, v0

    add-float/2addr v2, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p4, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p3, v0

    mul-float/2addr p4, p3

    cmpl-float p3, v2, p4

    if-ltz p3, :cond_3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    sub-float p4, p1, p3

    sub-float p3, p1, p3

    mul-float/2addr p4, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    sub-float v0, p3, p2

    sub-float/2addr p3, p2

    mul-float/2addr v0, p3

    add-float/2addr p4, v0

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p2, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p3, v0

    mul-float/2addr p2, p3

    cmpg-float p2, p4, p2

    if-gtz p2, :cond_3

    .line 1579
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    .line 1580
    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p3

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegAngleRemain:F

    float-to-double p3, p3

    sub-double/2addr p1, p3

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    .line 1581
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegSweepAngle:F

    float-to-double v0, v0

    div-double/2addr p1, v0

    mul-double/2addr p1, p3

    double-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbSmallLegProgress:F

    .line 1582
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbSmallLegProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    const/4 p1, 0x1

    .line 1583
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldSmallLegMove:Z

    .line 1584
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_3
    return-void
.end method

.method private checkSliderUpAction()V
    .locals 3

    .line 1644
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHorMove:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1645
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHorMove:Z

    .line 1646
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mShouldSendHorPos:Z

    goto :goto_0

    .line 1647
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldVerMove:Z

    if-eqz v0, :cond_1

    .line 1648
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldVerMove:Z

    .line 1649
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mShouldSendVerPos:Z

    goto :goto_0

    .line 1650
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldTiltMove:Z

    if-eqz v0, :cond_2

    .line 1651
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldTiltMove:Z

    .line 1652
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mShouldSendTiltPos:Z

    goto :goto_0

    .line 1653
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldCushionMove:Z

    if-eqz v0, :cond_3

    .line 1654
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldCushionMove:Z

    .line 1655
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mShouldSendCushionPos:Z

    goto :goto_0

    .line 1656
    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldSmallLegMove:Z

    if-eqz v0, :cond_4

    .line 1657
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldSmallLegMove:Z

    .line 1658
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mShouldSendSmallLegPos:Z

    goto :goto_0

    .line 1659
    :cond_4
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHeadVerMove:Z

    if-eqz v0, :cond_5

    .line 1660
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHeadVerMove:Z

    .line 1661
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mShouldSendHeadVerPos:Z

    goto :goto_0

    .line 1662
    :cond_5
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHeadHorMove:Z

    if-eqz v0, :cond_6

    .line 1663
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHeadHorMove:Z

    .line 1664
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mShouldSendHeadHorPos:Z

    :cond_6
    :goto_0
    return-void
.end method

.method private checkThumbFrontBack(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1747
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorStartX:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorEndX:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorY:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p1, v0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorY:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 1748
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHorMove:Z

    :cond_0
    return-void
.end method

.method private checkThumbHeadRestHor(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1873
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorStartX:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorEndX:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorY:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p1, v0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorY:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 1874
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHeadHorMove:Z

    :cond_0
    return-void
.end method

.method private checkThumbHeadRestVer(FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1857
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerEndY:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerStartY:F

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerX:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p2, v0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerX:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p2, v0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 1858
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHeadVerMove:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkThumbMove(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1670
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_CHAIR:I

    if-ne v0, v1, :cond_0

    .line 1671
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkThumbFrontBack(FF)V

    .line 1672
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkThumbTilt(FF)Z

    .line 1673
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkThumbUpDown(FF)Z

    .line 1675
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_Front_Back_Chair:I

    if-ne v0, v1, :cond_1

    .line 1676
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkThumbFrontBack(FF)V

    .line 1677
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkThumbTilt(FF)Z

    .line 1679
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_Tilt_Chair:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1681
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkTrdThumbTilt(FF)Z

    .line 1684
    :cond_2
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_CUSHION:I

    if-ne v0, v1, :cond_3

    .line 1685
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkDrvThumbCushion(FF)V

    .line 1688
    :cond_3
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_PSN_SMALL_LEG:I

    if-ne v0, v1, :cond_4

    .line 1689
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkThumbPsnSmallLeg(FF)V

    .line 1691
    :cond_4
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_HEADREST:I

    if-ne v0, v1, :cond_5

    .line 1692
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkThumbHeadRestVer(FF)Z

    .line 1693
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkThumbHeadRestHor(FF)V

    .line 1695
    :cond_5
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_TRD_HEADREST:I

    if-ne v0, v1, :cond_6

    .line 1696
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkThumbHeadRestVer(FF)Z

    .line 1699
    :cond_6
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_FORTH_LEG_CUSHION:I

    if-ne v0, v1, :cond_7

    .line 1700
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkThumbRearSmallLeg(FF)V

    .line 1701
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkThumbRearLegTitle(FF)V

    .line 1703
    :cond_7
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_REAR_SMALL_LEG:I

    if-ne v0, v1, :cond_8

    .line 1704
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkThumbRearSmallLeg(FF)V

    :cond_8
    return-void
.end method

.method private checkThumbPsnSmallLeg(FF)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1835
    iget v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    float-to-double v1, v1

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v3, v3

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbStartAngle:F

    const/high16 v6, 0x42b40000    # 90.0f

    sub-float/2addr v5, v6

    float-to-double v7, v5

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v9

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v3, v7

    sub-double/2addr v1, v3

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v3, v3

    add-double/2addr v1, v3

    .line 1836
    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    float-to-double v3, v3

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v7, v5

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbStartAngle:F

    sub-float/2addr v5, v6

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbSweepAngle:F

    add-float/2addr v5, v13

    float-to-double v13, v5

    mul-double/2addr v13, v9

    div-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v7, v13

    sub-double/2addr v3, v7

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v7, v5

    sub-double/2addr v3, v7

    .line 1837
    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    float-to-double v7, v5

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v13, v5

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbStartAngle:F

    sub-float/2addr v5, v6

    move-wide/from16 v16, v7

    float-to-double v6, v5

    mul-double/2addr v6, v9

    div-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v13, v5

    add-double v7, v16, v13

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v5, v5

    add-double/2addr v7, v5

    .line 1838
    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    float-to-double v5, v5

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v13, v13

    iget v15, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbStartAngle:F

    const/high16 v16, 0x42b40000    # 90.0f

    sub-float v15, v15, v16

    iget v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbSweepAngle:F

    add-float/2addr v15, v11

    float-to-double v11, v15

    mul-double/2addr v11, v9

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v13, v9

    add-double/2addr v5, v13

    iget v9, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v9, v9

    sub-double/2addr v5, v9

    move/from16 v9, p1

    float-to-double v9, v9

    cmpg-double v1, v9, v1

    if-gtz v1, :cond_0

    cmpl-double v1, v9, v3

    if-ltz v1, :cond_0

    move/from16 v1, p2

    float-to-double v1, v1

    cmpg-double v3, v1, v7

    if-gtz v3, :cond_0

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    .line 1840
    iput-boolean v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldSmallLegMove:Z

    :cond_0
    return-void
.end method

.method private checkThumbRearLegTitle(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1909
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearThumbCushionHorStartX:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearThumbCushionHorEndX:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearThumbCushionHorY:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p1, v0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearThumbCushionHorY:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 1910
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldCushionMove:Z

    :cond_0
    return-void
.end method

.method private checkThumbRearSmallLeg(FF)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1887
    iget v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    float-to-double v1, v1

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v3, v3

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbStartAngle:F

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v7

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v3, v3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    add-double/2addr v1, v3

    .line 1888
    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    float-to-double v5, v5

    iget v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v11, v11

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbStartAngle:F

    iget v14, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbSweepAngle:F

    add-float/2addr v13, v14

    float-to-double v13, v13

    mul-double/2addr v13, v7

    div-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v5, v11

    iget v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v11, v11

    sub-double/2addr v5, v11

    sub-double/2addr v5, v3

    .line 1889
    iget v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    float-to-double v11, v11

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v13, v13

    iget v15, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbStartAngle:F

    float-to-double v3, v15

    mul-double/2addr v3, v7

    div-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v13, v3

    add-double/2addr v11, v13

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v3, v3

    add-double/2addr v11, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    add-double/2addr v11, v3

    .line 1890
    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    float-to-double v3, v3

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v13, v13

    iget v15, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbStartAngle:F

    iget v9, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbSweepAngle:F

    add-float/2addr v15, v9

    float-to-double v9, v15

    mul-double/2addr v9, v7

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v13, v7

    add-double/2addr v3, v13

    iget v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v7, v7

    sub-double/2addr v3, v7

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    sub-double/2addr v3, v7

    move/from16 v7, p1

    float-to-double v7, v7

    cmpg-double v1, v7, v1

    if-gtz v1, :cond_0

    cmpl-double v1, v7, v5

    if-ltz v1, :cond_0

    move/from16 v1, p2

    float-to-double v1, v1

    cmpg-double v5, v1, v11

    if-gtz v5, :cond_0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    .line 1892
    iput-boolean v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldSmallLegMove:Z

    :cond_0
    return-void
.end method

.method private checkThumbTilt(FF)Z
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1761
    iget v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v1, v1

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbStartAngle:F

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    float-to-double v3, v3

    add-double/2addr v1, v3

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v3, v3

    sub-double/2addr v1, v3

    .line 1762
    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v3, v3

    iget v9, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbStartAngle:F

    iget v10, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbSweepAngle:F

    add-float/2addr v9, v10

    float-to-double v9, v9

    mul-double/2addr v9, v5

    div-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v3, v9

    iget v9, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    float-to-double v9, v9

    add-double/2addr v3, v9

    iget v9, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v9, v9

    add-double/2addr v3, v9

    .line 1763
    iget v9, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    float-to-double v9, v9

    iget v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v11, v11

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbStartAngle:F

    float-to-double v13, v13

    mul-double/2addr v13, v5

    div-double/2addr v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    iget v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v11, v11

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    sub-double/2addr v9, v11

    .line 1764
    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    float-to-double v13, v13

    iget v15, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v11, v15

    iget v15, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbStartAngle:F

    iget v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbSweepAngle:F

    add-float/2addr v15, v7

    float-to-double v7, v15

    mul-double/2addr v7, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v11, v5

    add-double/2addr v13, v11

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v5, v5

    add-double/2addr v13, v5

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    add-double/2addr v13, v5

    move/from16 v5, p1

    float-to-double v5, v5

    cmpl-double v1, v5, v1

    if-ltz v1, :cond_0

    cmpg-double v1, v5, v3

    if-gtz v1, :cond_0

    move/from16 v1, p2

    float-to-double v1, v1

    cmpl-double v3, v1, v9

    if-ltz v3, :cond_0

    cmpg-double v1, v1, v13

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    .line 1766
    iput-boolean v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldTiltMove:Z

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkThumbUpDown(FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1797
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerEndY:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerStartY:F

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerX:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p2, v0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerX:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p2, v0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 1798
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldVerMove:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkTitle(FFII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "buttonWidth",
            "buttonHeight"
        }
    .end annotation

    .line 1281
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldTiltMove:Z

    const/16 v1, 0x17

    if-eqz v0, :cond_0

    .line 1282
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1285
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_LEFT:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_TOP:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    const/4 p1, 0x5

    .line 1289
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1292
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_LEFT:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x14

    int-to-float p3, v0

    cmpg-float p3, p1, p3

    if-gez p3, :cond_2

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_TOP:I

    add-int/lit8 v0, p3, -0x14

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, 0x14

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_2

    const/4 p1, 0x6

    .line 1296
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1299
    :cond_2
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    cmpl-float p4, p1, p3

    if-lez p4, :cond_3

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    add-float v0, p3, p4

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    cmpg-float v2, p2, v0

    if-gez v2, :cond_3

    sub-float v2, v0, p4

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    sub-float v2, p1, p3

    sub-float p3, p1, p3

    mul-float/2addr v2, p3

    sub-float p3, v0, p2

    sub-float/2addr v0, p2

    mul-float/2addr p3, v0

    add-float/2addr v2, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p4, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p3, v0

    mul-float/2addr p4, p3

    cmpl-float p3, v2, p4

    if-ltz p3, :cond_3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    sub-float p4, p1, p3

    sub-float p3, p1, p3

    mul-float/2addr p4, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    sub-float v0, p3, p2

    sub-float/2addr p3, p2

    mul-float/2addr v0, p3

    add-float/2addr p4, v0

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p2, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p3, v0

    mul-float/2addr p2, p3

    cmpg-float p2, p4, p2

    if-gtz p2, :cond_3

    .line 1302
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    .line 1303
    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p3

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltAngleRemain:F

    float-to-double p3, p3

    sub-double/2addr p1, p3

    .line 1304
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    float-to-double p3, p3

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, p3

    sub-double/2addr p3, p1

    double-to-int p1, p3

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbTiltProgress:F

    .line 1305
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbTiltProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    const/4 p1, 0x1

    .line 1306
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldTiltMove:Z

    .line 1307
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_3
    return-void
.end method

.method private checkTrdThumbTilt(FF)Z
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1773
    iget v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v1, v1

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbStartAngle:F

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    float-to-double v3, v3

    add-double/2addr v1, v3

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v3, v3

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    sub-double/2addr v1, v3

    .line 1774
    iget v9, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v9, v9

    iget v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbStartAngle:F

    iget v12, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbSweepAngle:F

    add-float/2addr v11, v12

    float-to-double v11, v11

    mul-double/2addr v11, v5

    div-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    iget v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    float-to-double v11, v11

    add-double/2addr v9, v11

    iget v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v11, v11

    add-double/2addr v9, v11

    add-double/2addr v9, v3

    .line 1775
    iget v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    float-to-double v11, v11

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v13, v13

    iget v15, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbStartAngle:F

    float-to-double v3, v15

    mul-double/2addr v3, v5

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v13, v3

    add-double/2addr v11, v13

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v3, v3

    sub-double/2addr v11, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    sub-double/2addr v11, v3

    .line 1776
    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    float-to-double v3, v3

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v13, v13

    iget v15, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbStartAngle:F

    iget v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbSweepAngle:F

    add-float/2addr v15, v7

    float-to-double v7, v15

    mul-double/2addr v7, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v13, v5

    add-double/2addr v3, v13

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v5, v5

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    add-double/2addr v3, v5

    move/from16 v5, p1

    float-to-double v5, v5

    cmpl-double v1, v5, v1

    if-ltz v1, :cond_0

    cmpg-double v1, v5, v9

    if-gtz v1, :cond_0

    move/from16 v1, p2

    float-to-double v1, v1

    cmpl-double v5, v1, v11

    if-ltz v5, :cond_0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    .line 1778
    iput-boolean v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldTiltMove:Z

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkTrdTitle(FFII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "buttonWidth",
            "buttonHeight"
        }
    .end annotation

    .line 1312
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldTiltMove:Z

    const/16 v1, 0x17

    if-eqz v0, :cond_0

    .line 1313
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1316
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_LEFT:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TRD_TILT_BTN_TOP:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    const/4 p1, 0x5

    .line 1320
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1323
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_LEFT:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x14

    int-to-float p3, v0

    cmpg-float p3, p1, p3

    if-gez p3, :cond_2

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TRD_TILT_BTN_TOP:I

    add-int/lit8 v0, p3, -0x14

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, 0x14

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_2

    const/4 p1, 0x6

    .line 1327
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1330
    :cond_2
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    sub-float v0, p3, p4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    add-float/2addr p3, p4

    cmpg-float p3, p1, p3

    if-gez p3, :cond_3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    cmpg-float v0, p2, p3

    if-gez v0, :cond_3

    sub-float/2addr p3, p4

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderWidth:F

    sub-float/2addr p3, p4

    cmpl-float p3, p2, p3

    if-lez p3, :cond_3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    sub-float p4, p1, p3

    sub-float p3, p1, p3

    mul-float/2addr p4, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    sub-float v0, p3, p2

    sub-float/2addr p3, p2

    mul-float/2addr v0, p3

    add-float/2addr p4, v0

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr v0, v2

    mul-float/2addr p3, v0

    cmpl-float p3, p4, p3

    if-ltz p3, :cond_3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    sub-float p4, p1, p3

    sub-float p3, p1, p3

    mul-float/2addr p4, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    sub-float v0, p3, p2

    sub-float/2addr p3, p2

    mul-float/2addr v0, p3

    add-float/2addr p4, v0

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p2, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p3, v0

    mul-float/2addr p2, p3

    cmpg-float p2, p4, p2

    if-gtz p2, :cond_3

    .line 1333
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    .line 1335
    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p3

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltAngleRemain:F

    float-to-double p3, p3

    sub-double/2addr p1, p3

    .line 1336
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    float-to-double p3, p3

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, p3

    sub-double/2addr p3, p1

    double-to-int p1, p3

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbTiltProgress:F

    .line 1337
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbTiltProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    const/4 p1, 0x1

    .line 1338
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldTiltMove:Z

    .line 1339
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_3
    return-void
.end method

.method private checkUpDown(FFII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "buttonWidth",
            "buttonHeight"
        }
    .end annotation

    .line 1375
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldVerMove:Z

    const/16 v1, 0x16

    if-eqz v0, :cond_0

    .line 1376
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1379
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_UP_BTN_LEFT:I

    add-int/lit8 v2, v0, -0x14

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_4

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x14

    int-to-float p3, v0

    cmpg-float p3, p1, p3

    if-gez p3, :cond_4

    .line 1381
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_UP_BTN_TOP:I

    add-int/lit8 v0, p3, -0x14

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, 0x14

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_1

    const/4 p1, 0x3

    .line 1383
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1386
    :cond_1
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_DOWN_TOP:I

    add-int/lit8 v0, p3, -0x14

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, 0x14

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_2

    const/4 p1, 0x4

    .line 1388
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1391
    :cond_2
    iget-boolean p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldVerMove:Z

    if-eqz p3, :cond_3

    .line 1392
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return-void

    .line 1395
    :cond_3
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerStartY:F

    cmpg-float p3, p2, p3

    if-gtz p3, :cond_4

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerEndY:F

    cmpl-float p3, p2, p3

    if-ltz p3, :cond_4

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerX:F

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr p3, p4

    cmpl-float p3, p1, p3

    if-ltz p3, :cond_4

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerX:F

    iget p4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr p3, p4

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_4

    .line 1396
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    const/high16 p1, 0x42c80000    # 100.0f

    .line 1397
    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerStartY:F

    sub-float p2, p3, p2

    mul-float/2addr p2, p1

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerEndY:F

    sub-float/2addr p3, p1

    div-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerProgress:F

    .line 1398
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    const/4 p1, 0x1

    .line 1399
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldVerMove:Z

    .line 1400
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_4
    return-void
.end method

.method private drawChair(Landroid/graphics/Canvas;FF)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "horizontalMove",
            "verticalMove"
        }
    .end annotation

    const/high16 v0, 0x437a0000    # 250.0f

    add-float/2addr p2, v0

    const/high16 v0, 0x43480000    # 200.0f

    add-float/2addr p3, v0

    .line 1048
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drvChairBackWidth:I

    int-to-double v0, v0

    const-wide v2, 0x3fe428f5c28f5c29L    # 0.63

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1049
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drvChairBackHeight:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 1050
    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drvChairCushionWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3ae147ae147aeL    # 0.615

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 1051
    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drvChairCusionHeight:I

    int-to-double v3, v3

    const-wide v5, 0x3fe9eb851eb851ecL    # 0.81

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 1052
    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSupportMove:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-wide v4, 0x4051800000000000L    # 70.0

    .line 1053
    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    int-to-double v6, v6

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v5, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1054
    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLegVerPosition:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    const/high16 v4, 0x41a00000    # 20.0f

    div-float v4, v6, v4

    .line 1055
    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSmallLegPosition:I

    move v10, v5

    move v5, v4

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v5

    .line 1058
    :goto_0
    iget-boolean v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mShowCushion:Z

    if-eqz v6, :cond_1

    .line 1059
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v6, v5, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1060
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1061
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1062
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairCushion:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1065
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v4, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1066
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1067
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1068
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairHead:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1070
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1071
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1072
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1073
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1076
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mShowSmallLeg:Z

    .line 1083
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1084
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1085
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairSet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawCushionControl(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 694
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_UP_BTN_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_UP_BTN_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 695
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 696
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLegVerPosition:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 699
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawDrvCushionSlider(Landroid/graphics/Canvas;)V

    .line 701
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f110358

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 702
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionX:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    sub-float/2addr v2, v3

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionY:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float/2addr v5, v3

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v5, v3

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 704
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 706
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_DOWN_BTN_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_DOWN_BTN_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 707
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 708
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLegVerPosition:I

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0, v4}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawDrvCushionSlider(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 610
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 611
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_UP_BTN_LEFT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionX:F

    .line 612
    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_DOWN_BTN_TOP:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionY:F

    .line 613
    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LEG_UP_BTN_TOP:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    sub-float v1, v2, v3

    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    sub-float v4, v0, v1

    sub-float v5, v2, v1

    add-float v6, v0, v1

    add-float v7, v2, v1

    .line 615
    iget v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionStartAngle:F

    iget v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionSweepAngle:F

    iget-object v11, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 617
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionX:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    sub-float v3, v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionY:F

    sub-float v4, v2, v1

    add-float v5, v0, v1

    add-float v6, v2, v1

    iget v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionStartAngle:F

    iget v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionSweepAngle:F

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBgSliderPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 619
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionX:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    sub-float v3, v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionY:F

    sub-float v4, v2, v1

    add-float v5, v0, v1

    add-float v6, v2, v1

    iget v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionStartAngle:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionSweepAngle:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mCushionProgress:F

    mul-float/2addr v0, v2

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v8, v0, v11

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRealProcessPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 620
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionStartAngle:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionSweepAngle:F

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbCushionProgress:F

    mul-float/2addr v2, v1

    div-float/2addr v2, v11

    add-float/2addr v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionThumbSweepAngle:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionThumbStartAngle:F

    .line 622
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionX:F

    float-to-double v2, v2

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    float-to-double v4, v4

    float-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v4, v0

    sub-double/2addr v2, v4

    double-to-float v0, v2

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionY:F

    float-to-double v2, v2

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    float-to-double v4, v4

    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionThumbStartAngle:F

    float-to-double v6, v6

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 624
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawLumbarControl(Landroid/graphics/Canvas;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 766
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSupportMove:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 767
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    div-int/2addr v0, v1

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43340000    # 180.0f

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    invoke-virtual {v0, v2, v3, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 771
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_UP_BTN_LEFT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_UP_BTN_TOP:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 772
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    const/16 v0, 0xb

    const/16 v2, 0x32

    const/4 v3, 0x1

    .line 773
    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 775
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_UP_BTN_LEFT:I

    int-to-float v4, v4

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_UP_BTN_TOP:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 776
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 778
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePath:Landroid/graphics/Path;

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x42140000    # 37.0f

    add-float/2addr v4, v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 779
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePath:Landroid/graphics/Path;

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_DOWN_BTN_TOP:I

    iget v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_UP_BTN_TOP:I

    sub-int/2addr v4, v8

    add-int/lit8 v4, v4, -0x25

    int-to-float v4, v4

    invoke-virtual {v0, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 780
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 782
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_UP_BTN_LEFT:I

    int-to-float v4, v4

    iget v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_DOWN_BTN_TOP:I

    int-to-float v8, v8

    invoke-virtual {v0, v4, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 783
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    const/16 v0, 0xc

    const/4 v4, 0x0

    .line 784
    invoke-virtual {p0, v0, v2, v4}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 786
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v8, 0x7f110359

    invoke-static {v8}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v4, v1, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 787
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_VER_SlIDER_LEFT_WITHOUT_BTN:I

    int-to-float v0, v0

    iget v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerX:F

    .line 788
    iget v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_VER_SlIDER_BOTTOM_WITH_BTN:I

    int-to-float v9, v9

    iput v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerStartY:F

    .line 789
    iget v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_VER_SlIDER_TOP_WITHOUT_BTN:I

    iget v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->MID_DOWN_BTN_SIZE:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerEndY:F

    .line 790
    iget-object v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v10, 0x42480000    # 50.0f

    sub-float/2addr v0, v10

    iget-object v11, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v0, v11

    iget v11, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_DOWN_TOP:I

    int-to-float v12, v11

    iget v13, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_UP_BTN_TOP:I

    sub-int/2addr v11, v13

    int-to-float v11, v11

    iget v13, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    mul-float/2addr v13, v5

    sub-float/2addr v11, v13

    div-float/2addr v11, v5

    sub-float/2addr v12, v11

    iget-object v11, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    const v13, 0x3eb33333    # 0.35f

    mul-float/2addr v11, v13

    sub-float/2addr v12, v11

    invoke-virtual {v9, v0, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 791
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 792
    invoke-static {v8}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 794
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v8, 0x42b40000    # 90.0f

    iget v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    invoke-virtual {v0, v8, v9, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 795
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_FRONT_BTN_LEFT:I

    int-to-float v8, v8

    iget v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_FRONT_BTN_TOP:I

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 796
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    const/16 v0, 0x9

    .line 797
    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 799
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_FRONT_BTN_LEFT:I

    int-to-float v3, v3

    iget v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_FRONT_BTN_TOP:I

    int-to-float v8, v8

    iget v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    add-float/2addr v8, v9

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 800
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 801
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 802
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v6

    invoke-virtual {v0, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 803
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_BACK_BTN_LEFT:I

    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_FRONT_BTN_LEFT:I

    sub-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x25

    int-to-float v3, v3

    invoke-virtual {v0, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 804
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 806
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    invoke-virtual {v0, v3, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 807
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_BACK_BTN_LEFT:I

    int-to-float v3, v3

    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_LUMBAR_FRONT_BTN_TOP:I

    int-to-float v6, v6

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 808
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    const/16 v0, 0xa

    .line 809
    invoke-virtual {p0, v0, v2, v4}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 811
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f110357

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v1, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 812
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorEndX:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    sub-float/2addr v3, v1

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorY:F

    add-float/2addr v3, v10

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 813
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 814
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPsnLegSlider(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 630
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_LEFT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    .line 631
    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_TOP:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    .line 632
    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_TOP:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    sub-float v5, v0, v3

    sub-float v6, v2, v3

    add-float v7, v0, v3

    add-float v8, v2, v3

    .line 634
    iget v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegStartAngle:F

    iget v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegSweepAngle:F

    iget-object v12, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 636
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    sub-float v3, v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    sub-float v4, v2, v1

    add-float v5, v0, v1

    add-float v6, v2, v1

    iget v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegStartAngle:F

    iget v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegSweepAngle:F

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBgSliderPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 638
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    sub-float v3, v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    sub-float v4, v2, v1

    add-float v5, v0, v1

    add-float v6, v2, v1

    iget v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegStartAngle:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegSweepAngle:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSmallLegProgress:F

    mul-float/2addr v0, v2

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v8, v0, v11

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRealProcessPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 639
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegStartAngle:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegSweepAngle:F

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbSmallLegProgress:F

    mul-float/2addr v2, v1

    div-float/2addr v2, v11

    add-float/2addr v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbSweepAngle:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbStartAngle:F

    .line 641
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    float-to-double v2, v2

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v4, v4

    float-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v4, v0

    sub-double/2addr v2, v4

    double-to-float v0, v2

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    float-to-double v2, v2

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v4, v4

    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbStartAngle:F

    float-to-double v6, v6

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 643
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawPsnSmallLegControl(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 713
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 715
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 716
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSmallLegPosition:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 719
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawPsnLegSlider(Landroid/graphics/Canvas;)V

    .line 721
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f110358

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 722
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_LEFT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    sub-float/2addr v3, v4

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_TOP:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    const/high16 v4, 0x42dc0000    # 110.0f

    add-float/2addr v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 724
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 726
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v3, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 727
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_LEFT:I

    int-to-float v1, v1

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_TOP:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 729
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 730
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSmallLegPosition:I

    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawRearSmallLegControl(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 822
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 824
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 825
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSmallLegPosition:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 828
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawRearSmallLegSlider(Landroid/graphics/Canvas;)V

    .line 830
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f110358

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 831
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x41f00000    # 30.0f

    add-float/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_TOP:I

    int-to-float v4, v4

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const v5, 0x43570001    # 215.00002f

    add-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 832
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 833
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 835
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v3, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 836
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_LEFT:I

    int-to-float v1, v1

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_TOP:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 838
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 839
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSmallLegPosition:I

    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawRearSmallLegSlider(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 649
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_LEFT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    .line 650
    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_UP_TOP:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    .line 651
    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SMALL_LEG_DOWN_TOP:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    sub-float v5, v0, v3

    sub-float v6, v2, v3

    add-float v7, v0, v3

    add-float v8, v2, v3

    .line 653
    iget v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegStartAngle:F

    iget v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegSweepAngle:F

    iget-object v12, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 655
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    sub-float v3, v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    sub-float v4, v2, v1

    add-float v5, v0, v1

    add-float v6, v2, v1

    iget v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegStartAngle:F

    iget v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegSweepAngle:F

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBgSliderPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 657
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    sub-float v3, v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    sub-float v4, v2, v1

    add-float v5, v0, v1

    add-float v6, v2, v1

    iget v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegStartAngle:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegSweepAngle:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSmallLegProgress:F

    mul-float/2addr v0, v2

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v8, v0, v11

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRealProcessPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 658
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegStartAngle:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegSweepAngle:F

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbSmallLegProgress:F

    mul-float/2addr v2, v1

    div-float/2addr v2, v11

    add-float/2addr v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbSweepAngle:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbStartAngle:F

    .line 660
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    float-to-double v2, v2

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v4, v4

    float-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v4, v0

    sub-double/2addr v2, v4

    double-to-float v0, v2

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    float-to-double v2, v2

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v4, v4

    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegThumbStartAngle:F

    float-to-double v6, v6

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 661
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 662
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawRearVerLegSlider(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/4 v0, 0x0

    .line 667
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 668
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_UP_LEFT:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->MID_DOWN_BTN_SIZE:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x32

    int-to-float v4, v0

    iput v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorEndX:F

    .line 669
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_DOWN_LEFT:I

    add-int/lit8 v0, v0, -0x32

    int-to-float v2, v0

    iput v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorStartX:F

    .line 670
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_UP_TOP:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    add-float v5, v0, v1

    iput v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionY:F

    .line 672
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mStrokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 674
    iget v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorStartX:F

    iget v11, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionY:F

    iget v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorEndX:F

    iget-object v12, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBgSliderPaint:Landroid/graphics/Paint;

    move-object v7, p1

    move v9, v11

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 675
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorStartX:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorEndX:F

    sub-float v6, v1, v0

    .line 677
    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionY:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mCushionProgress:F

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v0, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v0, v8

    mul-float/2addr v0, v6

    sub-float v3, v1, v0

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionY:F

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRealProcessPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 678
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorStartX:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbCushionProgress:F

    mul-float/2addr v1, v7

    div-float/2addr v1, v8

    mul-float/2addr v6, v1

    sub-float/2addr v0, v6

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearThumbCushionHorStartX:F

    .line 679
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearThumbCushionHorEndX:F

    .line 680
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionY:F

    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearThumbCushionHorY:F

    .line 681
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorY:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 682
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 683
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSeatControl(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 849
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 850
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_FRONT_BTN_TOP:I

    int-to-float v1, v1

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 851
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 852
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHorPosition:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 854
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHorProgress:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorProgress:F

    invoke-direct {p0, p1, v0, v3}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatHorSlider(Landroid/graphics/Canvas;FF)V

    .line 856
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x7f110357

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v0, v4, v6, v7, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 857
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorEndX:F

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    sub-float/2addr v5, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorY:F

    const/high16 v9, 0x42480000    # 50.0f

    add-float/2addr v5, v9

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 858
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 859
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 861
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v4, v3, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 862
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_BACK_BTN_LEFT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_BACK_BTN_TOP:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 863
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 864
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHorPosition:I

    invoke-virtual {p0, v7, v0, v6}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 866
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v0, v4, v3, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 867
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_UP_BTN_LEFT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_UP_BTN_TOP:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 868
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 869
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mVerPosition:I

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 871
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mVerProgress:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerProgress:F

    invoke-direct {p0, p1, v0, v3}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatVerSlider(Landroid/graphics/Canvas;FF)V

    .line 873
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x7f110359

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v6, v7, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 874
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerX:F

    sub-float/2addr v4, v9

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v4, v9

    iget v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_DOWN_TOP:I

    int-to-float v10, v9

    iget v11, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_UP_BTN_TOP:I

    sub-int/2addr v9, v11

    int-to-float v9, v9

    iget v11, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    mul-float/2addr v11, v8

    sub-float/2addr v9, v11

    div-float/2addr v9, v8

    sub-float/2addr v10, v9

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    const v11, 0x3eb33333    # 0.35f

    mul-float/2addr v9, v11

    sub-float/2addr v10, v9

    invoke-virtual {v0, v4, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 875
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 876
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 878
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_UP_BTN_LEFT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_DOWN_TOP:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 879
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 880
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mVerPosition:I

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v0, v6}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 882
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    invoke-virtual {v0, v2, v3, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 883
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_LEFT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_TOP:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 884
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 885
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v6}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 887
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltProgress:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbTiltProgress:F

    invoke-direct {p0, p1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatTiltSlider(Landroid/graphics/Canvas;FF)V

    .line 890
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f110358

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v6, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 891
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    div-float/2addr v6, v8

    sub-float/2addr v4, v6

    const/high16 v6, 0x428c0000    # 70.0f

    sub-float/2addr v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 892
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 893
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 895
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    invoke-virtual {v0, v5, v2, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 896
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_LEFT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_TOP:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 897
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 898
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSeatControlFrontBack(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 904
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_FRONT_BTN_TOP:I

    int-to-float v1, v1

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 905
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 906
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHorPosition:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 908
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHorProgress:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorProgress:F

    invoke-direct {p0, p1, v0, v3}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatHorSlider(Landroid/graphics/Canvas;FF)V

    .line 910
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x7f110357

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v0, v4, v6, v7, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 911
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorEndX:F

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    sub-float/2addr v5, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorY:F

    const/high16 v9, 0x42480000    # 50.0f

    add-float/2addr v5, v9

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 912
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 913
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 915
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v4, v3, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 916
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_BACK_BTN_LEFT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_BACK_BTN_TOP:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 917
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 918
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHorPosition:I

    invoke-virtual {p0, v7, v0, v6}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 920
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    invoke-virtual {v0, v2, v3, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 921
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_LEFT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_TOP:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 922
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 923
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v6}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 925
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltProgress:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbTiltProgress:F

    invoke-direct {p0, p1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatTiltSlider(Landroid/graphics/Canvas;FF)V

    .line 927
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f110358

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v6, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 928
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    div-float/2addr v6, v8

    sub-float/2addr v4, v6

    const/high16 v6, 0x428c0000    # 70.0f

    sub-float/2addr v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 929
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 930
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 932
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    invoke-virtual {v0, v5, v2, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 933
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_LEFT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_TOP:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 934
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 935
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSeatControlTitle(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 940
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 941
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 942
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 943
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 945
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltProgress:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbTiltProgress:F

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatTiltSlider(Landroid/graphics/Canvas;FF)V

    .line 947
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f110358

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 948
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    const/high16 v5, 0x428c0000    # 70.0f

    sub-float/2addr v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 949
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 950
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 952
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    invoke-virtual {v0, v3, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 953
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 954
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 955
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSeatHeadRest(Landroid/graphics/Canvas;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 987
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_UP_BTN_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_UP_BTN_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 988
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 989
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mVerPosition:I

    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 991
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadVerProgress:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHeadVerProgress:F

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatVerSlider(Landroid/graphics/Canvas;FF)V

    .line 993
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f110359

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 994
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerX:F

    const/high16 v4, 0x42480000    # 50.0f

    sub-float/2addr v3, v4

    iget-object v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v3, v7

    iget v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_DOWN_TOP:I

    int-to-float v8, v7

    iget v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_UP_BTN_TOP:I

    sub-int/2addr v7, v9

    int-to-float v7, v7

    iget v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    sub-float/2addr v7, v9

    div-float/2addr v7, v10

    sub-float/2addr v8, v7

    iget-object v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    const v9, 0x3eb33333    # 0.35f

    mul-float/2addr v7, v9

    sub-float/2addr v8, v7

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 995
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 996
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 998
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_DOWN_BTN_LEFT:I

    int-to-float v1, v1

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_DOWN_BTN_TOP:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 999
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1000
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mVerPosition:I

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1002
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0, v3, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1003
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_FRONT_BTN_TOP:I

    int-to-float v1, v1

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1004
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1005
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1007
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadHorProgress:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHeadHorProgress:F

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatHorSlider(Landroid/graphics/Canvas;FF)V

    .line 1009
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f110357

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v5, v6, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1010
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorEndX:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    sub-float/2addr v3, v2

    div-float/2addr v3, v10

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorY:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1011
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1012
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1014
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1015
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_BACK_BTN_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_BACK_BTN_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1016
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1017
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSeatHorSlider(Landroid/graphics/Canvas;FF)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "realSliderProgress",
            "thumbProcess"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/4 v0, 0x0

    .line 529
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 530
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HORZ_SlIDER_LEFT_WITHOUT_BTN:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->MID_DOWN_BTN_SIZE:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iput v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorEndX:F

    .line 531
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HORZ_SlIDER_RIGHT_WITH_BTN:I

    int-to-float v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    .line 532
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HORZ_SlIDER_TOP_WITHOUT_BTN:I

    int-to-float v0, v0

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    add-float v4, v0, v2

    iput v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorY:F

    .line 534
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mStrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 536
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorY:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorEndX:F

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBgSliderPaint:Landroid/graphics/Paint;

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 537
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorEndX:F

    sub-float v6, v1, v0

    .line 539
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HORZ_SlIDER_TOP_WITHOUT_BTN:I

    int-to-float v2, v0

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    add-float/2addr v2, v3

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v4, p2, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v4, v8

    mul-float/2addr v4, v6

    sub-float v4, v1, v4

    int-to-float v0, v0

    add-float v5, v0, v3

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRealProcessPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v4

    move v4, v5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 541
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    mul-float v1, p3, v7

    div-float/2addr v1, v8

    mul-float/2addr v6, v1

    sub-float/2addr v0, v6

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorStartX:F

    .line 542
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorEndX:F

    .line 543
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HORZ_SlIDER_TOP_WITHOUT_BTN:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorY:F

    .line 544
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 545
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 546
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSeatTiltSlider(Landroid/graphics/Canvas;FF)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "realSliderProgress",
            "thumbProcess"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v10, p1

    .line 572
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 573
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 574
    iget v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_LEFT:I

    int-to-float v1, v1

    iget v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    .line 575
    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_TOP:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iput v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    .line 576
    iget v4, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_TOP:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    sub-float/2addr v4, v2

    iput v4, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    sub-float v2, v1, v4

    sub-float v5, v3, v4

    add-float v6, v1, v4

    add-float v7, v3, v4

    .line 578
    iget v8, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    iget v9, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    iget-object v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v12

    move-object v9, v11

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 580
    iget v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    iget v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    sub-float v3, v1, v2

    iget v4, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    sub-float v5, v4, v2

    add-float v6, v1, v2

    add-float v7, v4, v2

    iget v8, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    iget v9, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    iget-object v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBgSliderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v12

    move-object v9, v11

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 582
    iget v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    iget v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    sub-float v3, v1, v2

    iget v4, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    sub-float v5, v4, v2

    add-float v6, v1, v2

    add-float v7, v4, v2

    iget v8, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    iget v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v1, v11

    mul-float v1, v1, p2

    const/high16 v12, 0x42c80000    # 100.0f

    div-float v9, v1, v12

    iget-object v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRealProcessPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v14

    move-object v9, v13

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 584
    iget v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    iget v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    mul-float/2addr v2, v11

    mul-float v2, v2, p3

    div-float/2addr v2, v12

    add-float/2addr v1, v2

    iget v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbSweepAngle:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbStartAngle:F

    .line 586
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    float-to-double v3, v3

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v5, v5

    float-to-double v7, v1

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v11

    const-wide v13, 0x4066800000000000L    # 180.0

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v5, v1

    sub-double/2addr v3, v5

    double-to-float v1, v3

    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    float-to-double v3, v3

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v5, v5

    iget v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbStartAngle:F

    float-to-double v7, v7

    mul-double/2addr v7, v11

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 587
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 588
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSeatTrdHeadRest(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1022
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1023
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_UP_BTN_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_UP_BTN_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1024
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1025
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mVerPosition:I

    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1027
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadVerProgress:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHeadVerProgress:F

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatVerSlider(Landroid/graphics/Canvas;FF)V

    .line 1029
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f110359

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1030
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerX:F

    const/high16 v3, 0x42480000    # 50.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_DOWN_TOP:I

    int-to-float v5, v3

    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_SEAT_UP_BTN_TOP:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    sub-float/2addr v3, v6

    div-float/2addr v3, v7

    sub-float/2addr v5, v3

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v6, 0x3eb33333    # 0.35f

    mul-float/2addr v3, v6

    sub-float/2addr v5, v3

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1031
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1032
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1034
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_DOWN_BTN_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_HEADREST_DOWN_BTN_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1035
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1036
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mVerPosition:I

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0, v4}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSeatTrdTiltSlider(Landroid/graphics/Canvas;FF)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "realSliderProgress",
            "thumbProcess"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 595
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    sub-float v3, v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    sub-float v4, v2, v1

    add-float v5, v0, v1

    add-float v6, v2, v1

    iget v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    iget v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 597
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    sub-float v3, v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    sub-float v4, v2, v1

    add-float v5, v0, v1

    add-float v6, v2, v1

    iget v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    iget v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBgSliderPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 599
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    sub-float v3, v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    sub-float v4, v2, v1

    add-float v5, v0, v1

    add-float v6, v2, v1

    iget v7, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float v8, v0, p2

    iget-object v10, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRealProcessPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 601
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    mul-float/2addr v2, v1

    mul-float/2addr v2, p3

    div-float/2addr v2, p2

    add-float/2addr v0, v2

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbSweepAngle:F

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbStartAngle:F

    .line 603
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    float-to-double v1, p3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v3, p3

    float-to-double v5, v0

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v7

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iget p3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v3, p3

    sub-double/2addr v1, v3

    double-to-float p3, v1

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    float-to-double v0, v0

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v2, v2

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltThumbStartAngle:F

    float-to-double v4, v4

    mul-double/2addr v4, v7

    div-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 604
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 605
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSeatVerSlider(Landroid/graphics/Canvas;FF)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "realSliderProgress",
            "thumbProcess"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 551
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 552
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_VER_SlIDER_LEFT_WITHOUT_BTN:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    add-float v3, v0, v1

    iput v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerX:F

    .line 553
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_VER_SlIDER_BOTTOM_WITH_BTN:I

    int-to-float v2, v0

    iput v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerStartY:F

    .line 554
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_VER_SlIDER_TOP_WITHOUT_BTN:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->MID_DOWN_BTN_SIZE:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iput v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerEndY:F

    .line 556
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mStrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 558
    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerX:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerStartY:F

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerEndY:F

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBgSliderPaint:Landroid/graphics/Paint;

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 559
    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerStartY:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerEndY:F

    sub-float v0, v2, v0

    .line 561
    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerX:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v6, v0, v1

    mul-float v0, v6, p2

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v0, v7

    sub-float v4, v2, v0

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRealProcessPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 563
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerX:F

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerX:F

    .line 564
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerStartY:F

    mul-float/2addr v6, p3

    div-float/2addr v6, v7

    sub-float/2addr v0, v6

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerStartY:F

    .line 565
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerEndY:F

    .line 566
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerX:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerEndY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSecRowChair(Landroid/graphics/Canvas;FF)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "horizontalMove",
            "verticalMove"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1090
    iget v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->secrowChairBackWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3fe570a3d70a3d71L    # 0.67

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 1091
    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->secrowChairBackHeight:I

    int-to-double v3, v3

    const-wide v5, 0x3fe7851eb851eb85L    # 0.735

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 1092
    iget v4, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->secrowChairCushionWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3fcae147ae147ae1L    # 0.21

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 1093
    iget v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->secrowChairCushionHeight:I

    int-to-double v5, v5

    const-wide v7, 0x3fe5eb851eb851ecL    # 0.685

    mul-double/2addr v5, v7

    double-to-int v5, v5

    .line 1094
    iget v6, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLegVerPosition:I

    add-int/lit8 v6, v6, -0x64

    int-to-float v6, v6

    .line 1095
    iget-boolean v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSupportMove:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 1096
    iget v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    int-to-float v7, v7

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getSecRowBackTiltAngle()F

    move-result v9

    .line 1098
    iget v10, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSmallLegPosition:I

    int-to-double v10, v10

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    double-to-float v10, v10

    goto :goto_0

    :cond_0
    move v7, v8

    move v9, v7

    move v10, v9

    .line 1100
    :goto_0
    iget-boolean v11, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mIsSecRowZero:Z

    const/high16 v12, 0x43700000    # 240.0f

    const/high16 v13, 0x43960000    # 300.0f

    const-wide v14, 0x4066800000000000L    # 180.0

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    if-eqz v11, :cond_1

    .line 1102
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    add-float v8, p2, v13

    add-float v11, p3, v12

    invoke-virtual {v7, v8, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1103
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1104
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1106
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v7, v9, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1107
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1108
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1109
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroHeadBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1110
    iget v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadVerPosition:I

    div-int/lit8 v7, v7, 0x5

    int-to-double v12, v7

    move/from16 v18, v6

    float-to-double v6, v9

    mul-double v6, v6, v16

    div-double/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v12, v12, v19

    neg-double v12, v12

    double-to-float v12, v12

    .line 1111
    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadVerPosition:I

    div-int/lit8 v13, v13, 0x5

    int-to-double v14, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v14, v14, v21

    double-to-float v13, v14

    .line 1112
    iget v14, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadHorPosition:I

    div-int/lit8 v14, v14, 0x5

    int-to-double v14, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v14, v14, v21

    neg-double v14, v14

    double-to-float v14, v14

    .line 1113
    iget v15, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadHorPosition:I

    div-int/lit8 v15, v15, 0x5

    move/from16 v21, v4

    move/from16 v22, v5

    int-to-double v4, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    neg-double v4, v4

    double-to-float v4, v4

    .line 1114
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v9, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1115
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v13, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1116
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1117
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v8, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1118
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1119
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroHead:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1121
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v9, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1122
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v8, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1123
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1124
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1126
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v8, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1127
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1128
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowCushion:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1130
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    move/from16 v4, v21

    int-to-float v3, v4

    move/from16 v5, v22

    int-to-float v4, v5

    invoke-virtual {v2, v10, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1131
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    float-to-double v5, v8

    move/from16 v14, v18

    float-to-double v12, v14

    const-wide v14, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v12, v14

    float-to-double v14, v10

    mul-double v14, v14, v16

    const-wide v16, 0x4066800000000000L    # 180.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v12

    sub-double v5, v5, v16

    double-to-float v5, v5

    float-to-double v6, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    double-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1132
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1133
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowControlVerLeg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1135
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v10, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1136
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v8, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1137
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1138
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowSmallLeg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1140
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v8, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1141
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1142
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroFirstControl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :cond_1
    move v14, v6

    .line 1145
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    add-float v11, p2, v13

    add-float v12, p3, v12

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1146
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1147
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1149
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v6, v9, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1150
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v13, 0x41a00000    # 20.0f

    add-float/2addr v13, v11

    const/high16 v15, 0x41700000    # 15.0f

    sub-float v15, v12, v15

    invoke-virtual {v6, v13, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v6, 0x42b40000    # 90.0f

    .line 1151
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1152
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1153
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v8, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadVerPosition:I

    div-int/lit8 v8, v8, 0x4

    move/from16 v18, v14

    int-to-double v13, v8

    move/from16 v22, v5

    float-to-double v5, v6

    mul-double v5, v5, v16

    const-wide v19, 0x4066800000000000L    # 180.0

    div-double v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v13, v13, v23

    double-to-float v8, v13

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadVerPosition:I

    div-int/lit8 v13, v13, 0x4

    int-to-double v13, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v13, v13, v23

    neg-double v13, v13

    double-to-float v13, v13

    invoke-virtual {v7, v8, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1154
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v8, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadHorPosition:I

    div-int/lit8 v8, v8, 0x5

    int-to-double v13, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v13, v13, v23

    neg-double v13, v13

    double-to-float v8, v13

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadHorPosition:I

    div-int/lit8 v13, v13, 0x5

    int-to-double v13, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v13, v5

    neg-double v5, v13

    double-to-float v5, v5

    invoke-virtual {v7, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1155
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1156
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairHead:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1158
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v9, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1159
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1160
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1161
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1163
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1164
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1165
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroCushion:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1167
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v3, v4

    move/from16 v4, v22

    int-to-float v4, v4

    invoke-virtual {v2, v10, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1168
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    float-to-double v5, v11

    move/from16 v7, v18

    float-to-double v7, v7

    const-wide v13, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v7, v13

    const/high16 v9, 0x40a00000    # 5.0f

    add-float/2addr v9, v10

    float-to-double v13, v9

    mul-double v13, v13, v16

    const-wide v15, 0x4066800000000000L    # 180.0

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v7

    sub-double/2addr v5, v15

    double-to-float v5, v5

    move v6, v3

    move v9, v4

    float-to-double v3, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v7, v13

    add-double/2addr v3, v7

    double-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1169
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1170
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowControlVerLeg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1172
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v10, v6, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1173
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1174
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1175
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowSmallLeg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1177
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1178
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1179
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowFirstControl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method private drawSecRowLegTitleControl(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 741
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_UP_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_UP_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 742
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 743
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHorPosition:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 745
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawRearVerLegSlider(Landroid/graphics/Canvas;)V

    .line 747
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f110357

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 748
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorEndX:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorStartX:F

    sub-float/2addr v3, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionY:F

    const/high16 v6, 0x42480000    # 50.0f

    add-float/2addr v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 749
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 750
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 753
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 754
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_DOWN_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_FORTH_LEG_DOWN_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 755
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 756
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHorPosition:I

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0, v4}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawTrdRowChair(Landroid/graphics/Canvas;FF)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "horizontalMove",
            "verticalMove"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1189
    iget v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->trdChairBackWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3fe570a3d70a3d71L    # 0.67

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 1190
    iget v3, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->trdChairBackHeight:I

    int-to-double v3, v3

    const-wide v5, 0x3fe5c28f5c28f5c3L    # 0.68

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 1191
    iget v4, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    const/16 v5, 0x32

    if-le v4, v5, :cond_0

    .line 1192
    iget v4, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    neg-int v4, v4

    int-to-double v4, v4

    const-wide v6, 0x3ffe666666666666L    # 1.9

    mul-double/2addr v4, v6

    const-wide v6, 0x4057c00000000000L    # 95.0

    goto :goto_0

    .line 1194
    :cond_0
    iget v4, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    neg-int v4, v4

    int-to-double v4, v4

    const-wide v6, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    :goto_0
    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 1197
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v5, v4, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1198
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const v6, 0x43bb8000    # 375.0f

    add-float v6, p2, v6

    const/high16 v7, 0x43160000    # 150.0f

    add-float v7, p3, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1199
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1200
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowControl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1202
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1203
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v5, v4

    const/4 v8, 0x0

    cmpg-float v8, v4, v8

    const-wide v9, 0x4066800000000000L    # 180.0

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    if-gtz v8, :cond_1

    .line 1206
    iget-object v8, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v13, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadVerPosition:I

    div-int/lit8 v13, v13, 0x3

    int-to-double v13, v13

    move/from16 p2, v6

    float-to-double v5, v5

    mul-double/2addr v5, v11

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v13, v9

    double-to-float v9, v13

    iget v10, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadVerPosition:I

    div-int/lit8 v10, v10, 0x3

    int-to-double v10, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v10, v5

    neg-double v5, v10

    double-to-float v5, v5

    invoke-virtual {v8, v9, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move/from16 p3, v7

    goto :goto_1

    :cond_1
    move/from16 p2, v6

    .line 1208
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v6, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadVerPosition:I

    div-int/lit8 v6, v6, 0x3

    int-to-double v13, v6

    move/from16 p3, v7

    float-to-double v6, v4

    mul-double/2addr v6, v11

    div-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v13, v8

    double-to-float v8, v13

    iget v9, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHeadVerPosition:I

    div-int/lit8 v9, v9, 0x3

    int-to-double v9, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v9, v6

    neg-double v6, v9

    double-to-float v6, v6

    invoke-virtual {v5, v8, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1210
    :goto_1
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1211
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowHead:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1213
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1214
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1215
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1216
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1218
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1219
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1220
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowSet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawTrdSeatControlTitle(Landroid/graphics/Canvas;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 960
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltProgress:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbTiltProgress:F

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatTrdTiltSlider(Landroid/graphics/Canvas;FF)V

    .line 962
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f110358

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 963
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    float-to-double v5, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v7, v3

    const-wide/high16 v9, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-float v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 964
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 965
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 967
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 968
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TRD_TILT_BTN_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 969
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 970
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0, v4}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 972
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    const/high16 v2, -0x3dcc0000    # -45.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 973
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TRD_TILT_BTN_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 974
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 975
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private initMidDownDrawable()V
    .locals 5

    .line 1940
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1941
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0801e1

    .line 1940
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownEnable:Landroid/graphics/drawable/Drawable;

    .line 1942
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownEnable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1943
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownEnable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->MID_DOWN_BTN_SIZE:I

    .line 1944
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownEnable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownEnable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownEnable:Landroid/graphics/drawable/Drawable;

    .line 1945
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1944
    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1946
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownEnable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    .line 1947
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownEnable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1950
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1951
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1950
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownDisable:Landroid/graphics/drawable/Drawable;

    .line 1952
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownDisable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1953
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownDisable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownDisable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownDisable:Landroid/graphics/drawable/Drawable;

    .line 1954
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1953
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1955
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownDisable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1958
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0801e2

    .line 1959
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1958
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownPressed:Landroid/graphics/drawable/Drawable;

    .line 1960
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1961
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownPressed:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMidDownPressed:Landroid/graphics/drawable/Drawable;

    .line 1962
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1961
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void
.end method

.method private moveThumbCushion(FF)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1823
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionStartAngle:F

    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr v0, v1

    float-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 1824
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionStartAngle:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionSweepAngle:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v4

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 1825
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionY:F

    float-to-double v1, v0

    .line 1826
    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    .line 1827
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldCushionMove:Z

    if-eqz v0, :cond_0

    float-to-double v5, p2

    const-wide/high16 v7, 0x4069000000000000L    # 200.0

    add-double/2addr v1, v7

    cmpg-double v0, v5, v1

    if-gtz v0, :cond_0

    sub-double/2addr v3, v7

    cmpl-double v0, v5, v3

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1828
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionX:F

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionR:F

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cCushionY:F

    sub-float/2addr v2, p2

    mul-float/2addr v2, v1

    div-float/2addr v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbCushionProgress:F

    .line 1829
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbCushionProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    .line 1830
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_0
    return-void
.end method

.method private moveThumbFrontBack(FF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1753
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHorMove:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorY:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    sub-float v2, v0, v1

    const/high16 v3, 0x43480000    # 200.0f

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    const/high16 p2, 0x42c80000    # 100.0f

    .line 1754
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    sub-float/2addr p1, v0

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorEndX:F

    sub-float/2addr p2, v0

    div-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorProgress:F

    .line 1755
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHorProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    .line 1756
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_0
    return-void
.end method

.method private moveThumbHeadRestHor(FF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1879
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHeadHorMove:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorY:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    sub-float v2, v0, v1

    const/high16 v3, 0x43480000    # 200.0f

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    const/high16 p2, 0x42c80000    # 100.0f

    .line 1880
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorStartX:F

    sub-float/2addr p1, v0

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderHorEndX:F

    sub-float/2addr p2, v0

    div-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHeadHorProgress:F

    .line 1881
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHeadHorProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    .line 1882
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_0
    return-void
.end method

.method private moveThumbHeadRestVer(FF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1865
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldHeadVerMove:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerX:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    sub-float v2, v0, v1

    const/high16 v3, 0x43480000    # 200.0f

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    .line 1866
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerStartY:F

    sub-float p2, v0, p2

    mul-float/2addr p2, p1

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerEndY:F

    sub-float/2addr v0, p1

    div-float/2addr p2, v0

    float-to-int p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHeadVerProgress:F

    .line 1867
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbHeadVerProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    .line 1868
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_0
    return-void
.end method

.method private moveThumbMove(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1709
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_CHAIR:I

    if-ne v0, v1, :cond_0

    .line 1710
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbFrontBack(FF)V

    .line 1711
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbTilt(FF)V

    .line 1712
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbUpDown(FF)V

    .line 1714
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_Front_Back_Chair:I

    if-ne v0, v1, :cond_1

    .line 1715
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbFrontBack(FF)V

    .line 1716
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbTilt(FF)V

    .line 1718
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_Tilt_Chair:I

    if-ne v0, v1, :cond_2

    .line 1719
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbTilt(FF)V

    .line 1722
    :cond_2
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_CUSHION:I

    if-ne v0, v1, :cond_3

    .line 1723
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbCushion(FF)V

    .line 1726
    :cond_3
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_PSN_SMALL_LEG:I

    if-ne v0, v1, :cond_4

    .line 1727
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbPsnSmallLeg(FF)V

    .line 1729
    :cond_4
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_HEADREST:I

    if-ne v0, v1, :cond_5

    .line 1730
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbHeadRestVer(FF)V

    .line 1731
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbHeadRestHor(FF)V

    .line 1733
    :cond_5
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_TRD_HEADREST:I

    if-ne v0, v1, :cond_6

    .line 1734
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbHeadRestVer(FF)V

    .line 1737
    :cond_6
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_FORTH_LEG_CUSHION:I

    if-ne v0, v1, :cond_7

    .line 1738
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbRearSmallLeg(FF)V

    .line 1739
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbRearLegTitle(FF)V

    .line 1741
    :cond_7
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_REAR_SMALL_LEG:I

    if-ne v0, v1, :cond_8

    .line 1742
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbRearSmallLeg(FF)V

    :cond_8
    return-void
.end method

.method private moveThumbPsnSmallLeg(FF)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1845
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    float-to-double v0, v0

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v2, v2

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegStartAngle:F

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    float-to-double v6, v4

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    sub-double/2addr v0, v2

    .line 1846
    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    float-to-double v2, v2

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v6, v4

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegStartAngle:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegSweepAngle:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v6, v4

    sub-double/2addr v2, v6

    .line 1847
    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    add-float/2addr v5, v4

    float-to-double v5, v5

    float-to-double v7, v4

    .line 1849
    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldSmallLegMove:Z

    if-eqz v4, :cond_0

    float-to-double v9, p2

    const-wide/high16 v11, 0x4069000000000000L    # 200.0

    add-double/2addr v5, v11

    cmpg-double p2, v9, v5

    if-gtz p2, :cond_0

    sub-double/2addr v7, v11

    cmpl-double p2, v9, v7

    if-ltz p2, :cond_0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    float-to-double p1, p1

    sub-double p1, v0, p1

    sub-double/2addr v0, v2

    div-double/2addr p1, v0

    mul-double/2addr p1, v4

    double-to-float p1, p1

    .line 1850
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbSmallLegProgress:F

    .line 1851
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbSmallLegProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    .line 1852
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_0
    return-void
.end method

.method private moveThumbRearLegTitle(FF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1915
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldCushionMove:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearThumbCushionHorY:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    sub-float v2, v0, v1

    const/high16 v3, 0x43480000    # 200.0f

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    const/high16 p2, 0x42c80000    # 100.0f

    .line 1916
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorStartX:F

    sub-float p1, v0, p1

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRearSliderCushionHorEndX:F

    sub-float/2addr v0, p2

    div-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbCushionProgress:F

    .line 1917
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbCushionProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    .line 1918
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_0
    return-void
.end method

.method private moveThumbRearSmallLeg(FF)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1897
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    float-to-double v0, v0

    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v2, v2

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegStartAngle:F

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    float-to-double v6, v4

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    sub-double/2addr v0, v2

    .line 1898
    iget v2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegX:F

    float-to-double v2, v2

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    float-to-double v6, v4

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegStartAngle:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegSweepAngle:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v6, v4

    sub-double/2addr v2, v6

    .line 1899
    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegY:F

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cRearLegR:F

    add-float/2addr v5, v4

    float-to-double v5, v5

    float-to-double v7, v4

    .line 1901
    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldSmallLegMove:Z

    if-eqz v4, :cond_0

    float-to-double v9, p2

    const-wide/high16 v11, 0x4069000000000000L    # 200.0

    add-double/2addr v5, v11

    cmpg-double p2, v9, v5

    if-gtz p2, :cond_0

    sub-double/2addr v7, v11

    cmpl-double p2, v9, v7

    if-ltz p2, :cond_0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    float-to-double p1, p1

    sub-double p1, v0, p1

    sub-double/2addr v0, v2

    div-double/2addr p1, v0

    mul-double/2addr p1, v4

    double-to-float p1, p1

    .line 1902
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbSmallLegProgress:F

    .line 1903
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbSmallLegProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    .line 1904
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_0
    return-void
.end method

.method private moveThumbTilt(FF)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1785
    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v0, p2

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    float-to-double v2, p2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    float-to-double v2, p2

    add-double/2addr v0, v2

    .line 1786
    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    float-to-double v2, p2

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    iget v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    add-float/2addr p2, v8

    float-to-double v8, p2

    mul-double/2addr v8, v4

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    float-to-double v8, p2

    add-double/2addr v2, v8

    .line 1787
    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    float-to-double v8, p2

    mul-double/2addr v8, v4

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 1788
    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    iget v8, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    add-float/2addr p2, v8

    float-to-double v8, p2

    mul-double/2addr v8, v4

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 1789
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldTiltMove:Z

    if-eqz p2, :cond_0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    float-to-double p1, p1

    sub-double/2addr p1, v0

    .line 1790
    iget v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    float-to-double v6, v6

    sub-double/2addr p1, v6

    sub-double/2addr v2, v0

    div-double/2addr p1, v2

    mul-double/2addr p1, v4

    double-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbTiltProgress:F

    .line 1791
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbTiltProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    .line 1792
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_0
    return-void
.end method

.method private moveThumbUpDown(FF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1805
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbShouldVerMove:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerX:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBtnHalf:F

    sub-float v2, v0, v1

    const/high16 v3, 0x43480000    # 200.0f

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    .line 1806
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerStartY:F

    sub-float p2, v0, p2

    mul-float/2addr p2, p1

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderVerEndY:F

    sub-float/2addr v0, p1

    div-float/2addr p2, v0

    float-to-int p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerProgress:F

    .line 1807
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbVerProgress:F

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mUpProgress:F

    .line 1808
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    :cond_0
    return-void
.end method

.method private setThemeDrawable()V
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->initMidDownDrawable()V

    return-void
.end method


# virtual methods
.method public getHorizontalMove()F
    .locals 2

    .line 1923
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSupportMove:Z

    if-eqz v0, :cond_0

    .line 1924
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHorPosition:I

    neg-int v0, v0

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const v0, -0x3e0fffff    # -30.000002f

    return v0
.end method

.method public getSecRowBackTiltAngle()F
    .locals 4

    .line 1184
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTiltPosition:I

    int-to-double v0, v0

    const-wide v2, 0x3fe199999999999aL    # 0.55

    mul-double/2addr v0, v2

    const-wide v2, 0x404b800000000000L    # 55.0

    sub-double/2addr v2, v0

    double-to-float v0, v2

    return v0
.end method

.method public getVerticalMove()F
    .locals 2

    .line 1931
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSupportMove:Z

    if-eqz v0, :cond_0

    .line 1932
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mVerPosition:I

    neg-int v0, v0

    int-to-float v0, v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/high16 v0, -0x3e380000    # -25.0f

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    .line 224
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    .line 225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBound:Landroid/graphics/Rect;

    .line 226
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePath:Landroid/graphics/Path;

    .line 227
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_0

    .line 261
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    if-ne v0, v1, :cond_d

    const v0, 0x7f080328

    .line 262
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroCushion:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroCushion:Landroid/graphics/drawable/Drawable;

    .line 265
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 264
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    const v0, 0x7f080321

    .line 268
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowCushion:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowCushion:Landroid/graphics/drawable/Drawable;

    .line 271
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 270
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    const v0, 0x7f080322

    .line 274
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairHead:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 276
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairHead:Landroid/graphics/drawable/Drawable;

    .line 277
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 276
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    const v0, 0x7f08031f

    .line 280
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairBack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 282
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairBack:Landroid/graphics/drawable/Drawable;

    .line 283
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 282
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->secrowChairBackWidth:I

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->secrowChairBackHeight:I

    const v0, 0x7f080327

    .line 288
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroFirstControl:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 290
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroFirstControl:Landroid/graphics/drawable/Drawable;

    .line 291
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 290
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5
    const v0, 0x7f080320

    .line 294
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowFirstControl:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 296
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowFirstControl:Landroid/graphics/drawable/Drawable;

    .line 297
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 296
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_6
    const v0, 0x7f080324

    .line 300
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowSmallLeg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 302
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowSmallLeg:Landroid/graphics/drawable/Drawable;

    .line 303
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 302
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 305
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowSmallLeg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->secrowChairCushionWidth:I

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowSmallLeg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->secrowChairCushionHeight:I

    const v0, 0x7f080325

    .line 308
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowControlVerLeg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 310
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowControlVerLeg:Landroid/graphics/drawable/Drawable;

    .line 311
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 310
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_8
    const v0, 0x7f080335

    .line 314
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroHand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 316
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroHand:Landroid/graphics/drawable/Drawable;

    .line 317
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 316
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_9
    const v0, 0x7f080319

    .line 320
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowHand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 322
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowHand:Landroid/graphics/drawable/Drawable;

    .line 323
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 322
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_a
    const v0, 0x7f080326

    .line 326
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroBack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 328
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroBack:Landroid/graphics/drawable/Drawable;

    .line 329
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 328
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_b
    const v0, 0x7f080329

    .line 332
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroHead:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 334
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroHead:Landroid/graphics/drawable/Drawable;

    .line 335
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 334
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_c
    const v0, 0x7f080323

    .line 338
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroHeadBack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    .line 340
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSecRowZeroHeadBack:Landroid/graphics/drawable/Drawable;

    .line 341
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 340
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2

    .line 343
    :cond_d
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_19

    const v0, 0x7f080331

    .line 344
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowHead:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 348
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowHead:Landroid/graphics/drawable/Drawable;

    .line 349
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 348
    invoke-virtual {v0, v3, v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_e
    const v0, 0x7f080332

    .line 352
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowMidHead:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 356
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowMidHead:Landroid/graphics/drawable/Drawable;

    .line 357
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 356
    invoke-virtual {v0, v3, v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_f
    const v0, 0x7f08032f

    .line 360
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowBack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 364
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowBack:Landroid/graphics/drawable/Drawable;

    .line 365
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 364
    invoke-virtual {v0, v3, v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 367
    :cond_10
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->trdChairBackWidth:I

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->trdChairBackHeight:I

    const v0, 0x7f08031e

    .line 370
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowSet:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 374
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowSet:Landroid/graphics/drawable/Drawable;

    .line 375
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 374
    invoke-virtual {v0, v3, v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_11
    const v0, 0x7f080330

    .line 378
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowControl:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 382
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTrdRowControl:Landroid/graphics/drawable/Drawable;

    .line 383
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 382
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_12
    const/16 v0, 0x23a

    .line 386
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_UP_BTN_LEFT:I

    add-int/lit16 v4, v0, 0x172

    .line 387
    iput v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_DOWN_BTN_LEFT:I

    sub-int/2addr v4, v0

    .line 388
    div-int/2addr v4, v1

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1c

    int-to-float v4, v4

    iput v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltX:F

    .line 389
    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TRD_TILT_BTN_TOP:I

    add-int/lit8 v5, v5, 0x1c

    add-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    iput v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltY:F

    int-to-float v0, v0

    sub-float/2addr v4, v0

    .line 390
    iput v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltR:F

    const/high16 v0, -0x3cf90000    # -135.0f

    .line 391
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltStartAngle:F

    const/high16 v0, 0x42b40000    # 90.0f

    .line 392
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltSweepAngle:F

    const/high16 v0, 0x42340000    # 45.0f

    .line 393
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cTiltAngleRemain:F

    goto/16 :goto_2

    :cond_13
    :goto_0
    const v0, 0x7f08031c

    .line 228
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairBack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 230
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairBack:Landroid/graphics/drawable/Drawable;

    .line 231
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 230
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 233
    :cond_14
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drvChairBackWidth:I

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drvChairBackHeight:I

    .line 236
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    if-nez v0, :cond_15

    const v0, 0x7f08031b

    goto :goto_1

    :cond_15
    const v0, 0x7f08031d

    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairSet:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 238
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairSet:Landroid/graphics/drawable/Drawable;

    .line 239
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 238
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_16
    const v0, 0x7f08032c

    .line 242
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSmallLegDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 244
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSmallLegDrawable:Landroid/graphics/drawable/Drawable;

    .line 245
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 244
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_17
    const v0, 0x7f080318

    .line 248
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairCushion:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    .line 250
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairCushion:Landroid/graphics/drawable/Drawable;

    .line 251
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 250
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    :cond_18
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairCushion:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drvChairCushionWidth:I

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairCushion:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drvChairCusionHeight:I

    const v0, 0x7f08031a

    .line 256
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mMatrix:Landroid/graphics/Matrix;

    sget v5, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawableScale:F

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->bitmapResize(ILandroid/graphics/Matrix;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairHead:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    .line 258
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mDChairHead:Landroid/graphics/drawable/Drawable;

    .line 259
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 258
    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 397
    :cond_19
    :goto_2
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setThemeDrawable()V

    .line 401
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBgSliderPaint:Landroid/graphics/Paint;

    .line 402
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 403
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0701f2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderWidth:F

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBgSliderPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBgSliderPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBgSliderPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderWidth:F

    const/high16 v5, 0x40800000    # 4.0f

    sub-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mBgSliderPaint:Landroid/graphics/Paint;

    const v4, 0x7f0601d7

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 408
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080344

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 409
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbRadio:F

    .line 410
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v3, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 411
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbPaint:Landroid/graphics/Paint;

    .line 412
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060218

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 414
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 415
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    .line 416
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 417
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v0, 0x7f06023b

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mTextPaint:Landroid/graphics/Paint;

    const v0, 0x7f07029a

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 419
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePaint:Landroid/graphics/Paint;

    .line 420
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 421
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePaint:Landroid/graphics/Paint;

    const v0, 0x7f06023e

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mHalfLine:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 423
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mLinePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 424
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mStrokePaint:Landroid/graphics/Paint;

    .line 425
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 426
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mStrokePaint:Landroid/graphics/Paint;

    const v0, 0x7f060224

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 427
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mStrokePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 428
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 429
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRealProcessPaint:Landroid/graphics/Paint;

    .line 430
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 431
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRealProcessPaint:Landroid/graphics/Paint;

    const v0, 0x7f0601d8

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 432
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRealProcessPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSliderWidth:F

    sub-float/2addr v0, v5

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 433
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mRealProcessPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
    .end array-data
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    return-void
.end method

.method public needPressedStatus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 438
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 439
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 440
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 466
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->onDraw(Landroid/graphics/Canvas;)V

    .line 467
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getHorizontalMove()F

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 468
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getVerticalMove()F

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 469
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkProgress()V

    .line 472
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/high16 v1, -0x3db80000    # -50.0f

    .line 473
    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSecRowChair(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 474
    :cond_0
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    if-ne v1, v3, :cond_1

    const/high16 v0, -0x3cea0000    # -150.0f

    const/4 v1, 0x0

    .line 475
    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawTrdRowChair(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0021

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0028

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-direct {p0, p1, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawChair(Landroid/graphics/Canvas;FF)V

    .line 480
    :goto_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_CHAIR:I

    if-ne v0, v1, :cond_2

    .line 481
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatControl(Landroid/graphics/Canvas;)V

    .line 484
    :cond_2
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_Front_Back_Chair:I

    if-ne v0, v1, :cond_3

    .line 485
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatControlFrontBack(Landroid/graphics/Canvas;)V

    .line 488
    :cond_3
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_Tilt_Chair:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSeatId:I

    if-ne v0, v3, :cond_4

    .line 490
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawTrdSeatControlTitle(Landroid/graphics/Canvas;)V

    .line 493
    :cond_4
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_HEADREST:I

    if-ne v0, v1, :cond_5

    .line 494
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatHeadRest(Landroid/graphics/Canvas;)V

    .line 497
    :cond_5
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_TRD_HEADREST:I

    if-ne v0, v1, :cond_6

    .line 498
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSeatTrdHeadRest(Landroid/graphics/Canvas;)V

    .line 501
    :cond_6
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_LUMBAR:I

    if-ne v0, v1, :cond_7

    .line 502
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawLumbarControl(Landroid/graphics/Canvas;)V

    .line 505
    :cond_7
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_FORTH_LEG_CUSHION:I

    if-ne v0, v1, :cond_8

    .line 506
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawRearSmallLegControl(Landroid/graphics/Canvas;)V

    .line 507
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSecRowLegTitleControl(Landroid/graphics/Canvas;)V

    .line 510
    :cond_8
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_REAR_SMALL_LEG:I

    if-ne v0, v1, :cond_9

    .line 511
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawRearSmallLegControl(Landroid/graphics/Canvas;)V

    .line 514
    :cond_9
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_CUSHION:I

    if-ne v0, v1, :cond_a

    .line 515
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawCushionControl(Landroid/graphics/Canvas;)V

    .line 518
    :cond_a
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_PSN_SMALL_LEG:I

    if-ne v0, v1, :cond_b

    .line 519
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawPsnSmallLegControl(Landroid/graphics/Canvas;)V

    .line 522
    :cond_b
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_SEC_ROW_LEG_Title:I

    if-ne v0, v1, :cond_c

    .line 523
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->drawSecRowLegTitleControl(Landroid/graphics/Canvas;)V

    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
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

    .line 452
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/16 v0, 0x514

    .line 451
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 454
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/16 v0, 0x44c

    .line 453
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 455
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->onMeasure(II)V

    return-void
.end method

.method protected onThemeChanged()V
    .locals 0

    .line 1968
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setThemeDrawable()V

    .line 1969
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1632
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->cancelAction()V

    goto :goto_0

    .line 1629
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->moveThumbMove(FF)V

    goto :goto_0

    .line 1635
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkSliderUpAction()V

    goto :goto_0

    .line 1626
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkThumbMove(FF)V

    .line 1638
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method protected resolveBtnWithMode(FF)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1233
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    .line 1234
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->MID_DOWN_BTN_SIZE:I

    .line 1237
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_CHAIR:I

    if-ne v1, v2, :cond_0

    .line 1238
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkTitle(FFII)V

    .line 1239
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkFrontBack(FFII)V

    .line 1240
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkUpDown(FFII)V

    .line 1242
    :cond_0
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_Front_Back_Chair:I

    if-ne v1, v2, :cond_1

    .line 1243
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkTitle(FFII)V

    .line 1244
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkFrontBack(FFII)V

    .line 1246
    :cond_1
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_Tilt_Chair:I

    if-ne v1, v2, :cond_2

    .line 1248
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkTrdTitle(FFII)V

    .line 1250
    :cond_2
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_HEADREST:I

    if-ne v1, v2, :cond_3

    .line 1251
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkHeadRestVer(FFII)V

    .line 1252
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkHeadRestHor(FFII)V

    .line 1254
    :cond_3
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_TRD_HEADREST:I

    if-ne v1, v2, :cond_4

    .line 1255
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkHeadRestVer(FFII)V

    .line 1257
    :cond_4
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_LUMBAR:I

    if-ne v1, v2, :cond_5

    .line 1258
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkLumbar(FFII)V

    .line 1261
    :cond_5
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_CUSHION:I

    if-ne v1, v2, :cond_6

    .line 1262
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkCushion(FFII)V

    .line 1265
    :cond_6
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_PSN_SMALL_LEG:I

    if-ne v1, v2, :cond_7

    .line 1266
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkPsnSmallLeg(FFII)V

    .line 1269
    :cond_7
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_FORTH_LEG_CUSHION:I

    if-ne v1, v2, :cond_8

    .line 1270
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkRearSmallLeg(FFII)V

    .line 1271
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkRearLegTitle(FFII)V

    .line 1273
    :cond_8
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    sget v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->CONTROL_MODE_REAR_SMALL_LEG:I

    if-ne v1, v2, :cond_9

    .line 1274
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->checkRearSmallLeg(FFII)V

    .line 1276
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", y "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mControlMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",button "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseSeatControlView"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSelectButton:I

    return p1
.end method

.method public setSupportMove(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportMove"
        }
    .end annotation

    .line 459
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->mSupportMove:Z

    return-void
.end method
