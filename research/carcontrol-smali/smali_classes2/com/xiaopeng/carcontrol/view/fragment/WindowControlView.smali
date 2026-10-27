.class public Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;
.super Lcom/xiaopeng/xui/widget/XConstraintLayout;
.source "WindowControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;
    }
.end annotation


# static fields
.field private static final CONTROL_LEFT_FRONT_MSG_WHAT:I = 0x1

.field private static final CONTROL_LEFT_REAR_MSG_WHAT:I = 0x2

.field private static final CONTROL_POS_MSG_TIME:I = 0x3e8

.field private static final CONTROL_PROTECT_TIME:I = 0x3e8

.field private static final CONTROL_RIGHT_FRONT_MSG_WHAT:I = 0x3

.field private static final CONTROL_RIGHT_REAR_MSG_WHAT:I = 0x4

.field public static final CONTROL_SIDE_LEFT:I = 0x1

.field public static final CONTROL_SIDE_RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowControlView"

.field public static final WIN_LEFT_FRONT_INDEX:I = 0x0

.field public static final WIN_LEFT_REAR_INDEX:I = 0x1

.field public static final WIN_RIGHT_FRONT_INDEX:I = 0x2

.field public static final WIN_RIGHT_REAR_INDEX:I = 0x3


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mControlHandle:Landroid/os/Handler;

.field private mControlSide:I

.field private mControlWinIndex:I

.field private mEventY:F

.field private mFrontLeftLineBitmap:Landroid/graphics/Bitmap;

.field private mFrontLeftMaskBitmap:Landroid/graphics/Bitmap;

.field private mFrontLeftStart:F

.field private mFrontLeftTop:F

.field private mFrontLeftWinBitmap:Landroid/graphics/Bitmap;

.field private mFrontRightLineBitmap:Landroid/graphics/Bitmap;

.field private mFrontRightMaskBitmap:Landroid/graphics/Bitmap;

.field private mFrontRightStart:F

.field private mFrontRightTop:F

.field private mFrontRightWinBitmap:Landroid/graphics/Bitmap;

.field private mLastControlIndex:I

.field private mLastControlTime:J

.field private mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

.field private mLeftRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

.field private mOnWinControlListener:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRearLeftLineBitmap:Landroid/graphics/Bitmap;

.field private mRearLeftMaskBitmap:Landroid/graphics/Bitmap;

.field private mRearLeftStart:F

.field private mRearLeftTop:F

.field private mRearLeftWinBitmap:Landroid/graphics/Bitmap;

.field private mRearRightLineBitmap:Landroid/graphics/Bitmap;

.field private mRearRightMaskBitmap:Landroid/graphics/Bitmap;

.field private mRearRightStart:F

.field private mRearRightTop:F

.field private mRearRightWinBitmap:Landroid/graphics/Bitmap;

.field private mRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

.field private mRightRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlSide:I

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->init()V

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

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlSide:I

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->init()V

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

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlSide:I

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->initDrawable()V

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->endControl(I)V

    return-void
.end method

.method private analysisControlIndex(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchX",
            "touchY"
        }
    .end annotation

    .line 341
    iget p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlSide:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 342
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftWinBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    iget p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftStart:F

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftWinBitmap:Landroid/graphics/Bitmap;

    .line 343
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    const/4 p1, 0x0

    .line 344
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    goto :goto_0

    .line 345
    :cond_0
    iget p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftStart:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 346
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    goto :goto_0

    .line 349
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightWinBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightStart:F

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightWinBitmap:Landroid/graphics/Bitmap;

    .line 350
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    const/4 p1, 0x3

    .line 351
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    goto :goto_0

    .line 352
    :cond_2
    iget p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightStart:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    const/4 p1, 0x2

    .line 353
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    .line 356
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "analysisControlIndex:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowControlView"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private calculateMovePx(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventY"
        }
    .end annotation

    .line 364
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mEventY:F

    sub-float v0, p1, v0

    .line 365
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mEventY:F

    .line 366
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->moveWindow(F)V

    goto :goto_0

    .line 374
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->moveWindow(F)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->moveWindow(F)V

    goto :goto_0

    .line 368
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->moveWindow(F)V

    .line 380
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->invalidate()V

    return-void
.end method

.method private drawTouchLine()V
    .locals 2

    .line 247
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightLineBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080298

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightLineBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightLineBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 262
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080296

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightLineBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftLineBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 256
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080297

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftLineBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 249
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftLineBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 250
    :cond_7
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080295

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftLineBitmap:Landroid/graphics/Bitmap;

    .line 273
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->invalidate()V

    return-void
.end method

.method private endControl(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlIndex"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    if-eq p1, v0, :cond_4

    .line 447
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->controlFinish()V

    .line 448
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightLineBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 449
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 438
    :cond_1
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    if-eq p1, v0, :cond_4

    .line 439
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->controlFinish()V

    .line 440
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightLineBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 441
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 430
    :cond_2
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    if-eq p1, v0, :cond_4

    .line 431
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->controlFinish()V

    .line 432
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftLineBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 433
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 422
    :cond_3
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    if-eqz p1, :cond_4

    .line 423
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->controlFinish()V

    .line 424
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftLineBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 425
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 454
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->postInvalidate()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    .line 108
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mXfermode:Landroid/graphics/Xfermode;

    .line 109
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x11a

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;-><init>(FF)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 111
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;-><init>(FF)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 113
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;-><init>(FF)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 115
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;-><init>(FF)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 117
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->initBitmap()V

    return-void
.end method

.method private initBitmap()V
    .locals 2

    .line 153
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftWinBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 154
    invoke-static {}, Lcom/xiaopeng/BitmapManager;->getInstance()Lcom/xiaopeng/BitmapManager;

    move-result-object v0

    const v1, 0x7f080299

    invoke-virtual {v0, v1}, Lcom/xiaopeng/BitmapManager;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftMaskBitmap:Landroid/graphics/Bitmap;

    .line 155
    invoke-static {}, Lcom/xiaopeng/BitmapManager;->getInstance()Lcom/xiaopeng/BitmapManager;

    move-result-object v0

    const v1, 0x7f08029b

    invoke-virtual {v0, v1}, Lcom/xiaopeng/BitmapManager;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftMaskBitmap:Landroid/graphics/Bitmap;

    .line 156
    invoke-static {}, Lcom/xiaopeng/BitmapManager;->getInstance()Lcom/xiaopeng/BitmapManager;

    move-result-object v0

    const v1, 0x7f08029d

    invoke-virtual {v0, v1}, Lcom/xiaopeng/BitmapManager;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftWinBitmap:Landroid/graphics/Bitmap;

    .line 157
    invoke-static {}, Lcom/xiaopeng/BitmapManager;->getInstance()Lcom/xiaopeng/BitmapManager;

    move-result-object v0

    const v1, 0x7f08029f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/BitmapManager;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftWinBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightWinBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08029a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightMaskBitmap:Landroid/graphics/Bitmap;

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08029c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightMaskBitmap:Landroid/graphics/Bitmap;

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08029e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightWinBitmap:Landroid/graphics/Bitmap;

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802a0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightWinBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method private initHandler()V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlHandle:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlHandle:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private onWinControlChanged()V
    .locals 3

    .line 385
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getControlPos()I

    move-result v0

    .line 409
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mOnWinControlListener:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;->onInterceptControl()Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mOnWinControlListener:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;->onRearRightChanged(I)V

    :cond_1
    const/4 v1, 0x4

    .line 412
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->sendControlMessage(I)V

    goto :goto_0

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getControlPos()I

    move-result v0

    .line 402
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mOnWinControlListener:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;->onInterceptControl()Z

    move-result v2

    if-nez v2, :cond_3

    .line 403
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mOnWinControlListener:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;

    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;->onFrontRightChanged(I)V

    .line 405
    :cond_3
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->sendControlMessage(I)V

    goto :goto_0

    .line 394
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getControlPos()I

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mOnWinControlListener:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;->onInterceptControl()Z

    move-result v1

    if-nez v1, :cond_5

    .line 396
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mOnWinControlListener:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;->onRearLeftChanged(I)V

    .line 398
    :cond_5
    invoke-direct {p0, v2}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->sendControlMessage(I)V

    goto :goto_0

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getControlPos()I

    move-result v0

    .line 388
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mOnWinControlListener:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;->onInterceptControl()Z

    move-result v2

    if-nez v2, :cond_7

    .line 389
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mOnWinControlListener:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;

    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;->onFrontLeftChanged(I)V

    .line 391
    :cond_7
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->sendControlMessage(I)V

    .line 415
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWinControlChanged mControlWinIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowControlView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private recycleBitmap()V
    .locals 3

    .line 224
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlSide:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftWinBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftWinBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftWinBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightWinBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightWinBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightWinBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private sendControlMessage(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 504
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 505
    iput p1, v0, Landroid/os/Message;->what:I

    .line 506
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlHandle:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private themeChange()V
    .locals 0

    .line 584
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->initDrawable()V

    .line 585
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->initBitmap()V

    return-void
.end method


# virtual methods
.method public initDrawable()V
    .locals 7

    .line 126
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlSide:I

    const/16 v1, 0x438

    const/16 v2, 0x780

    const/16 v3, 0x1e4

    const/16 v4, 0x1e6

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_2

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v6, 0x7f080293

    invoke-virtual {v0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0, v5, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3bb

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightStart:F

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightTop:F

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x13d

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightStart:F

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightTop:F

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/xiaopeng/BitmapManager;->getInstance()Lcom/xiaopeng/BitmapManager;

    move-result-object v0

    const v6, 0x7f080294

    invoke-virtual {v0, v6}, Lcom/xiaopeng/BitmapManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 142
    invoke-virtual {v0, v5, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x183

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftStart:F

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftTop:F

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x417

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftStart:F

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftTop:F

    :cond_5
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 578
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onAttachedToWindow()V

    .line 579
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->themeChange()V

    .line 580
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->initHandler()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 512
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 513
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 514
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 515
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 516
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->themeChange()V

    .line 517
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftLineBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080295

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftLineBitmap:Landroid/graphics/Bitmap;

    .line 521
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightLineBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 522
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080296

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightLineBitmap:Landroid/graphics/Bitmap;

    .line 525
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftLineBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 526
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080297

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftLineBitmap:Landroid/graphics/Bitmap;

    .line 529
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightLineBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 530
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080298

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightLineBitmap:Landroid/graphics/Bitmap;

    .line 533
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->invalidate()V

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 591
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onDetachedFromWindow()V

    .line 592
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 593
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 594
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlHandle:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 595
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlHandle:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 596
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlHandle:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 597
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlHandle:Landroid/os/Handler;

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->controlFinish()V

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    if-eqz v0, :cond_2

    .line 603
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->controlFinish()V

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    if-eqz v0, :cond_3

    .line 606
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->controlFinish()V

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    if-eqz v0, :cond_4

    .line 609
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->controlFinish()V

    :cond_4
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 169
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 175
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlSide:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftMaskBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftStart:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftTop:F

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 177
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftMaskBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftStart:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftTop:F

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 179
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftWinBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftStart:F

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 180
    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getRealMoveX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftTop:F

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 181
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getRealMoveY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    .line 179
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftWinBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftStart:F

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getRealMoveX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftTop:F

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 183
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getRealMoveY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    .line 182
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 185
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->isControl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftLineBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftStart:F

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 187
    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getControlX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftTop:F

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 188
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getControlY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    .line 186
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->isControl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftLineBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftStart:F

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 192
    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getControlX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftTop:F

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 193
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getControlY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    .line 191
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 195
    :cond_2
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 196
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightMaskBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightStart:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightTop:F

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 198
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightMaskBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightStart:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightTop:F

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 199
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 200
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightWinBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightStart:F

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getRealMoveX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightTop:F

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 201
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getRealMoveY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    .line 200
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightWinBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightStart:F

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getRealMoveX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightTop:F

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 203
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getRealMoveY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    .line 202
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 204
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->isControl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightLineBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightStart:F

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 206
    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getControlX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightTop:F

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 207
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getControlY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    .line 205
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 209
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->isControl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightLineBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightStart:F

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 211
    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getControlX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightTop:F

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    .line 212
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getControlY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    .line 210
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 215
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 216
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 217
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->recycleBitmap()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_1

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mOnWinControlListener:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;->onInterceptControl()Z

    move-result v0

    if-nez v0, :cond_8

    .line 321
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->calculateMovePx(F)V

    goto/16 :goto_1

    .line 326
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->onWinControlChanged()V

    .line 327
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLastControlIndex:I

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLastControlTime:J

    .line 329
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    goto/16 :goto_1

    .line 285
    :cond_3
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlSide:I

    if-ne v0, v2, :cond_4

    .line 286
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftStart:F

    .line 287
    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearLeftStart:F

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x230

    invoke-static {v4, v5}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 288
    iget v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontLeftTop:F

    .line 289
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x137

    invoke-static {v5, v6}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    goto :goto_0

    .line 291
    :cond_4
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightStart:F

    .line 292
    iget v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightStart:F

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x20f

    invoke-static {v4, v5}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 293
    iget v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRearRightTop:F

    .line 294
    iget v5, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mFrontRightTop:F

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x118

    invoke-static {v6, v7}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 296
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "touchStart:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",touchEnd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",touchTop:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",touchBottom:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",getX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",getY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowControlView"

    .line 296
    invoke-static {v7, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpg-float v0, v6, v0

    if-ltz v0, :cond_9

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_9

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_9

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    goto :goto_2

    .line 306
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mEventY:F

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mOnWinControlListener:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;->onInterceptControl()Z

    move-result v0

    if-nez v0, :cond_8

    .line 308
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->analysisControlIndex(FF)V

    .line 310
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLastControlIndex:I

    if-ne p1, v0, :cond_7

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLastControlTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long p1, v3, v5

    if-gez p1, :cond_7

    .line 312
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlWinIndex:I

    const/4 p1, 0x0

    return p1

    .line 316
    :cond_7
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->drawTouchLine()V

    :cond_8
    :goto_1
    return v2

    .line 304
    :cond_9
    :goto_2
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setControlSide(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "side"
        }
    .end annotation

    .line 491
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlSide:I

    if-eq v0, p1, :cond_0

    .line 492
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mControlSide:I

    .line 493
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->initDrawable()V

    .line 495
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->initBitmap()V

    .line 496
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLeftFrontWinPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->setWindowPos(II)V

    .line 459
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->postInvalidate()V

    .line 460
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->isControl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 461
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->sendControlMessage(I)V

    :cond_0
    return-void
.end method

.method public setLeftRearWinPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->setWindowPos(II)V

    .line 467
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->postInvalidate()V

    .line 468
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mLeftRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->isControl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 469
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->sendControlMessage(I)V

    :cond_0
    return-void
.end method

.method public setRightFrontWinPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->setWindowPos(II)V

    .line 475
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->postInvalidate()V

    .line 476
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightFrontWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->isControl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 477
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->sendControlMessage(I)V

    :cond_0
    return-void
.end method

.method public setRightRearWinPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->setWindowPos(II)V

    .line 483
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->postInvalidate()V

    .line 484
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mRightRearWin:Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->isControl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 485
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->sendControlMessage(I)V

    :cond_0
    return-void
.end method

.method public setWinControlListener(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onWinControlListener"
        }
    .end annotation

    .line 565
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->mOnWinControlListener:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;

    return-void
.end method
