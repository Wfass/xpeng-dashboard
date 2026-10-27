.class public abstract Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;
.super Landroid/view/View;
.source "BaseSeatControlView.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/view/ISeatView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonTouchListener;,
        Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;,
        Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$ControlBtn;
    }
.end annotation


# static fields
.field protected static final BUTTON_BACK_DOWN:I = 0x6

.field protected static final BUTTON_BACK_UP:I = 0x5

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

.field protected static CONTROL_MODE_CHAIR:I = 0x1

.field protected static CONTROL_MODE_CUSHION:I = 0x4

.field protected static CONTROL_MODE_LEG:I = 0x3

.field protected static CONTROL_MODE_LUMBAR:I = 0x2

.field protected static CONTROL_MODE_SECOND_ROW:I = 0x5

.field public static final DIRECTION_BACK_DOWN:I = 0x2

.field public static final DIRECTION_FRONT_UP:I = 0x1


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mBtnPressed:Z

.field private mControlBtn:I

.field protected mControlMode:I

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mEventDownButton:I

.field protected mHorPosition:I

.field protected mLegHorPosition:I

.field protected mLegVerPosition:I

.field protected mMidDownDisable:Landroid/graphics/drawable/Drawable;

.field protected mMidDownEnable:Landroid/graphics/drawable/Drawable;

.field protected mMidDownPressed:Landroid/graphics/drawable/Drawable;

.field private mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

.field private mOnButtonTouchListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonTouchListener;

.field protected mTiltPosition:I

.field protected mVerPosition:I


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

    .line 96
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "BaseSeatControlView"

    .line 29
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->TAG:Ljava/lang/String;

    .line 51
    sget v0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->CONTROL_MODE_CHAIR:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlMode:I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mTiltPosition:I

    .line 61
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mMidDownPressed:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "BaseSeatControlView"

    .line 29
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->TAG:Ljava/lang/String;

    .line 51
    sget p2, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->CONTROL_MODE_CHAIR:I

    iput p2, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlMode:I

    const/4 p2, 0x0

    .line 52
    iput p2, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mTiltPosition:I

    .line 61
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    const/4 p2, 0x0

    .line 65
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mMidDownPressed:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->initView(Landroid/content/Context;)V

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

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "BaseSeatControlView"

    .line 29
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->TAG:Ljava/lang/String;

    .line 51
    sget p2, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->CONTROL_MODE_CHAIR:I

    iput p2, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlMode:I

    const/4 p2, 0x0

    .line 52
    iput p2, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mTiltPosition:I

    .line 61
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    const/4 p2, 0x0

    .line 65
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mMidDownPressed:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private checkPositionOnTouchDown()V
    .locals 4

    .line 331
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    const/4 v1, 0x1

    const/16 v2, 0x62

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x7

    if-eq v0, v3, :cond_3

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 384
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mLegHorPosition:I

    if-lt v0, v2, :cond_8

    .line 385
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_leg_min_toast:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 379
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mLegHorPosition:I

    if-gt v0, v1, :cond_8

    .line 380
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_leg_max_toast:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 374
    :cond_2
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mLegVerPosition:I

    if-gt v0, v1, :cond_8

    .line 375
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_cushion_min_toast:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 369
    :cond_3
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mLegVerPosition:I

    if-lt v0, v2, :cond_8

    .line 370
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_cushion_max_toast:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 348
    :cond_4
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mVerPosition:I

    if-gt v0, v1, :cond_8

    .line 349
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_ver_min_toast:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 343
    :cond_5
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mVerPosition:I

    if-lt v0, v2, :cond_8

    .line 344
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_ver_max_toast:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 338
    :cond_6
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mHorPosition:I

    if-gt v0, v1, :cond_8

    .line 339
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_horz_min_toast:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 333
    :cond_7
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mHorPosition:I

    if-lt v0, v2, :cond_8

    .line 334
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_horz_max_toast:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_8
    :goto_0
    return-void
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

    .line 406
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->needPressedStatus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    .line 410
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlBtn:I

    .line 411
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method private onTouchDown()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonTouchListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonTouchListener;

    if-eqz v0, :cond_0

    .line 395
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonTouchListener;->onButtonTouchDown()V

    :cond_0
    return-void
.end method

.method private onTouchUp()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonTouchListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonTouchListener;

    if-eqz v0, :cond_0

    .line 401
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonTouchListener;->onButtonTouchUp()V

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

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "touchCallback button "

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

    .line 463
    :pswitch_0
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mLegHorPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onLegHorTouched(ZI)V

    goto/16 :goto_0

    .line 458
    :pswitch_1
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mLegHorPosition:I

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 459
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onLegHorTouched(ZI)V

    goto/16 :goto_0

    .line 477
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onLumbarVerTouched(ZI)V

    goto/16 :goto_0

    .line 474
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onLumbarVerTouched(ZI)V

    goto/16 :goto_0

    .line 471
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onLumbarHorTouched(ZI)V

    goto/16 :goto_0

    .line 468
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onLumbarHorTouched(ZI)V

    goto/16 :goto_0

    .line 453
    :pswitch_6
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mLegVerPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 454
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onLegTouched(ZI)V

    goto :goto_0

    .line 448
    :pswitch_7
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mLegVerPosition:I

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 449
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onLegTouched(ZI)V

    goto :goto_0

    .line 443
    :pswitch_8
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mTiltPosition:I

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 444
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onTiltTouched(ZI)V

    goto :goto_0

    .line 438
    :pswitch_9
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mTiltPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 439
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onTiltTouched(ZI)V

    goto :goto_0

    .line 433
    :pswitch_a
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mVerPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 434
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onSeatVerTouched(ZI)V

    goto :goto_0

    .line 428
    :pswitch_b
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mVerPosition:I

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 429
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onSeatVerTouched(ZI)V

    goto :goto_0

    .line 423
    :pswitch_c
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mHorPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 424
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onSeatHorTouched(ZI)V

    goto :goto_0

    .line 418
    :pswitch_d
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mHorPosition:I

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 419
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;->onSeatHorTouched(ZI)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
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

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 277
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
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

    .line 494
    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->isButtonEnable(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->needPressedStatus()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlBtn:I

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mMidDownPressed:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    return-object p1

    .line 498
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mMidDownEnable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 501
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mMidDownDisable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getTiltPosition()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mTiltPosition:I

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

    .line 568
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 569
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->onThemeChanged()V

    .line 570
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->invalidate()V

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

    .line 507
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 508
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->onThemeChanged()V

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

    .line 257
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

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

    .line 282
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 285
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 307
    :cond_1
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    if-eqz p1, :cond_5

    .line 308
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->onTouchUp()V

    .line 309
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->touchCallback(IZ)V

    .line 310
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->handlePressed(IZ)V

    .line 311
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->resolveBtnWithMode(FF)I

    move-result p1

    .line 299
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    if-eq p1, v0, :cond_5

    if-eqz v0, :cond_5

    .line 300
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->onTouchUp()V

    .line 301
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->touchCallback(IZ)V

    .line 302
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->handlePressed(IZ)V

    .line 303
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    goto :goto_0

    .line 315
    :cond_3
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    if-eqz p1, :cond_5

    .line 316
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->onTouchUp()V

    .line 317
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->touchCallback(IZ)V

    .line 318
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->handlePressed(IZ)V

    .line 319
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    return v2

    .line 287
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->resolveBtnWithMode(FF)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    if-eqz p1, :cond_5

    .line 289
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->checkPositionOnTouchDown()V

    .line 290
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->onTouchDown()V

    .line 291
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->playSoundEffect(I)V

    .line 292
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->touchCallback(IZ)V

    .line 293
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->handlePressed(IZ)V

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

    .line 218
    sget v0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->CONTROL_MODE_CHAIR:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlMode:I

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModeCushion()V
    .locals 1

    .line 234
    sget v0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->CONTROL_MODE_CUSHION:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlMode:I

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModeLeg()V
    .locals 1

    .line 242
    sget v0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->CONTROL_MODE_LEG:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlMode:I

    .line 243
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModeLumbar()V
    .locals 1

    .line 226
    sget v0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->CONTROL_MODE_LUMBAR:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlMode:I

    .line 227
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setControlModeSecondRow()V
    .locals 1

    .line 251
    sget v0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->CONTROL_MODE_SECOND_ROW:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlMode:I

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->invalidate()V

    return-void
.end method

.method public setHorPosition(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHorPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 138
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mHorPosition:I

    .line 139
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mHorPosition:I

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->invalidate()V

    const/16 v1, 0x62

    if-ge v0, v1, :cond_0

    if-lt p1, v1, :cond_0

    .line 142
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlBtn:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    if-eqz v1, :cond_0

    .line 145
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_horz_max_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    if-gt p1, v1, :cond_1

    .line 146
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlBtn:I

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_1

    .line 149
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_horz_min_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLegHorPosition(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLegHorPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 198
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mLegHorPosition:I

    .line 199
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mLegHorPosition:I

    .line 200
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->invalidate()V

    const/16 v1, 0x62

    if-ge v0, v1, :cond_0

    if-lt p1, v1, :cond_0

    .line 202
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlBtn:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    if-eqz v1, :cond_0

    .line 205
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_leg_max_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    if-gt p1, v1, :cond_1

    .line 206
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlBtn:I

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_1

    .line 209
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_leg_min_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLegVerPosition(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLegVerPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 178
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mLegVerPosition:I

    .line 179
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mLegVerPosition:I

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->invalidate()V

    const/16 v1, 0x62

    if-ge v0, v1, :cond_0

    if-lt p1, v1, :cond_0

    .line 182
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlBtn:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    if-eqz v1, :cond_0

    .line 185
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_cushion_max_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    if-gt p1, v1, :cond_1

    .line 186
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlBtn:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_1

    .line 189
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_cushion_min_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnButtonClickListener(Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onButtonClickListener"
        }
    .end annotation

    .line 563
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    return-void
.end method

.method public setOnButtonTouchListener(Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onButtonTouchListener"
        }
    .end annotation

    .line 552
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonTouchListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonTouchListener;

    return-void
.end method

.method public setTiltPosition(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTiltPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 114
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mTiltPosition:I

    .line 115
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mTiltPosition:I

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->invalidate()V

    const/16 v1, 0x62

    if-ge v0, v1, :cond_0

    if-lt p1, v1, :cond_0

    .line 118
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlBtn:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    if-eqz v1, :cond_0

    .line 121
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_tilt_max_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    if-gt p1, v1, :cond_1

    .line 122
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlBtn:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_1

    .line 125
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_tilt_min_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVerPosition(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVerPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSeatControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 158
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mVerPosition:I

    .line 159
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mVerPosition:I

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->invalidate()V

    const/16 v1, 0x62

    if-ge v0, v1, :cond_0

    if-lt p1, v1, :cond_0

    .line 162
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlBtn:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    if-eqz v1, :cond_0

    .line 165
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_ver_max_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    if-gt p1, v1, :cond_1

    .line 166
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mControlBtn:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mBtnPressed:Z

    if-eqz p1, :cond_1

    .line 169
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_ver_min_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopControl()V
    .locals 2

    .line 556
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mOnButtonClickListener:Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 557
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->touchCallback(IZ)V

    .line 558
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/BaseSeatControlView;->mEventDownButton:I

    :cond_0
    return-void
.end method
