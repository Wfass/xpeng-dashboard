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

    .line 290
    const-string v0, "key_panel_car_speed"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->URI_PANEL_SPEED:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callBack"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V

    .line 174
    const/16 v0, 0x7530

    iput v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mDismissDelay:I

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mLastSpeed:F

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDismissCause$SpeedTimeOutImpl$P2r21C1d2zv3UzVrSyOkHTv02rw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDismissCause$SpeedTimeOutImpl$P2r21C1d2zv3UzVrSyOkHTv02rw;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    .line 317
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl$1;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl$1;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mPanelObserver:Landroid/database/ContentObserver;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;

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
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 294
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_panel_car_speed"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;)V
    .locals 3

    .line 179
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->getSpeed()F

    move-result v0

    .line 180
    .local v0, "speed":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 181
    iget-boolean v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHasFocus:Z

    if-eqz v1, :cond_0

    .line 182
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->dismiss(I)V

    goto :goto_0

    .line 184
    :cond_0
    const-string v1, "XActivityDismissCause"

    const-string v2, "mAutoDismissRunnable mHasFocus false"

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    :cond_1
    :goto_0
    return-void
.end method

.method private onPanelSpeedChanged()V
    .locals 1

    .line 238
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(Z)V

    .line 239
    return-void
.end method

.method private postAutoDismissRunnable(Z)V
    .locals 1
    .param p1, "fromSpeed"    # Z

    .line 242
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(ZZ)V

    .line 243
    return-void
.end method

.method private postAutoDismissRunnable(ZZ)V
    .locals 11
    .param p1, "fromSpeed"    # Z
    .param p2, "log"    # Z

    .line 251
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->getSpeed()F

    move-result v0

    .line 252
    .local v0, "speed":F
    const/4 v1, 0x1

    .line 253
    .local v1, "changed":Z
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    .line 254
    iget v5, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mLastSpeed:F

    mul-float/2addr v5, v0

    cmpg-float v5, v5, v2

    if-gtz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    move v1, v5

    .line 257
    :cond_1
    if-eqz p2, :cond_3

    .line 258
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eqz p1, :cond_2

    .line 259
    if-eqz v1, :cond_3

    .line 260
    const-string v8, "XActivityDismissCause"

    const-string v9, "postAutoDismissRunnable \uff1a speed: %s ,mLastSpeed: %s, changed:%s, fromSpeed:%s"

    new-array v7, v7, [Ljava/lang/Object;

    .line 261
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v3

    iget v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mLastSpeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v5

    .line 260
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 266
    :cond_2
    const-string v8, "XActivityDismissCause"

    const-string v9, "postAutoDismissRunnable \uff1a speed: %s ,mLastSpeed: %s, changed:%s, fromSpeed:%s"

    new-array v7, v7, [Ljava/lang/Object;

    .line 267
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v3

    iget v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mLastSpeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v5

    .line 266
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    :cond_3
    :goto_1
    cmpg-float v2, v0, v2

    if-gtz v2, :cond_4

    .line 275
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 276
    :cond_4
    if-eqz v1, :cond_5

    .line 278
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    iget v4, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mDismissDelay:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 281
    :cond_5
    :goto_2
    iput v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mLastSpeed:F

    .line 282
    return-void
.end method

.method private registerPanelObserver(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 303
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->URI_PANEL_SPEED:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mPanelObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private unregisterPanelObserver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 311
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mPanelObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent()V
    .locals 1

    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(ZZ)V

    .line 234
    return-void
.end method

.method public dispatchUserEvent()V
    .locals 2

    .line 227
    const-string v0, "XActivityDismissCause"

    const-string v1, "dispatchUserEvent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(Z)V

    .line 229
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
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

    .line 220
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(Z)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->registerPanelObserver(Landroid/content/Context;)V

    .line 203
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .line 207
    const-string v0, "XActivityDismissCause"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHasFocus:Z

    .line 209
    if-eqz p1, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(Z)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    :goto_0
    return-void
.end method

.method public setDismissDelay(I)V
    .locals 3
    .param p1, "time"    # I

    .line 195
    iput p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mDismissDelay:I

    .line 196
    const-string v0, "XActivityDismissCause"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDismissDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    return-void
.end method
