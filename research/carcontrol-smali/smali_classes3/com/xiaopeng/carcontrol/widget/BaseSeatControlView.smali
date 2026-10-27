.class public abstract Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;
.super Landroid/view/View;
.source "BaseSeatControlView.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/widget/ISeatView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonTouchListener;,
        Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;,
        Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;,
        Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$ControlBtn;
    }
.end annotation


# static fields
.field protected static final BUTTON_BACK_DOWN:I = 0x6

.field protected static final BUTTON_BACK_UP:I = 0x5

.field protected static final BUTTON_HEADREST_BACK:I = 0x10

.field protected static final BUTTON_HEADREST_DOWN:I = 0x12

.field protected static final BUTTON_HEADREST_FRONT:I = 0xf

.field protected static final BUTTON_HEADREST_UP:I = 0x11

.field protected static final BUTTON_LEG_BACK:I = 0xe

.field protected static final BUTTON_LEG_DOWN:I = 0x8

.field protected static final BUTTON_LEG_FRONT:I = 0xd

.field protected static final BUTTON_LEG_UP:I = 0x7

.field protected static final BUTTON_LUMBAR_BACK:I = 0xa

.field protected static final BUTTON_LUMBAR_DOWN:I = 0xc

.field protected static final BUTTON_LUMBAR_FRONT:I = 0x9

.field protected static final BUTTON_LUMBAR_UP:I = 0xb

.field protected static final BUTTON_SEAT_BACK:I = 0x2

.field protected static final BUTTON_SEAT_DOWN:I = 0x4

.field protected static final BUTTON_SEAT_FRONT:I = 0x1

.field protected static final BUTTON_SEAT_UP:I = 0x3

.field protected static final BUTTON_SMLEG_DOWN:I = 0x14

.field protected static final BUTTON_SMLEG_UP:I = 0x13

.field protected static CONTROL_MODE_CHAIR:I = 0x1

.field protected static CONTROL_MODE_CUSHION:I = 0x4

.field protected static CONTROL_MODE_FORTH_LEG_CUSHION:I = 0x8

.field protected static CONTROL_MODE_Front_Back_Chair:I = 0x9

.field protected static CONTROL_MODE_HEADREST:I = 0x6

.field protected static CONTROL_MODE_LUMBAR:I = 0x2

.field protected static CONTROL_MODE_PSN_SMALL_LEG:I = 0xc

.field protected static CONTROL_MODE_REAR_SMALL_LEG:I = 0x7

.field protected static CONTROL_MODE_SECOND_ROW:I = 0x5

.field protected static CONTROL_MODE_TRD_HEADREST:I = 0xb

.field protected static CONTROL_MODE_Tilt_Chair:I = 0xa

.field protected static CONTROL_SEC_ROW_LEG_Title:I = 0x3

.field public static final DIRECTION_BACK_DOWN:I = 0x2

.field public static final DIRECTION_FRONT_UP:I = 0x1

.field protected static final SLIDER_CUSHION_MOVE:I = 0x18

.field protected static final SLIDER_HEAD_HOR_MOVE:I = 0x1b

.field protected static final SLIDER_HEAD_VER_MOVE:I = 0x1a

.field protected static final SLIDER_HOR_MOVE:I = 0x15

.field protected static final SLIDER_SMALL_LEG_MOVE:I = 0x19

.field protected static final SLIDER_TILT_MOVE:I = 0x17

.field protected static final SLIDER_VER_MOVE:I = 0x16

.field public static final TOAST_CAR_CONTROL_MODULE:Ljava/lang/String; = "c_c"


# instance fields
.field MSM_SEAT_MAX_PERCENT:I

.field MSM_SEAT_MAX_VALID_PERCENT:I

.field MSM_SEAT_MIN_PERCENT:I

.field MSM_SEAT_MIN_VALID_PERCENT:I

.field protected final TAG:Ljava/lang/String;

.field private mBtnPressed:Z

.field private mControlBtn:I

.field protected mControlMode:I

.field protected mCushionProgress:F

.field private final mCushionProgressRun:Ljava/lang/Runnable;

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mEventDownButton:I

.field protected mHandler:Landroid/os/Handler;

.field protected mHeadHorPosition:I

.field protected mHeadHorProgress:F

.field private final mHeadHorProgressRun:Ljava/lang/Runnable;

.field protected mHeadVerPosition:I

.field protected mHeadVerProgress:F

.field private final mHeadVerProgressRun:Ljava/lang/Runnable;

.field protected mHorPosition:I

.field protected mHorProgress:F

.field private final mHorProgressRun:Ljava/lang/Runnable;

.field protected mIsSecRow:Z

.field protected mIsSecRowZero:Z

.field protected mIsTrdRow:Z

.field protected mLegHorPosition:I

.field protected mLegVerPosition:I

.field protected mMidDownDisable:Landroid/graphics/drawable/Drawable;

.field protected mMidDownEnable:Landroid/graphics/drawable/Drawable;

.field protected mMidDownPressed:Landroid/graphics/drawable/Drawable;

.field private mNoneResponseTime:J

.field private mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

.field private mOnButtonTouchListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonTouchListener;

.field protected mOnSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

.field protected mShouldSendCushionPos:Z

.field protected mShouldSendHeadHorPos:Z

.field protected mShouldSendHeadVerPos:Z

.field protected mShouldSendHorPos:Z

.field protected mShouldSendSmallLegPos:Z

.field protected mShouldSendTiltPos:Z

.field protected mShouldSendVerPos:Z

.field protected mShowCushion:Z

.field protected mShowSmallLeg:Z

.field protected mSliderWidth:F

.field protected mSmallLegPosition:I

.field protected mSmallLegProgress:F

.field private final mSmallLegProgressRun:Ljava/lang/Runnable;

.field protected mThumbCushionProgress:F

.field protected mThumbHeadHorProgress:F

.field protected mThumbHeadVerProgress:F

.field protected mThumbHorProgress:F

.field protected mThumbRadio:F

.field protected mThumbShouldCushionMove:Z

.field protected mThumbShouldHeadHorMove:Z

.field protected mThumbShouldHeadVerMove:Z

.field protected mThumbShouldHorMove:Z

.field protected mThumbShouldSmallLegMove:Z

.field protected mThumbShouldTiltMove:Z

.field protected mThumbShouldVerMove:Z

.field protected mThumbSmallLegProgress:F

.field protected mThumbTiltProgress:F

.field protected mThumbVerProgress:F

.field protected mTiltPosition:I

.field protected mTiltProgress:F

.field private final mTiltProgressRun:Ljava/lang/Runnable;

.field protected mUpProgress:F

.field protected mVerPosition:I

.field protected mVerProgress:F

.field private final mVerProgressRun:Ljava/lang/Runnable;

.field private sliderDelayTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "BaseSeatControlView"

    .line 33
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->TAG:Ljava/lang/String;

    .line 77
    sget v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_CHAIR:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    const/16 v0, 0x32

    .line 78
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltPosition:I

    .line 79
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorPosition:I

    .line 80
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerPosition:I

    const/16 v0, 0x2d

    .line 83
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegPosition:I

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mMidDownPressed:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x64

    .line 98
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_VALID_PERCENT:I

    .line 99
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_VALID_PERCENT:I

    const/16 v1, 0x62

    .line 100
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    const/4 v1, 0x2

    .line 101
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    .line 105
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldHorMove:Z

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldTiltMove:Z

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldVerMove:Z

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    .line 109
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->sliderDelayTime:J

    .line 110
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mNoneResponseTime:J

    .line 228
    new-instance v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$1;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltProgressRun:Ljava/lang/Runnable;

    .line 268
    new-instance v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$2;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorProgressRun:Ljava/lang/Runnable;

    .line 305
    new-instance v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$3;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerProgressRun:Ljava/lang/Runnable;

    .line 341
    new-instance v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$4;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mCushionProgressRun:Ljava/lang/Runnable;

    .line 378
    new-instance v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$5;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegProgressRun:Ljava/lang/Runnable;

    .line 414
    new-instance v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$6;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadHorProgressRun:Ljava/lang/Runnable;

    .line 450
    new-instance v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$7;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadVerProgressRun:Ljava/lang/Runnable;

    .line 168
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 172
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "BaseSeatControlView"

    .line 33
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->TAG:Ljava/lang/String;

    .line 77
    sget p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_CHAIR:I

    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    const/16 p2, 0x32

    .line 78
    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltPosition:I

    .line 79
    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorPosition:I

    .line 80
    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerPosition:I

    const/16 p2, 0x2d

    .line 83
    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegPosition:I

    const/4 p2, 0x0

    .line 90
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mMidDownPressed:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x64

    .line 98
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_VALID_PERCENT:I

    .line 99
    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_VALID_PERCENT:I

    const/16 v0, 0x62

    .line 100
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    const/4 v0, 0x2

    .line 101
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    .line 105
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldHorMove:Z

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldTiltMove:Z

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldVerMove:Z

    .line 108
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    .line 109
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->sliderDelayTime:J

    .line 110
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mNoneResponseTime:J

    .line 228
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$1;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltProgressRun:Ljava/lang/Runnable;

    .line 268
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$2;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$2;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorProgressRun:Ljava/lang/Runnable;

    .line 305
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$3;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$3;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerProgressRun:Ljava/lang/Runnable;

    .line 341
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$4;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$4;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mCushionProgressRun:Ljava/lang/Runnable;

    .line 378
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$5;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$5;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegProgressRun:Ljava/lang/Runnable;

    .line 414
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$6;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$6;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadHorProgressRun:Ljava/lang/Runnable;

    .line 450
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$7;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$7;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadVerProgressRun:Ljava/lang/Runnable;

    .line 173
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 177
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "BaseSeatControlView"

    .line 33
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->TAG:Ljava/lang/String;

    .line 77
    sget p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_CHAIR:I

    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    const/16 p2, 0x32

    .line 78
    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltPosition:I

    .line 79
    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorPosition:I

    .line 80
    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerPosition:I

    const/16 p2, 0x2d

    .line 83
    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegPosition:I

    const/4 p2, 0x0

    .line 90
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    const/4 p3, 0x0

    .line 94
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mMidDownPressed:Landroid/graphics/drawable/Drawable;

    const/16 p3, 0x64

    .line 98
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_VALID_PERCENT:I

    .line 99
    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_VALID_PERCENT:I

    const/16 p3, 0x62

    .line 100
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    const/4 p3, 0x2

    .line 101
    iput p3, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    .line 105
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldHorMove:Z

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldTiltMove:Z

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldVerMove:Z

    .line 108
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x3e8

    .line 109
    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->sliderDelayTime:J

    .line 110
    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mNoneResponseTime:J

    .line 228
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$1;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltProgressRun:Ljava/lang/Runnable;

    .line 268
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$2;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$2;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorProgressRun:Ljava/lang/Runnable;

    .line 305
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$3;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$3;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerProgressRun:Ljava/lang/Runnable;

    .line 341
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$4;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$4;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mCushionProgressRun:Ljava/lang/Runnable;

    .line 378
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$5;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$5;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegProgressRun:Ljava/lang/Runnable;

    .line 414
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$6;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$6;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadHorProgressRun:Ljava/lang/Runnable;

    .line 450
    new-instance p2, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$7;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$7;-><init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadVerProgressRun:Ljava/lang/Runnable;

    .line 178
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private checkPositionOnTouchDown()V
    .locals 2

    .line 650
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 733
    :pswitch_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-gt v0, v1, :cond_6

    .line 734
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f110338

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto/16 :goto_0

    .line 728
    :pswitch_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-lt v0, v1, :cond_6

    .line 729
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f110337

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto/16 :goto_0

    .line 718
    :pswitch_2
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadVerPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-gt v0, v1, :cond_6

    .line 719
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f1102f7

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto/16 :goto_0

    .line 723
    :pswitch_3
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadVerPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-lt v0, v1, :cond_6

    .line 724
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f1102f6

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto/16 :goto_0

    .line 708
    :pswitch_4
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadHorPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-gt v0, v1, :cond_6

    .line 709
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f1102f5

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto/16 :goto_0

    .line 713
    :pswitch_5
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadHorPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-lt v0, v1, :cond_6

    .line 714
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f1102f4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto/16 :goto_0

    .line 703
    :pswitch_6
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mLegHorPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-lt v0, v1, :cond_6

    .line 704
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f110302

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto/16 :goto_0

    .line 698
    :pswitch_7
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mLegHorPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-gt v0, v1, :cond_6

    .line 699
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f110301

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 693
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mLegVerPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-gt v0, v1, :cond_6

    .line 694
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f1102ed

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 688
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mLegVerPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-lt v0, v1, :cond_6

    .line 689
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f1102ec

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 667
    :cond_2
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-gt v0, v1, :cond_6

    .line 668
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f110354

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 662
    :cond_3
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-lt v0, v1, :cond_6

    .line 663
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f110353

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 657
    :cond_4
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-gt v0, v1, :cond_6

    .line 658
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f1102f9

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 652
    :cond_5
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorPosition:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-lt v0, v1, :cond_6

    .line 653
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f1102f8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlePressed(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "button",
            "isPressed"
        }
    .end annotation

    .line 755
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->needPressedStatus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 758
    :cond_0
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    .line 759
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    .line 760
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method private onTouchDown()V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonTouchListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonTouchListener;

    if-eqz v0, :cond_0

    .line 744
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonTouchListener;->onButtonTouchDown()V

    :cond_0
    return-void
.end method

.method private onTouchUp()V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonTouchListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonTouchListener;

    if-eqz v0, :cond_0

    .line 750
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonTouchListener;->onButtonTouchUp()V

    :cond_0
    return-void
.end method

.method private touchCallback(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "button",
            "isTouch"
        }
    .end annotation

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touchCallback button "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 835
    :pswitch_0
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mLegVerPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 836
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 837
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onLegHorTouched(ZI)V

    goto/16 :goto_0

    .line 829
    :pswitch_1
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mLegVerPosition:I

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 831
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onLegHorTouched(ZI)V

    goto/16 :goto_0

    .line 877
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 878
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onHeadRestVerTouched(ZI)V

    goto/16 :goto_0

    .line 873
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 874
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onHeadRestVerTouched(ZI)V

    goto/16 :goto_0

    .line 869
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 870
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onHeadRestHorTouched(ZI)V

    goto/16 :goto_0

    .line 865
    :pswitch_5
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 866
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onHeadRestHorTouched(ZI)V

    goto/16 :goto_0

    .line 847
    :pswitch_6
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mLegHorPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 849
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onLegHorTouched(ZI)V

    goto/16 :goto_0

    .line 841
    :pswitch_7
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mLegHorPosition:I

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 843
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onLegHorTouched(ZI)V

    goto/16 :goto_0

    .line 862
    :pswitch_8
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onLumbarVerTouched(ZI)V

    goto/16 :goto_0

    .line 859
    :pswitch_9
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onLumbarVerTouched(ZI)V

    goto/16 :goto_0

    .line 856
    :pswitch_a
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onLumbarHorTouched(ZI)V

    goto/16 :goto_0

    .line 853
    :pswitch_b
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onLumbarHorTouched(ZI)V

    goto/16 :goto_0

    .line 823
    :pswitch_c
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mLegVerPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 825
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onLegTouched(ZI)V

    goto/16 :goto_0

    .line 817
    :pswitch_d
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mLegVerPosition:I

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 819
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onLegTouched(ZI)V

    goto :goto_0

    .line 811
    :pswitch_e
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltPosition:I

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 813
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onTiltTouched(ZI)V

    goto :goto_0

    .line 805
    :pswitch_f
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 807
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onTiltTouched(ZI)V

    goto :goto_0

    .line 799
    :pswitch_10
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 800
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 801
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onSeatVerTouched(ZI)V

    goto :goto_0

    .line 793
    :pswitch_11
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerPosition:I

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 795
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onSeatVerTouched(ZI)V

    goto :goto_0

    .line 787
    :pswitch_12
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 789
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onSeatHorTouched(ZI)V

    goto :goto_0

    .line 781
    :pswitch_13
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorPosition:I

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->cancelAction()V

    .line 783
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;->onSeatHorTouched(ZI)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private upCallBack(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upCallBack   button = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mUpProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mUpProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 996
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mUpProgress:F

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;->onSeatHeadHorTouched(F)V

    .line 997
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadHorProgressRun:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mNoneResponseTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 992
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mUpProgress:F

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;->onSeatHeadVerTouched(F)V

    .line 993
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadVerProgressRun:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mNoneResponseTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 988
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mUpProgress:F

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;->onSeatSmallLegTouched(F)V

    .line 989
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegProgressRun:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mNoneResponseTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 984
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mUpProgress:F

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;->onSeatCushionTouched(F)V

    .line 985
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mCushionProgressRun:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mNoneResponseTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 980
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mUpProgress:F

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;->onSeatTiltTouched(F)V

    .line 981
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltProgressRun:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mNoneResponseTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 976
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mUpProgress:F

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;->onSeatVerTouched(F)V

    .line 977
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerProgressRun:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mNoneResponseTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 972
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mUpProgress:F

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;->onSeatHorTouched(F)V

    .line 973
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorProgressRun:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mNoneResponseTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelAction()V
    .locals 1

    const/4 v0, 0x0

    .line 763
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldHorMove:Z

    .line 764
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendHorPos:Z

    .line 765
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldVerMove:Z

    .line 766
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendVerPos:Z

    .line 767
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldTiltMove:Z

    .line 768
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendTiltPos:Z

    .line 769
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldCushionMove:Z

    .line 770
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendCushionPos:Z

    .line 771
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldHeadVerMove:Z

    .line 772
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendHeadVerPos:Z

    .line 773
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbShouldHeadHorMove:Z

    .line 774
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendHeadHorPos:Z

    .line 775
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendSmallLegPos:Z

    return-void
.end method

.method protected checkProgress()V
    .locals 3

    .line 573
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbTiltProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbTiltProgress:F

    const/4 v2, 0x0

    .line 574
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbTiltProgress:F

    .line 575
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbHorProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbHorProgress:F

    .line 576
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbHorProgress:F

    .line 577
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbVerProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbVerProgress:F

    .line 578
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbVerProgress:F

    .line 579
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbHeadVerProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbHeadVerProgress:F

    .line 580
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbHeadVerProgress:F

    .line 581
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbHeadHorProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbHeadHorProgress:F

    .line 582
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbHeadHorProgress:F

    .line 583
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbSmallLegProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbSmallLegProgress:F

    .line 584
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbSmallLegProgress:F

    .line 585
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbCushionProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbCushionProgress:F

    .line 586
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbCushionProgress:F

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 569
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawSecRowLegTitleControl()V
    .locals 1

    .line 492
    sget v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_SEC_ROW_LEG_Title:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    .line 493
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method protected getArrowDrawable(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "btn",
            "position",
            "isUpFront"
        }
    .end annotation

    .line 895
    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 896
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->needPressedStatus()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mMidDownPressed:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    return-object p1

    .line 899
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mMidDownEnable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 902
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mMidDownDisable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getTiltPosition()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltPosition:I

    return v0
.end method

.method protected abstract initView(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method protected isButtonEnable(IZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "isUpFront"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/16 v1, 0x62

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x2

    if-gt p1, p2, :cond_1

    :cond_1
    return v0
.end method

.method public needPressedStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1028
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1029
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->onThemeChanged()V

    .line 1030
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
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

    .line 908
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 909
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->onThemeChanged()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 549
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 550
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    return-void
.end method

.method protected abstract onThemeChanged()V
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

    .line 592
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 595
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    .line 621
    :cond_1
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    if-eqz p1, :cond_5

    .line 622
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->onTouchUp()V

    .line 623
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->touchCallback(IZ)V

    .line 624
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->handlePressed(IZ)V

    .line 625
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    goto :goto_0

    .line 629
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    if-eqz p1, :cond_3

    .line 630
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mUpProgress:F

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mUpProgress:F

    const/4 v0, 0x0

    .line 631
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mUpProgress:F

    .line 632
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->upCallBack(I)V

    .line 634
    :cond_3
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    if-eqz p1, :cond_5

    .line 635
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->onTouchUp()V

    .line 636
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->touchCallback(IZ)V

    .line 637
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->handlePressed(IZ)V

    .line 638
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    return v2

    .line 597
    :cond_4
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->setSoundEffectsEnabled(Z)V

    .line 598
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->resolveBtnWithMode(FF)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    .line 599
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_DOWN:   mEventDownButton = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseSeatControlView"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    if-lez p1, :cond_5

    .line 601
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->setSoundEffectsEnabled(Z)V

    .line 602
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->checkPositionOnTouchDown()V

    .line 603
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->onTouchDown()V

    .line 604
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->playSoundEffect(I)V

    .line 605
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->touchCallback(IZ)V

    .line 606
    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->handlePressed(IZ)V

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method protected abstract resolveBtnWithMode(FF)I
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
.end method

.method public setControlModeChair()V
    .locals 1

    .line 468
    sget v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_CHAIR:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    .line 469
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModeChairFrontBack()V
    .locals 1

    .line 516
    sget v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_Front_Back_Chair:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    .line 517
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModeChairTilt()V
    .locals 1

    .line 522
    sget v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_Tilt_Chair:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    .line 523
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModeCushion()V
    .locals 1

    .line 484
    sget v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_CUSHION:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    .line 485
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModeForthLegCushion()V
    .locals 1

    .line 510
    sget v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_FORTH_LEG_CUSHION:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    .line 511
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModeHeadRest()V
    .locals 1

    .line 498
    sget v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_HEADREST:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    .line 499
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModeLumbar()V
    .locals 1

    .line 476
    sget v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_LUMBAR:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    .line 477
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModePsnSmallLeg()V
    .locals 1

    .line 534
    sget v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_PSN_SMALL_LEG:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    .line 535
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModeRearSmallLeg()V
    .locals 1

    .line 504
    sget v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_REAR_SMALL_LEG:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    .line 505
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModeSecondRow()V
    .locals 1

    .line 543
    sget v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_SECOND_ROW:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    .line 544
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModeTrdHeadRest()V
    .locals 1

    .line 528
    sget v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->CONTROL_MODE_TRD_HEADREST:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlMode:I

    .line 529
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setHeadHorPosition(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeadHorPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_VALID_PERCENT:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_VALID_PERCENT:I

    if-lt p1, v0, :cond_2

    .line 391
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadHorPosition:I

    .line 392
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadHorPosition:I

    int-to-float v1, p1

    .line 393
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadHorProgress:F

    .line 394
    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendHeadHorPos:Z

    if-eqz v2, :cond_0

    .line 395
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadHorProgressRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadHorProgressRun:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->sliderDelayTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 398
    :cond_0
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbHeadHorProgress:F

    .line 400
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    .line 402
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-ge v0, v1, :cond_1

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz v1, :cond_1

    .line 405
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1102f4

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    .line 406
    :cond_1
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-le v0, v1, :cond_2

    if-gt p1, v1, :cond_2

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_2

    .line 409
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1102f5

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setHeadVerPosition(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeadVerPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_VALID_PERCENT:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_VALID_PERCENT:I

    if-lt p1, v0, :cond_2

    .line 427
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadVerPosition:I

    .line 428
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadVerPosition:I

    int-to-float v1, p1

    .line 429
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadVerProgress:F

    .line 430
    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendHeadVerPos:Z

    if-eqz v2, :cond_0

    .line 431
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadVerProgressRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 432
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadVerProgressRun:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->sliderDelayTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 434
    :cond_0
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbHeadVerProgress:F

    .line 436
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    .line 438
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-ge v0, v1, :cond_1

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz v1, :cond_1

    .line 441
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1102f6

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    .line 442
    :cond_1
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-le v0, v1, :cond_2

    if-gt p1, v1, :cond_2

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/16 v0, 0x12

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_2

    .line 445
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1102f7

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setHorPosition(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHorPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_VALID_PERCENT:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_VALID_PERCENT:I

    if-lt p1, v0, :cond_2

    .line 245
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorPosition:I

    .line 246
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorPosition:I

    int-to-float v1, p1

    .line 247
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorProgress:F

    .line 248
    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendHorPos:Z

    if-eqz v2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorProgressRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHorProgressRun:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->sliderDelayTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 252
    :cond_0
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbHorProgress:F

    .line 254
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    .line 256
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-ge v0, v1, :cond_1

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz v1, :cond_1

    .line 259
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1102f8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    .line 260
    :cond_1
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-le v0, v1, :cond_2

    if-gt p1, v1, :cond_2

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_2

    .line 263
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1102f9

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLegHorPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    return-void
.end method

.method public setLegVerPosition(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLegVerPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_VALID_PERCENT:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_VALID_PERCENT:I

    if-lt p1, v0, :cond_2

    .line 318
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mLegVerPosition:I

    .line 319
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mLegVerPosition:I

    int-to-float v1, p1

    .line 320
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mCushionProgress:F

    .line 321
    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendCushionPos:Z

    if-eqz v2, :cond_0

    .line 322
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mCushionProgressRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mCushionProgressRun:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->sliderDelayTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 325
    :cond_0
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbCushionProgress:F

    .line 327
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    .line 329
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-ge v0, v1, :cond_1

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz v1, :cond_1

    .line 332
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1102ec

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    .line 333
    :cond_1
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-le v0, v1, :cond_2

    if-gt p1, v1, :cond_2

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_2

    .line 336
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1102ed

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setOnButtonClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onButtonClickListener"
        }
    .end annotation

    .line 1023
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    return-void
.end method

.method public setOnButtonTouchListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onButtonTouchListener"
        }
    .end annotation

    .line 1012
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonTouchListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonTouchListener;

    return-void
.end method

.method public setSecRow(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mIsSecRow"
        }
    .end annotation

    .line 120
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mIsSecRow:Z

    return-void
.end method

.method public setSecRowZero(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mIsSecRowZero"
        }
    .end annotation

    .line 128
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mIsSecRowZero:Z

    return-void
.end method

.method public setShowCushion(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mShowCushion"
        }
    .end annotation

    .line 116
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShowCushion:Z

    return-void
.end method

.method public setShowSmallLeg(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mShowSmallLeg"
        }
    .end annotation

    .line 112
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShowSmallLeg:Z

    return-void
.end method

.method public setSliderClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOnSliderClickListener"
        }
    .end annotation

    .line 965
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    return-void
.end method

.method public setSmallLegPosition(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmallLegHorPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_VALID_PERCENT:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_VALID_PERCENT:I

    if-lt p1, v0, :cond_2

    .line 355
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegPosition:I

    .line 356
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegPosition:I

    int-to-float v1, p1

    .line 357
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegProgress:F

    .line 358
    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendSmallLegPos:Z

    if-eqz v2, :cond_0

    .line 359
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegProgressRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mSmallLegProgressRun:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->sliderDelayTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 362
    :cond_0
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbSmallLegProgress:F

    .line 364
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    .line 366
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-ge v0, v1, :cond_1

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz v1, :cond_1

    .line 369
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f110337

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    .line 370
    :cond_1
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-le v0, v1, :cond_2

    if-gt p1, v1, :cond_2

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_2

    .line 373
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f110338

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setTiltPosition(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTiltPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_VALID_PERCENT:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_VALID_PERCENT:I

    if-lt p1, v0, :cond_2

    .line 185
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltPosition:I

    .line 186
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltPosition:I

    rsub-int/lit8 v1, p1, 0x64

    int-to-float v1, v1

    .line 187
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltProgress:F

    .line 188
    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendTiltPos:Z

    if-eqz v2, :cond_0

    .line 189
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltProgressRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mTiltProgressRun:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->sliderDelayTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 192
    :cond_0
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbTiltProgress:F

    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    .line 195
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-ge v0, v1, :cond_1

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz v1, :cond_1

    .line 198
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f11033f

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    .line 199
    :cond_1
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-le v0, v1, :cond_2

    if-gt p1, v1, :cond_2

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_2

    .line 202
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f110340

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setTrdRow(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mIsTrdRow"
        }
    .end annotation

    .line 124
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mIsTrdRow:Z

    return-void
.end method

.method public setVerPosition(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVerPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_VALID_PERCENT:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_VALID_PERCENT:I

    if-lt p1, v0, :cond_2

    .line 281
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerPosition:I

    .line 282
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerPosition:I

    int-to-float v1, p1

    .line 283
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerProgress:F

    .line 285
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendVerPos:Z

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerProgressRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mVerProgressRun:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->sliderDelayTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    int-to-float v1, p1

    .line 289
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbVerProgress:F

    .line 291
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    .line 293
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MAX_PERCENT:I

    if-ge v0, v1, :cond_1

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz v1, :cond_1

    .line 296
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f110353

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    .line 297
    :cond_1
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->MSM_SEAT_MIN_PERCENT:I

    if-le v0, v1, :cond_2

    if-gt p1, v1, :cond_2

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mControlBtn:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_2

    .line 300
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f110354

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public stopControl()V
    .locals 2

    .line 1016
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1017
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->touchCallback(IZ)V

    .line 1018
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mEventDownButton:I

    :cond_0
    return-void
.end method
