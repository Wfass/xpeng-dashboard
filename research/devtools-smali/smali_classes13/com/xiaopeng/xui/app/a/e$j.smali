.class Lcom/xiaopeng/xui/app/a/e$j;
.super Lcom/xiaopeng/xui/app/a/e$c;
.source "XActivityDismissCause.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/a/e$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# static fields
.field private static final aad:Landroid/net/Uri;


# instance fields
.field private aae:F

.field private final aaf:Ljava/lang/Runnable;

.field private aao:Landroid/database/ContentObserver;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 246
    const-string v0, "key_panel_car_speed"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/app/a/e$j;->aad:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/a/e$c;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)V

    .line 173
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/xui/app/a/e$j;->aae:F

    .line 174
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/a/e$j;->mHandler:Landroid/os/Handler;

    .line 175
    new-instance p1, Lcom/xiaopeng/xui/app/a/-$$Lambda$e$j$N15oWtgOxU9n_weGPti1J9swPdo;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/a/-$$Lambda$e$j$N15oWtgOxU9n_weGPti1J9swPdo;-><init>(Lcom/xiaopeng/xui/app/a/e$j;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/a/e$j;->aaf:Ljava/lang/Runnable;

    .line 273
    new-instance p1, Lcom/xiaopeng/xui/app/a/e$j$1;

    iget-object p2, p0, Lcom/xiaopeng/xui/app/a/e$j;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xui/app/a/e$j$1;-><init>(Lcom/xiaopeng/xui/app/a/e$j;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/a/e$j;->aao:Landroid/database/ContentObserver;

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/app/a/e$j;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/a/e$j;->qx()V

    return-void
.end method

.method private aC(Landroid/content/Context;)V
    .locals 3

    .line 259
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/xui/app/a/e$j;->aad:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/e$j;->aao:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_0

    .line 260
    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    :goto_0
    return-void
.end method

.method private aD(Landroid/content/Context;)V
    .locals 1

    .line 267
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/e$j;->aao:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    :goto_0
    return-void
.end method

.method static aE(Landroid/content/Context;)F
    .locals 2

    .line 250
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "key_panel_car_speed"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 251
    :catch_0
    move-exception p0

    .line 252
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    return v0
.end method

.method private bc(Z)V
    .locals 4

    .line 224
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/a/e$j;->getSpeed()F

    move-result v0

    .line 225
    nop

    .line 226
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 227
    iget p1, p0, Lcom/xiaopeng/xui/app/a/e$j;->aae:F

    mul-float/2addr p1, v0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 229
    move v2, p1

    :cond_1
    :goto_0
    cmpg-float p1, v0, v1

    if-gtz p1, :cond_2

    .line 231
    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/e$j;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/e$j;->aaf:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 232
    :cond_2
    if-eqz v2, :cond_3

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/e$j;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/e$j;->aaf:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/e$j;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/e$j;->aaf:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    :cond_3
    :goto_1
    iput v0, p0, Lcom/xiaopeng/xui/app/a/e$j;->aae:F

    .line 238
    return-void
.end method

.method private getSpeed()F
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/e$j;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/a/e$j;->aE(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xui/app/a/e$j;)V
    .locals 2

    .line 176
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/a/e$j;->getSpeed()F

    move-result v0

    .line 177
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 178
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/a/e$j;->dismiss(I)V

    .line 180
    :cond_0
    return-void
.end method

.method private qx()V
    .locals 1

    .line 214
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/a/e$j;->bc(Z)V

    .line 215
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/e$j;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/e$j;->aaf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/e$j;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/a/e$j;->aD(Landroid/content/Context;)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/e$j;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/e$j;->aaf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/a/e$j;->bc(Z)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/e$j;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/a/e$j;->aC(Landroid/content/Context;)V

    .line 191
    return-void
.end method

.method public qB()V
    .locals 1

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/a/e$j;->bc(Z)V

    .line 211
    return-void
.end method
