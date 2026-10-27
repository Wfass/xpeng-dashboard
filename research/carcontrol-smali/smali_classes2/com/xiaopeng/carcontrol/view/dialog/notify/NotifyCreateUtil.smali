.class public Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;
.super Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;
.source "NotifyCreateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil$SingleHolder;
    }
.end annotation


# instance fields
.field private PGeardismissRunnable:Ljava/lang/Runnable;

.field protected final TAG:Ljava/lang/String;

.field private TrdSeatTiltRunnable:Ljava/lang/Runnable;

.field private bitmapDone:Landroid/graphics/Bitmap;

.field private bitmapFastCharge:Landroid/graphics/Bitmap;

.field private bitmapFastChargeNight:Landroid/graphics/Bitmap;

.field private bitmapLeftDoor:Landroid/graphics/Bitmap;

.field private bitmapLeftDoorNight:Landroid/graphics/Bitmap;

.field private bitmapLoad:Landroid/graphics/Bitmap;

.field private bitmapMirror:Landroid/graphics/Bitmap;

.field private bitmapQR:Landroid/graphics/Bitmap;

.field private bitmapRecover:Landroid/graphics/Bitmap;

.field private bitmapRightDoor:Landroid/graphics/Bitmap;

.field private bitmapRightDoorNight:Landroid/graphics/Bitmap;

.field private bitmapSave:Landroid/graphics/Bitmap;

.field private bitmapSaveAs:Landroid/graphics/Bitmap;

.field private bitmapSlowCharge:Landroid/graphics/Bitmap;

.field private bitmapSlowChargeNight:Landroid/graphics/Bitmap;

.field private bitmapSteer:Landroid/graphics/Bitmap;

.field private bitmapTrunk:Landroid/graphics/Bitmap;

.field private bitmapTrunkNight:Landroid/graphics/Bitmap;

.field private disableReadyDialogRunnable:Ljava/lang/Runnable;

.field private drawableDone:Landroid/graphics/drawable/Drawable;

.field private drawableLoad:Landroid/graphics/drawable/Drawable;

.field private drawableMirror:Landroid/graphics/drawable/Drawable;

.field private drawableRecover:Landroid/graphics/drawable/Drawable;

.field private drawableSave:Landroid/graphics/drawable/Drawable;

.field private drawableSaveAs:Landroid/graphics/drawable/Drawable;

.field private drawableSteer:Landroid/graphics/drawable/Drawable;

.field private drvRunnable:Ljava/lang/Runnable;

.field private intentAc:Landroid/content/Intent;

.field private intentDc:Landroid/content/Intent;

.field private intentDrvDoorOPen:Landroid/content/Intent;

.field private intentEasyLoading:Landroid/content/Intent;

.field private intentMirror:Landroid/content/Intent;

.field private intentPsnDoorOpen:Landroid/content/Intent;

.field private intentRecover:Landroid/content/Intent;

.field private intentRetest:Landroid/content/Intent;

.field private intentSave:Landroid/content/Intent;

.field private intentSeatSpeech:Landroid/content/Intent;

.field private intentSeatSpeechDismiss:Landroid/content/Intent;

.field private intentSteer:Landroid/content/Intent;

.field private intentTrunkClose:Landroid/content/Intent;

.field private intentTrunkOpen:Landroid/content/Intent;

.field private intentZeroRest:Landroid/content/Intent;

.field private isNight:Z

.field private nfcOverTimeRunnable:Ljava/lang/Runnable;

.field private pendingIntentAc:Landroid/app/PendingIntent;

.field private pendingIntentDc:Landroid/app/PendingIntent;

.field private pendingIntentDrvDoorOPen:Landroid/app/PendingIntent;

.field private pendingIntentEasyLoading:Landroid/app/PendingIntent;

.field private pendingIntentMirror:Landroid/app/PendingIntent;

.field private pendingIntentPsnDoorOpen:Landroid/app/PendingIntent;

.field private pendingIntentReTest:Landroid/app/PendingIntent;

.field private pendingIntentRecover:Landroid/app/PendingIntent;

.field private pendingIntentReset:Landroid/app/PendingIntent;

.field private pendingIntentSave:Landroid/app/PendingIntent;

.field private pendingIntentSeatSpeech:Landroid/app/PendingIntent;

.field private pendingIntentSeatSpeechDismiss:Landroid/app/PendingIntent;

.field private pendingIntentSteer:Landroid/app/PendingIntent;

.field private pendingIntentTrunkClose:Landroid/app/PendingIntent;

.field private pendingIntentTrunkOpen:Landroid/app/PendingIntent;

.field private pendingNullIntent:Landroid/app/PendingIntent;

.field private psnRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;-><init>()V

    const-string v0, "NotifyCreateUtil"

    .line 38
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->TAG:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->isNight:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;
    .locals 1

    .line 58
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v0

    return-object v0
.end method

.method private initSeatDrawable(Landroid/content/Context;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "isDrv",
            "isLog"
        }
    .end annotation

    .line 433
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->isNight:Z

    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 434
    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->isNight:Z

    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableRecover:Landroid/graphics/drawable/Drawable;

    .line 436
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSave:Landroid/graphics/drawable/Drawable;

    .line 437
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableDone:Landroid/graphics/drawable/Drawable;

    .line 438
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableLoad:Landroid/graphics/drawable/Drawable;

    .line 439
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableMirror:Landroid/graphics/drawable/Drawable;

    .line 440
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSaveAs:Landroid/graphics/drawable/Drawable;

    .line 441
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSteer:Landroid/graphics/drawable/Drawable;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSave:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSave:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 444
    :cond_1
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_common_save_o:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSave:Landroid/graphics/drawable/Drawable;

    .line 445
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSave:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSave:Landroid/graphics/Bitmap;

    .line 446
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSave:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 447
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSave:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSave:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 448
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSave:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableRecover:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRecover:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 451
    :cond_3
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$drawable;->x_ic_common_reset_o:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableRecover:Landroid/graphics/drawable/Drawable;

    .line 452
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableRecover:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRecover:Landroid/graphics/Bitmap;

    .line 453
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRecover:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 454
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableRecover:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableRecover:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 455
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableRecover:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 457
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableDone:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapDone:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 458
    :cond_5
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_common_selection_o:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableDone:Landroid/graphics/drawable/Drawable;

    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$color;->x_color_primary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableDone:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableDone:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapDone:Landroid/graphics/Bitmap;

    .line 461
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapDone:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 462
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableDone:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableDone:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 463
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableDone:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 465
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableLoad:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapLoad:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    .line 466
    :cond_7
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_common_loading_o:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableLoad:Landroid/graphics/drawable/Drawable;

    .line 467
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableLoad:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapLoad:Landroid/graphics/Bitmap;

    .line 468
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapLoad:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 469
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableLoad:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableLoad:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 470
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableLoad:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    if-eqz p2, :cond_e

    .line 473
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableMirror:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapMirror:Landroid/graphics/Bitmap;

    if-nez p2, :cond_a

    .line 475
    :cond_9
    sget p2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_app_mirror_o:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableMirror:Landroid/graphics/drawable/Drawable;

    .line 476
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableMirror:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapMirror:Landroid/graphics/Bitmap;

    .line 477
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapMirror:Landroid/graphics/Bitmap;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableMirror:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableMirror:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableMirror:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    if-eqz p3, :cond_c

    .line 481
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSaveAs:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSaveAs:Landroid/graphics/Bitmap;

    if-nez p2, :cond_c

    .line 482
    :cond_b
    sget p2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_common_saveas_o:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSaveAs:Landroid/graphics/drawable/Drawable;

    .line 483
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSaveAs:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSaveAs:Landroid/graphics/Bitmap;

    .line 484
    new-instance p2, Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSaveAs:Landroid/graphics/Bitmap;

    invoke-direct {p2, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 485
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSaveAs:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSaveAs:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p3, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 486
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSaveAs:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 488
    :cond_c
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSteer:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSteer:Landroid/graphics/Bitmap;

    if-nez p2, :cond_e

    .line 489
    :cond_d
    sget p2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_carcontrol_wheel_s:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSteer:Landroid/graphics/drawable/Drawable;

    .line 490
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSteer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSteer:Landroid/graphics/Bitmap;

    .line 491
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSteer:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 492
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSteer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSteer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p2, v1, v1, p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 493
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drawableSteer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_e
    return-void
.end method

.method static synthetic lambda$createReadyDisableNotification$3(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "notifyId"
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method static synthetic lambda$createTrdSeatTiltNotification$5(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "notifyId"
        }
    .end annotation

    .line 304
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method


# virtual methods
.method public cancelNotificationByID(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "notifyId"
        }
    .end annotation

    .line 425
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 426
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    sput-object p1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    .line 428
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelNotificationByID notifyId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "NotifyCreateUtil"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 429
    sget-object p1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public createDrvSeatNotification(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 29
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "notifyId",
            "isLogin",
            "groupName"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x1

    .line 62
    invoke-direct {v0, v1, v5, v4}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->initSeatDrawable(Landroid/content/Context;ZZ)V

    .line 63
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSave:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRecover:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapMirror:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSteer:Landroid/graphics/Bitmap;

    if-nez v6, :cond_0

    goto/16 :goto_1

    .line 68
    :cond_0
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drvRunnable:Ljava/lang/Runnable;

    if-nez v6, :cond_1

    .line 69
    new-instance v6, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$TQcP6NOJkN4aq96rBTkor1VtOYs;

    invoke-direct {v6, v0, v1, v3}, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$TQcP6NOJkN4aq96rBTkor1VtOYs;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;Landroid/content/Context;I)V

    iput-object v6, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drvRunnable:Ljava/lang/Runnable;

    .line 71
    :cond_1
    sget-object v6, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drvRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    sget-object v6, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drvRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x1388

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    new-instance v6, Landroid/app/NotificationChannel;

    const/4 v8, 0x4

    const-string v9, "createDrvSeatNotification"

    invoke-direct {v6, v2, v9, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 75
    sget-object v8, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v8, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 76
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "com.xiaopeng.carcontrol.intent.action.ACTION_PROCESS_SEAT_NOTIFY"

    .line 79
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v15, "xpCarControl_SeatNotify"

    const-string/jumbo v9, "seat_save"

    invoke-virtual {v8, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    iput-object v8, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentSave:Landroid/content/Intent;

    const/high16 v14, 0x4000000

    .line 80
    invoke-static {v1, v7, v8, v14}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentSave:Landroid/app/PendingIntent;

    .line 81
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "seat_mirror"

    invoke-virtual {v8, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    iput-object v8, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentMirror:Landroid/content/Intent;

    const/4 v9, 0x3

    .line 82
    invoke-static {v1, v9, v8, v14}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentMirror:Landroid/app/PendingIntent;

    .line 83
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "seat_restore"

    invoke-virtual {v8, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    iput-object v8, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentRecover:Landroid/content/Intent;

    .line 84
    invoke-static {v1, v5, v8, v14}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentRecover:Landroid/app/PendingIntent;

    const/16 v8, 0x20

    .line 86
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object v8

    if-eqz v4, :cond_2

    sget v9, Lcom/xiaopeng/carcontrolmodule/R$string;->tip_seat_changed_with_login:I

    .line 87
    invoke-static {v9}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-array v10, v5, [Ljava/lang/Object;

    aput-object p5, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    sget v7, Lcom/xiaopeng/carcontrolmodule/R$string;->tip_seat_changed:I

    invoke-static {v7}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-string v8, "default"

    .line 88
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    sget v8, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_carcontrol:I

    .line 89
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v16

    iget-object v7, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSave:Landroid/graphics/Bitmap;

    sget v8, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_memory:I

    .line 90
    invoke-static {v8}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    iget-object v8, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentSave:Landroid/app/PendingIntent;

    move-object/from16 v17, v7

    move-object/from16 v18, v7

    move-object/from16 v22, v8

    invoke-virtual/range {v16 .. v22}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v22

    iget-object v7, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRecover:Landroid/graphics/Bitmap;

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget-object v8, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentRecover:Landroid/app/PendingIntent;

    const-string v25, ""

    move-object/from16 v23, v7

    move-object/from16 v24, v7

    move-object/from16 v28, v8

    .line 91
    invoke-virtual/range {v22 .. v28}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 92
    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setShowLong(I)Landroid/app/Notification$Builder;

    if-eqz v4, :cond_3

    .line 94
    iget-object v11, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapMirror:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentMirror:Landroid/app/PendingIntent;

    const-string v12, ""

    move-object v9, v6

    move-object v10, v11

    move v7, v14

    move v14, v4

    move-object v4, v15

    move-object v15, v5

    invoke-virtual/range {v9 .. v15}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string v5, "isSupportControlSteer"

    .line 95
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "seat_steer"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentSteer:Landroid/content/Intent;

    const/4 v4, 0x2

    .line 97
    invoke-static {v1, v4, v2, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    iput-object v15, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentSteer:Landroid/app/PendingIntent;

    .line 98
    iget-object v11, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSteer:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v12, ""

    move-object v9, v6

    move-object v10, v11

    invoke-virtual/range {v9 .. v15}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 101
    :cond_3
    new-instance v1, Landroid/app/Notification$ViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$ViewStyle;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    .line 102
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 103
    sget-object v2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_4
    :goto_1
    const-string v1, "NotifyCreateUtil"

    const-string v2, "createDrvSeatNotification bitmap = null"

    .line 64
    invoke-static {v1, v2, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public createGearChangeNotification(Landroid/content/Context;Ljava/lang/String;IZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "notifyId",
            "isRL",
            "isRr"
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 187
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    .line 189
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    const-string v2, "createPGearNotification"

    invoke-direct {v0, p2, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 190
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/high16 v0, 0x4000000

    const-string/jumbo v1, "xpCarControl_SeatNotify"

    const-string v2, "com.xiaopeng.carcontrol.intent.action.ACTION_PROCESS_SEAT_NOTIFY"

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 193
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const-string p5, "all_seat_zero_reset"

    invoke-virtual {p4, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentZeroRest:Landroid/content/Intent;

    const/16 p5, 0xe

    .line 194
    invoke-static {p1, p5, p4, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentReset:Landroid/app/PendingIntent;

    goto :goto_2

    .line 196
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p5

    if-eqz p4, :cond_2

    const-string/jumbo v2, "rl_seat_zero_reset"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "rr_seat_zero_reset"

    :goto_0
    invoke-virtual {p5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p5

    iput-object p5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentZeroRest:Landroid/content/Intent;

    if-eqz p4, :cond_3

    const/16 p4, 0xc

    goto :goto_1

    :cond_3
    const/16 p4, 0xd

    .line 197
    :goto_1
    invoke-static {p1, p4, p5, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentReset:Landroid/app/PendingIntent;

    .line 200
    :goto_2
    new-instance p4, Landroid/app/Notification$Builder;

    invoke-direct {p4, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 201
    invoke-virtual {p4, p1}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->p_gear_change_zero_notify_tts:I

    .line 202
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setTtsText(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 203
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setTtsOpen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p5, Lcom/xiaopeng/carcontrolmodule/R$string;->p_gear_change_zero_notify_title:I

    .line 204
    invoke-static {p5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p5, Lcom/xiaopeng/carcontrolmodule/R$string;->p_gear_change_zero_notify:I

    .line 205
    invoke-static {p5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p5, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_unlock_s:I

    .line 206
    invoke-virtual {p1, p5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p5, 0x0

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->zero_reset:I

    .line 207
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentReset:Landroid/app/PendingIntent;

    invoke-virtual {p1, p5, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p5, "error"

    .line 208
    invoke-virtual {p1, p5}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setMsgMajorPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance p5, Landroid/app/Notification$ViewStyle;

    invoke-direct {p5}, Landroid/app/Notification$ViewStyle;-><init>()V

    .line 210
    invoke-virtual {p5, p2}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    .line 211
    invoke-virtual {p4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 212
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public createKeyLeaveCarNotification(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "notifyId"
        }
    .end annotation

    .line 311
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 312
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    .line 314
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    const-string v2, "createKeyLeaveCarNotification"

    invoke-direct {v0, p2, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 315
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 317
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->ket_leave_car_notify_title:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/16 p2, 0x20

    .line 319
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->ket_leave_car_notify_text:I

    .line 320
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_unlock_s:I

    .line 321
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p2, "default"

    .line 322
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 323
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setMsgMajorPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v1, Landroid/app/Notification$ViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$ViewStyle;-><init>()V

    .line 324
    invoke-virtual {v1, p2}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    .line 325
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 326
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public createNfcOverTimeNotification(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "notifyId"
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 259
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->nfcOverTimeRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 263
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$vO6iYseK7wRV6mBTOXmOAU7xf1w;

    invoke-direct {v0, p0, p1, p3}, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$vO6iYseK7wRV6mBTOXmOAU7xf1w;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->nfcOverTimeRunnable:Ljava/lang/Runnable;

    .line 265
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->nfcOverTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 266
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->nfcOverTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    const-string v2, "createNfcOverTimeNotification"

    invoke-direct {v0, p2, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 269
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_CLOSE_READY_NFC_OVERTIME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->nfc_over_time_day:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->nfc_over_time_night:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 274
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 275
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->nfc_over_time_notify_title:I

    .line 276
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->nfc_over_time_notify_text:I

    .line 277
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_unlock_s:I

    .line 278
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p2, "error"

    .line 279
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$ViewStyle;

    invoke-direct {p2}, Landroid/app/Notification$ViewStyle;-><init>()V

    const/4 v2, 0x1

    .line 280
    invoke-virtual {p2, v2}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/app/Notification$ViewStyle;->bigPicture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/app/Notification$ViewStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "isRightIconCard"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 283
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public createPsnSeatNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "notifyId",
            "name",
            "isSaveDone"
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->initSeatDrawable(Landroid/content/Context;ZZ)V

    .line 108
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSave:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRecover:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drvRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 113
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$qR2tK2maf2Az6HY98-DKm4pxiew;

    invoke-direct {v1, p0, p1, p3}, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$qR2tK2maf2Az6HY98-DKm4pxiew;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drvRunnable:Ljava/lang/Runnable;

    .line 115
    :cond_1
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drvRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drvRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "createPsnSeatNotification"

    const/4 v3, 0x4

    invoke-direct {v1, p2, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 119
    sget-object v2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_PROCESS_SEAT_NOTIFY"

    .line 122
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "xpCarControl_SeatNotify"

    const-string v5, "psn_seat_save"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentSave:Landroid/content/Intent;

    const/high16 v5, 0x4000000

    .line 123
    invoke-static {p1, v3, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentSave:Landroid/app/PendingIntent;

    .line 124
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "psn_seat_restore"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentRecover:Landroid/content/Intent;

    const/4 v2, 0x5

    .line 125
    invoke-static {p1, v2, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentRecover:Landroid/app/PendingIntent;

    const/16 v1, 0xa

    .line 126
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentNull:Landroid/content/Intent;

    invoke-static {p1, v1, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingNullIntent:Landroid/app/PendingIntent;

    .line 128
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 130
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->tip_seat_changed_with_login_psn:I

    .line 131
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p4, v4, v0

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p2, "default"

    .line 132
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_carcontrol:I

    .line 133
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$ViewStyle;

    invoke-direct {p2}, Landroid/app/Notification$ViewStyle;-><init>()V

    .line 134
    invoke-virtual {p2, v2}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setShowLong(I)Landroid/app/Notification$Builder;

    if-eqz p5, :cond_2

    .line 137
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapDone:Landroid/graphics/Bitmap;

    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_save_done_title:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingNullIntent:Landroid/app/PendingIntent;

    move-object v3, v1

    move-object v4, v5

    invoke-virtual/range {v3 .. v9}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 138
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRecover:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentRecover:Landroid/app/PendingIntent;

    const-string v6, ""

    move-object v4, v5

    invoke-virtual/range {v3 .. v9}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 140
    :cond_2
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSave:Landroid/graphics/Bitmap;

    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_memory:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentSave:Landroid/app/PendingIntent;

    move-object v3, v1

    move-object v4, v5

    invoke-virtual/range {v3 .. v9}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 141
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRecover:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentRecover:Landroid/app/PendingIntent;

    const-string v6, ""

    move-object v4, v5

    invoke-virtual/range {v3 .. v9}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 143
    :goto_0
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 144
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public createReadyDisableNotification(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "notifyId",
            "isKeyConnected",
            "userInfo",
            "isPhoneLocationOutside",
            "firstShowNotReadyNotification"
        }
    .end annotation

    .line 216
    sget-object p5, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez p5, :cond_0

    const-string p5, "notification"

    .line 217
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/NotificationManager;

    sput-object p5, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    :cond_0
    const-string p5, "isExportVersion"

    .line 219
    invoke-static {p5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$drawable;->xp_qr_code_ev:I

    invoke-static {p5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p5

    iput-object p5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapQR:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$drawable;->xp_qr_code:I

    invoke-static {p5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p5

    iput-object p5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapQR:Landroid/graphics/Bitmap;

    .line 226
    :goto_0
    new-instance p5, Landroid/app/NotificationChannel;

    const/4 v0, 0x4

    const-string v1, "createReadyDisableNotification"

    invoke-direct {p5, p2, v1, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 227
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const-string p5, "com.xiaopeng.carcontrol.intent.action.ACTION_PROCESS_SEAT_NOTIFY"

    .line 229
    invoke-virtual {p0, p5}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p5

    const-string/jumbo v0, "xpCarControl_SeatNotify"

    const-string/jumbo v1, "show_dialog_ready_disable"

    invoke-virtual {p5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p5

    iput-object p5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentRetest:Landroid/content/Intent;

    const-string/jumbo v0, "show_key_connected"

    .line 230
    invoke-virtual {p5, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    iget-object p5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentRetest:Landroid/content/Intent;

    const-string/jumbo v0, "show_phone_location_outside"

    invoke-virtual {p5, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p5, 0x23

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentRetest:Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-static {p1, p5, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p5

    iput-object p5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentReTest:Landroid/app/PendingIntent;

    .line 234
    new-instance p5, Landroid/app/Notification$Builder;

    invoke-direct {p5, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 235
    invoke-virtual {p5, p1}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_unlock_s:I

    .line 236
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->ready_disable_error_title_common:I

    .line 237
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p2, "error"

    .line 238
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const-string p1, "foundKeyCardDesc"

    const/4 p2, 0x2

    if-eqz p7, :cond_2

    .line 240
    new-instance p7, Landroid/app/Notification$ViewStyle;

    invoke-direct {p7}, Landroid/app/Notification$ViewStyle;-><init>()V

    invoke-virtual {p7, p2}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    .line 241
    invoke-virtual {p5}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget p7, Lcom/xiaopeng/carcontrolmodule/R$string;->key_ready_disable_first_show_content:I

    invoke-static {p7}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p2, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_2
    new-instance p7, Landroid/app/Notification$ViewStyle;

    invoke-direct {p7}, Landroid/app/Notification$ViewStyle;-><init>()V

    invoke-virtual {p7, p2}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p2

    iget-object p7, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapQR:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p7}, Landroid/app/Notification$ViewStyle;->setIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$ViewStyle;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    .line 244
    invoke-virtual {p5}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget p7, Lcom/xiaopeng/carcontrolmodule/R$string;->key_ready_disable_content:I

    invoke-static {p7}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p2, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_1
    invoke-virtual {p5}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "isFoundKeyCard"

    const/4 p7, 0x1

    invoke-virtual {p1, p2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    invoke-virtual {p5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 248
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 249
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->disableReadyDialogRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 250
    new-instance p1, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$ro1n_n-bH4oldeUYBjPsjFpNumY;

    invoke-direct {p1, p3}, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$ro1n_n-bH4oldeUYBjPsjFpNumY;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->disableReadyDialogRunnable:Ljava/lang/Runnable;

    .line 252
    :cond_3
    sget-object p1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->disableReadyDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    sget-object p1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->disableReadyDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    sget-object p1, Lcom/xiaopeng/track/constant/BID;->key_error_show:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p1}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_4

    if-eqz p6, :cond_4

    goto :goto_2

    :cond_4
    const/4 p7, 0x0

    :goto_2
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public createSaveDoneNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "notifyId",
            "groupName",
            "isLogin"
        }
    .end annotation

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, v0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->initSeatDrawable(Landroid/content/Context;ZZ)V

    .line 149
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapDone:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const-string p1, "NotifyCreateUtil"

    const-string p2, "createSaveDoneNotification bitmap = null"

    .line 150
    invoke-static {p1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drvRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 156
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$FqMGSUPHGnmNvoqnYeYKSCnA66g;

    invoke-direct {v1, p0, p1, p3}, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$FqMGSUPHGnmNvoqnYeYKSCnA66g;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drvRunnable:Ljava/lang/Runnable;

    .line 158
    :cond_1
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drvRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->drvRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    const-string v3, "createPsnSeatNotification"

    invoke-direct {v1, p2, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 162
    sget-object v2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/16 v1, 0xa

    .line 163
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentNull:Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-static {p1, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingNullIntent:Landroid/app/PendingIntent;

    .line 165
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 166
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p1

    if-eqz p5, :cond_2

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->tip_seat_changed_with_login:I

    .line 167
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v0

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->tip_seat_changed:I

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p2, "default"

    .line 168
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_carcontrol:I

    .line 169
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapDone:Landroid/graphics/Bitmap;

    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_save_done_title:I

    .line 170
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingNullIntent:Landroid/app/PendingIntent;

    move-object v3, v4

    invoke-virtual/range {v2 .. v8}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$ViewStyle;

    invoke-direct {p2}, Landroid/app/Notification$ViewStyle;-><init>()V

    const/4 p4, 0x5

    .line 171
    invoke-virtual {p2, p4}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    .line 172
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRecover:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentRecover:Landroid/app/PendingIntent;

    const-string v5, ""

    move-object v2, v1

    move-object v3, v4

    invoke-virtual/range {v2 .. v8}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    if-eqz p5, :cond_3

    .line 174
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapMirror:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentMirror:Landroid/app/PendingIntent;

    const-string v5, ""

    move-object v2, v1

    move-object v3, v4

    invoke-virtual/range {v2 .. v8}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string p1, "isSupportControlSteer"

    .line 175
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 176
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSteer:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentSteer:Landroid/app/PendingIntent;

    const-string v5, ""

    move-object v2, v1

    move-object v3, v4

    invoke-virtual/range {v2 .. v8}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 179
    :cond_3
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 180
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public createSeatSpeechNotification(Landroid/content/Context;Ljava/lang/String;IZZI)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "notifyId",
            "isFold",
            "isTrdLeft",
            "target"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSeatSpeechNotification isFold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTrdLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifyCreateUtil"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 332
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    .line 334
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    const-string v2, "createSeatSpeechNotification"

    invoke-direct {v0, p2, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 335
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_PROCESS_SEAT_NOTIFY"

    .line 337
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "xpCarControl_SeatNotify"

    const-string/jumbo v3, "show_seat_speech_notify"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentSeatSpeech:Landroid/content/Intent;

    const-string/jumbo v3, "show_seat_fold"

    .line 338
    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentSeatSpeech:Landroid/content/Intent;

    const-string/jumbo v3, "show_seat_trd_left"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentSeatSpeech:Landroid/content/Intent;

    const-string/jumbo v3, "show_seat_trd_left_target"

    invoke-virtual {v1, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p6, 0x2d

    .line 341
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentSeatSpeech:Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {p1, p6, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    iput-object p6, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentSeatSpeech:Landroid/app/PendingIntent;

    .line 342
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p6

    const-string/jumbo v0, "show_seat_speech_notify_dismiss"

    invoke-virtual {p6, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p6

    iput-object p6, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentSeatSpeechDismiss:Landroid/content/Intent;

    const-string v0, "Notify_Dismiss"

    .line 343
    invoke-virtual {p6, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p6, 0x2e

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentSeatSpeechDismiss:Landroid/content/Intent;

    invoke-static {p1, p6, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    iput-object p6, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentSeatSpeechDismiss:Landroid/app/PendingIntent;

    .line 346
    new-instance p6, Landroid/app/Notification$Builder;

    invoke-direct {p6, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo p1, "\u597d\u7684"

    const-string/jumbo p2, "\u53ef\u4ee5"

    const-string/jumbo v0, "\u6ca1\u95ee\u9898"

    .line 347
    filled-new-array {p1, p2, v0}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "\u4e0d\u7528"

    const-string/jumbo v0, "\u7b97\u4e86"

    const-string/jumbo v1, "\u53d6\u6d88"

    .line 348
    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x20

    .line 349
    invoke-virtual {p6, v0}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_ok:I

    .line 350
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentSeatSpeech:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    .line 351
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentSeatSpeechDismiss:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_unlock_s:I

    .line 352
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz p4, :cond_1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_speech_fold_title:I

    goto :goto_0

    .line 353
    :cond_1
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_speech_stow_title:I

    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz p4, :cond_3

    if-eqz p5, :cond_2

    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_speech_tl_fold_text:I

    goto :goto_1

    .line 354
    :cond_2
    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_speech_tr_fold_text:I

    goto :goto_1

    :cond_3
    sget p4, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_speech_stow_text:I

    :goto_1
    invoke-static {p4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setTtsText(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p4

    sget p5, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_speech_subtitle:I

    .line 355
    invoke-static {p5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p4

    const/4 p5, 0x1

    .line 356
    invoke-virtual {p4, p5}, Landroid/app/Notification$Builder;->setSpeechActionCard(Z)Landroid/app/Notification$Builder;

    move-result-object p4

    .line 357
    invoke-virtual {p4, p1}, Landroid/app/Notification$Builder;->setSpeechWordListForActionOne([Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 358
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSpeechWordListForActionTwo([Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 359
    invoke-virtual {p6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 360
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public createTrdSeatTiltNotification(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "notifyId"
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 288
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    .line 290
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    const-string v2, "createTrdSeatTiltNotification"

    invoke-direct {v0, p2, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 291
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 293
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_trd_angle_notify_title:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/16 p2, 0x20

    .line 295
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_trd_angle_notify_text:I

    .line 296
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_unlock_s:I

    .line 297
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p2, "error"

    .line 298
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 299
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setMsgMajorPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v1, Landroid/app/Notification$ViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$ViewStyle;-><init>()V

    .line 300
    invoke-virtual {v1, p2}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    .line 301
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 302
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 303
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->TrdSeatTiltRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    .line 304
    new-instance p1, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$F44NM6lKXCZQU3AiCpeKWS5e-yQ;

    invoke-direct {p1, p3}, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$F44NM6lKXCZQU3AiCpeKWS5e-yQ;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->TrdSeatTiltRunnable:Ljava/lang/Runnable;

    .line 306
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->TrdSeatTiltRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    sget-object p1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->TrdSeatTiltRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1770

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dismissSeatBeltWarningNotification(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 522
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    sput-object p1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    .line 524
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public synthetic lambda$createDrvSeatNotification$0$NotifyCreateUtil(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "context",
            "notifyId"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    return-void
.end method

.method public synthetic lambda$createNfcOverTimeNotification$4$NotifyCreateUtil(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "context",
            "notifyId"
        }
    .end annotation

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    return-void
.end method

.method public synthetic lambda$createPsnSeatNotification$1$NotifyCreateUtil(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "context",
            "notifyId"
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    return-void
.end method

.method public synthetic lambda$createSaveDoneNotification$2$NotifyCreateUtil(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "context",
            "notifyId"
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    return-void
.end method

.method public synthetic lambda$showPGearNotify$6$NotifyCreateUtil(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .line 601
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    return-void
.end method

.method public showAvasCloseConfirmNotify(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "id"
        }
    .end annotation

    const-string v0, "NotifyCreateUtil"

    const-string/jumbo v1, "showAvasCloseConfirmNotify"

    .line 400
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 402
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    .line 404
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_AVAS_CLOSE_CONFIRM_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 405
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    const-string/jumbo v3, "xpCarControl_Avas"

    invoke-direct {v1, p2, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 406
    sget-object v2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 407
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p2, 0x20

    .line 408
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_icon_pause:I

    .line 409
    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->avas_close_notify_title:I

    .line 410
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->avas_close_notify_content:I

    .line 411
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setTtsText(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->avas_close_notify_tts:I

    .line 412
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 v2, 0x1

    .line 413
    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setSpeechActionCard(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_confirm:I

    .line 414
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x4000000

    .line 415
    invoke-static {p1, v4, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 414
    invoke-virtual {p2, v4, v3, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    .line 417
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 418
    invoke-static {p1, v4, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 417
    invoke-virtual {p2, v2, v0, p1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 420
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 421
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showPGearNotify(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "id"
        }
    .end annotation

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showPGearNotify id  ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifyCreateUtil"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 594
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    .line 596
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string/jumbo v2, "showPGearNotify"

    invoke-direct {v0, p2, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 597
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 600
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->PGeardismissRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 601
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$2uD0wPEMFS-54L8fTBIQQajJ9n0;

    invoke-direct {v0, p0, p1, p3}, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$2uD0wPEMFS-54L8fTBIQQajJ9n0;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->PGeardismissRunnable:Ljava/lang/Runnable;

    .line 603
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->PGeardismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 604
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->PGeardismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 606
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p2, 0x20

    .line 608
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->p_gear_ctrl_title:I

    .line 609
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    const-string v1, "default"

    .line 610
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_carcontrol:I

    .line 611
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 613
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapTrunk:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapTrunkNight:Landroid/graphics/Bitmap;

    if-nez p2, :cond_3

    .line 614
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_trunk:I

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapTrunk:Landroid/graphics/Bitmap;

    .line 615
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_trunk_night:I

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapTrunkNight:Landroid/graphics/Bitmap;

    :cond_3
    const-string p2, "com.xiaopeng.carcontrol.intent.action.ACTION_PROCESS_SEAT_NOTIFY"

    .line 617
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, "keyfunc"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentTrunkOpen:Landroid/content/Intent;

    const/16 v2, 0x1e

    const/high16 v11, 0x4000000

    .line 618
    invoke-static {p1, v2, v1, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentTrunkOpen:Landroid/app/PendingIntent;

    .line 619
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapTrunk:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapTrunkNight:Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v7, ""

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string v1, "isSingleChargePort"

    .line 621
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "xpCarControl_SeatNotify"

    if-nez v1, :cond_6

    .line 622
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSlowCharge:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSlowChargeNight:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    .line 623
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_slow_charge:I

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSlowCharge:Landroid/graphics/Bitmap;

    .line 624
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_slow_charge_night:I

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSlowChargeNight:Landroid/graphics/Bitmap;

    .line 626
    :cond_5
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "seat_ac"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentAc:Landroid/content/Intent;

    const/16 v4, 0x14

    .line 627
    invoke-static {p1, v4, v1, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentAc:Landroid/app/PendingIntent;

    .line 628
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSlowCharge:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapSlowChargeNight:Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v7, ""

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 630
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapFastCharge:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapFastChargeNight:Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    .line 631
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_fast_charging:I

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapFastCharge:Landroid/graphics/Bitmap;

    .line 632
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_fast_charging_night:I

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapFastChargeNight:Landroid/graphics/Bitmap;

    .line 635
    :cond_8
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "seat_dc"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentDc:Landroid/content/Intent;

    const/16 v2, 0xb

    .line 636
    invoke-static {p1, v2, v1, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentDc:Landroid/app/PendingIntent;

    .line 637
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapFastCharge:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapFastChargeNight:Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v7, ""

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string v1, "isSupportSdc"

    .line 645
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 646
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapLeftDoor:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapLeftDoorNight:Landroid/graphics/Bitmap;

    if-nez v1, :cond_a

    .line 647
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_left_slide_door:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapLeftDoor:Landroid/graphics/Bitmap;

    .line 648
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_left_slide_door_night:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapLeftDoorNight:Landroid/graphics/Bitmap;

    .line 650
    :cond_a
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRightDoor:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRightDoorNight:Landroid/graphics/Bitmap;

    if-nez v1, :cond_c

    .line 651
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_right_slide_door:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRightDoor:Landroid/graphics/Bitmap;

    .line 652
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_right_slide_door_night:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRightDoorNight:Landroid/graphics/Bitmap;

    .line 654
    :cond_c
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentDrvDoorOPen:Landroid/content/Intent;

    const/16 v2, 0x32

    .line 655
    invoke-static {p1, v2, v1, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentDrvDoorOPen:Landroid/app/PendingIntent;

    .line 656
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapLeftDoor:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapLeftDoorNight:Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v7, ""

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 657
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/16 v1, 0x12

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->intentPsnDoorOpen:Landroid/content/Intent;

    const/16 v1, 0x3c

    .line 658
    invoke-static {p1, v1, p2, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->pendingIntentPsnDoorOpen:Landroid/app/PendingIntent;

    .line 659
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRightDoor:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->bitmapRightDoorNight:Landroid/graphics/Bitmap;

    const-string v7, ""

    invoke-virtual/range {v4 .. v10}, Landroid/app/Notification$Builder;->addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 661
    :cond_d
    new-instance p1, Landroid/app/Notification$ViewStyle;

    invoke-direct {p1}, Landroid/app/Notification$ViewStyle;-><init>()V

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    .line 662
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 663
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showRearLogoConfirmNotify(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "id"
        }
    .end annotation

    const-string v0, "NotifyCreateUtil"

    const-string/jumbo v1, "showRearLogoConfirmNotify"

    .line 370
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_REAR_LOGO_LIGHT_CONFIRM_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 372
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_REAR_LOGO_LIGHT_CANCEL_NOTIFY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "notification"

    .line 373
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 374
    new-instance v3, Landroid/app/NotificationChannel;

    const-string/jumbo v4, "xpCarControl_Lamp"

    const/4 v5, 0x3

    invoke-direct {v3, p2, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 375
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 376
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p2, 0x20

    .line 377
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_icon_pause:I

    .line 378
    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$string;->title_rear_logo_light_notify:I

    .line 379
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$string;->title_rear_logo_light_notify_tts:I

    .line 380
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setTtsText(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$string;->title_rear_logo_light_notify_sub:I

    .line 381
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 v4, 0x1

    .line 382
    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setSpeechActionCard(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v5, Lcom/xiaopeng/carcontrolmodule/R$string;->rear_logo_light_confirm:I

    .line 383
    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x4000000

    .line 384
    invoke-static {p1, v6, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 383
    invoke-virtual {p2, v6, v5, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->rear_logo_light_cancel:I

    .line 386
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {p1, v6, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 386
    invoke-virtual {p2, v4, v0, p1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 389
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 390
    invoke-virtual {v2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showSdcNarrowSpaceTipsNotify(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "id"
        }
    .end annotation

    const-string v0, "NotifyCreateUtil"

    const-string/jumbo v1, "showSdcNarrowSpaceTipsNotify"

    .line 528
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 530
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    .line 532
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string/jumbo v2, "xpCarControl_sdc_narrow_space"

    invoke-direct {v0, p2, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 533
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 534
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p2, 0x20

    .line 535
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_icon_pause:I

    .line 536
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 v1, 0x1

    .line 537
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setShowLong(I)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->sdc_narrow_space_dlg_title:I

    .line 538
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->sdc_narrow_space_content:I

    .line 539
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setTtsText(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->sdc_narrow_space_content:I

    .line 540
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 541
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setSpeechActionCard(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 v1, 0x0

    .line 542
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setMsgMajorPriority(I)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_confirm:I

    .line 543
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x4000000

    invoke-static {p1, v1, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, v1, v2, p1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 544
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 545
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showSdcObstacleTipsNotify(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "id"
        }
    .end annotation

    const-string v0, "NotifyCreateUtil"

    const-string/jumbo v1, "showSdcObstacleTipsNotify"

    .line 549
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 551
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    .line 553
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string/jumbo v2, "xpCarControl_sdc_obstacle"

    invoke-direct {v0, p2, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 554
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 555
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 556
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_icon_pause:I

    .line 557
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 558
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIconDiy(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 559
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setShowLong(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string v1, "error"

    .line 560
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sdc_obstacle_danger_dialog_title:I

    .line 561
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sdc_obstacle_danger_dialog_content:I

    .line 562
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 563
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setMsgMajorPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v1, Landroid/app/Notification$ViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$ViewStyle;-><init>()V

    .line 564
    invoke-virtual {v1, p2}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    .line 565
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 566
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showSdcPreventPlayingNotify(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "id"
        }
    .end annotation

    const-string v0, "NotifyCreateUtil"

    const-string/jumbo v1, "showSdcPreventPlayingNotify"

    .line 571
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 573
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    .line 575
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string/jumbo v2, "xpCarControl_sdc_prevent_playing"

    invoke-direct {v0, p2, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 576
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 577
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 578
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_icon_pause:I

    .line 579
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 580
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIconDiy(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p2, "error"

    .line 581
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->sdc_prevent_playing_title:I

    .line 582
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->sdc_prevent_playing_tts:I

    .line 583
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 584
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setMsgMajorPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v1, Landroid/app/Notification$ViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$ViewStyle;-><init>()V

    .line 585
    invoke-virtual {v1, p2}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    .line 586
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 587
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showSeatBeltWarningNotification(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId",
            "dayResourceId",
            "nightResourceId",
            "id"
        }
    .end annotation

    .line 500
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 501
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    .line 503
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string/jumbo v2, "xpCarControl_SeatBelt"

    invoke-direct {v0, p2, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 504
    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 505
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_CLOSE_SEAT_BELT_WARNING_REMIND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 506
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 507
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 508
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p2, 0x20

    .line 509
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_belt_notify_title:I

    .line 510
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 511
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const-string p3, "error"

    .line 512
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance p3, Landroid/app/Notification$ViewStyle;

    invoke-direct {p3}, Landroid/app/Notification$ViewStyle;-><init>()V

    const/4 v2, 0x1

    .line 513
    invoke-virtual {p3, v2}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p3

    invoke-virtual {p3, v1, p4}, Landroid/app/Notification$ViewStyle;->bigPicture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/app/Notification$ViewStyle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    move-result-object p2

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_belt_notify_not_remind:I

    .line 514
    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/high16 p4, 0x4000000

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, v1, p3, p1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 515
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "isRightIconCard"

    invoke-virtual {p2, p3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 516
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 517
    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p5, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
