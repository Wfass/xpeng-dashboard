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

.field private static final PANEL_DISMISS_DELAY:J = 0x7530L

.field private static final URI_PANEL_SPEED:Landroid/net/Uri;


# instance fields
.field private final mAutoDismissRunnable:Ljava/lang/Runnable;

.field final mHandler:Landroid/os/Handler;

.field private mLastSpeed:F

.field private mPanelObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 246
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

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mLastSpeed:F

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    .line 175
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDismissCause$SpeedTimeOutImpl$P2r21C1d2zv3UzVrSyOkHTv02rw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDismissCause$SpeedTimeOutImpl$P2r21C1d2zv3UzVrSyOkHTv02rw;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    .line 273
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl$1;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl$1;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mPanelObserver:Landroid/database/ContentObserver;

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;

    .line 171
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->onPanelSpeedChanged()V

    return-void
.end method

.method private getSpeed()F
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->getSpeed(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method static getSpeed(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 250
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_panel_car_speed"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;)V
    .locals 2

    .line 176
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->getSpeed()F

    move-result v0

    .line 177
    .local v0, "speed":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 178
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->dismiss(I)V

    .line 180
    :cond_0
    return-void
.end method

.method private onPanelSpeedChanged()V
    .locals 1

    .line 214
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(Z)V

    .line 215
    return-void
.end method

.method private postAutoDismissRunnable(Z)V
    .locals 6
    .param p1, "fromSpeed"    # Z

    .line 224
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->getSpeed()F

    move-result v0

    .line 225
    .local v0, "speed":F
    const/4 v1, 0x1

    .line 226
    .local v1, "changed":Z
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 227
    iget v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mLastSpeed:F

    mul-float/2addr v3, v0

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    .line 229
    :cond_1
    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 232
    :cond_2
    if-eqz v1, :cond_3

    .line 234
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    :cond_3
    :goto_1
    iput v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mLastSpeed:F

    .line 238
    return-void
.end method

.method private registerPanelObserver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 259
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->URI_PANEL_SPEED:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mPanelObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private unregisterPanelObserver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 267
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mPanelObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent()V
    .locals 1

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(Z)V

    .line 211
    return-void
.end method

.method public dispatchUserEvent()V
    .locals 2

    .line 204
    const-string v0, "XActivityDismissCause"

    const-string v1, "dispatchUserEvent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(Z)V

    .line 206
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->unregisterPanelObserver(Landroid/content/Context;)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->postAutoDismissRunnable(Z)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->registerPanelObserver(Landroid/content/Context;)V

    .line 191
    return-void
.end method
