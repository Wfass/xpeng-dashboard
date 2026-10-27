.class Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;
.super Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;
.source "XActivityDismissCause.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpeedTimeOutImpl"
.end annotation


# static fields
.field private static final KEY_PANEL_SPEED:Ljava/lang/String; = "key_panel_car_speed"

.field private static final PANEL_DISMISS_DELAY:I = 0x7530

.field private static final URI_PANEL_SPEED:Landroid/net/Uri;


# instance fields
.field private final mAutoDismissRunnable:Ljava/lang/Runnable;

.field private mDismissDelay:I

.field final mHandler:Landroid/os/Handler;

.field private mHasFocus:Z

.field private mLastSpeed:F

.field private mPanelObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "key_panel_car_speed"

    .line 290
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->URI_PANEL_SPEED:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V

    const/16 p1, 0x7530

    .line 174
    iput p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mDismissDelay:I

    const/4 p1, 0x0

    .line 175
    iput p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mLastSpeed:F

    .line 177
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    .line 178
    new-instance p2, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDismissCause$SpeedTimeOutImpl$G1clpqWKQuHhpETHjgPqbOkeLl0;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDismissCause$SpeedTimeOutImpl$G1clpqWKQuHhpETHjgPqbOkeLl0;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;)V

    iput-object p2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    .line 317
    new-instance p2, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl$1;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl$1;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mPanelObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->onPanelSpeedChanged()V

    return-void
.end method

.method private getSpeed()F
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->getSpeed(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method static getSpeed(Landroid/content/Context;)F
    .locals 3

    const/4 v0, 0x0

    .line 294
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "key_panel_car_speed"

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private onPanelSpeedChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 238
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(Z)V

    return-void
.end method

.method private postAutoDismissRunnable(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 242
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(ZZ)V

    return-void
.end method

.method private postAutoDismissRunnable(ZZ)V
    .locals 10

    .line 251
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 254
    iget v4, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mLastSpeed:F

    mul-float/2addr v4, v0

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    if-eqz p2, :cond_3

    const/4 p2, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const-string v7, "postAutoDismissRunnable \uff1a speed: %s ,mLastSpeed: %s, changed:%s, fromSpeed:%s"

    const-string v8, "XActivityDismissCause"

    if-eqz p1, :cond_2

    if-eqz v4, :cond_3

    new-array v6, v6, [Ljava/lang/Object;

    .line 261
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v6, v2

    iget v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mLastSpeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, p2

    .line 260
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-array v6, v6, [Ljava/lang/Object;

    .line 267
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v6, v2

    iget v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mLastSpeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, p2

    .line 266
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_2
    cmpg-float p1, v0, v1

    if-gtz p1, :cond_4

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    .line 278
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mDismissDelay:I

    int-to-long v1, v1

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 281
    :cond_5
    :goto_3
    iput v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mLastSpeed:F

    return-void
.end method

.method private registerPanelObserver(Landroid/content/Context;)V
    .locals 4

    .line 303
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->URI_PANEL_SPEED:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mPanelObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 305
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private unregisterPanelObserver(Landroid/content/Context;)V
    .locals 1

    .line 311
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mPanelObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, v0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(ZZ)V

    return-void
.end method

.method public dispatchUserEvent()V
    .locals 2

    const-string v0, "XActivityDismissCause"

    const-string v1, "dispatchUserEvent"

    .line 227
    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(Z)V

    return-void
.end method

.method public synthetic lambda$new$0$XActivityDismissCause$SpeedTimeOutImpl()V
    .locals 2

    .line 179
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 181
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHasFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 182
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->dismiss(I)V

    goto :goto_0

    :cond_0
    const-string v0, "XActivityDismissCause"

    const-string v1, "mAutoDismissRunnable mHasFocus false"

    .line 184
    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->unregisterPanelObserver(Landroid/content/Context;)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(Z)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->registerPanelObserver(Landroid/content/Context;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XActivityDismissCause"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHasFocus:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 210
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(Z)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public setDismissDelay(I)V
    .locals 2

    .line 195
    iput p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mDismissDelay:I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDismissDelay : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XActivityDismissCause"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
