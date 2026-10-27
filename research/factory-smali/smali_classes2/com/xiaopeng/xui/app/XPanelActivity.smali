.class public Lcom/xiaopeng/xui/app/XPanelActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "XPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XPanelActivity$Builder;
    }
.end annotation


# static fields
.field public static final FEATURE_XUI_FULLSCREEN:I = 0xe

.field private static final KEY_PANEL_SPEED:Ljava/lang/String; = "key_panel_car_speed"

.field private static final PANEL_DISMISS_DELAY:J = 0x7530L

.field public static final TYPE_DISMISS_BACK:I = 0x1

.field public static final TYPE_DISMISS_STOP:I

.field private static final URI_PANEL_SPEED:Landroid/net/Uri;


# instance fields
.field private final mAutoDismissRunnable:Ljava/lang/Runnable;

.field private mAutoVisibility:Z

.field private mCloseOnPauseOneshot:Z

.field private mCloseOnTouchOutside:Z

.field private mDimAlpha:F

.field private mDismissDelay:J

.field private mDismissType:I

.field private mLastSpeed:F

.field private mLayoutBuilder:Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

.field private final mPanelHandler:Landroid/os/Handler;

.field private mPanelObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "key_panel_car_speed"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/app/XPanelActivity;->URI_PANEL_SPEED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mLastSpeed:F

    .line 36
    new-instance v0, Lcom/xiaopeng/xui/app/XPanelActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/XPanelActivity$1;-><init>(Lcom/xiaopeng/xui/app/XPanelActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoDismissRunnable:Ljava/lang/Runnable;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelHandler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnTouchOutside:Z

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnPauseOneshot:Z

    .line 48
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDimAlpha:F

    .line 50
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDismissDelay:J

    .line 51
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoVisibility:Z

    .line 53
    iput v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDismissType:I

    .line 279
    new-instance v0, Lcom/xiaopeng/xui/app/XPanelActivity$3;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/app/XPanelActivity$3;-><init>(Lcom/xiaopeng/xui/app/XPanelActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/XPanelActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPanelActivity;

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->handleAutoDismissEvent()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/app/XPanelActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPanelActivity;

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->onPanelSpeedChanged()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 371
    .local v0, "scale":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 372
    .local v1, "value":F
    mul-float v2, v1, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method private getSpeed()F
    .locals 3

    .line 234
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_panel_car_speed"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 235
    :catch_0
    move-exception v1

    .line 237
    return v0
.end method

.method private handleAutoDismissEvent()V
    .locals 2

    .line 203
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getSpeed()F

    move-result v0

    .line 204
    .local v0, "speed":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->handleDismissEvent()V

    .line 207
    :cond_0
    return-void
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 241
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 242
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 243
    .local v1, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    .line 244
    .local v2, "slop":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 245
    .local v3, "decorView":Landroid/view/View;
    neg-int v4, v2

    if-lt v0, v4, :cond_1

    neg-int v4, v2

    if-lt v1, v4, :cond_1

    .line 246
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v0, v4, :cond_1

    .line 247
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    if-le v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 245
    :goto_1
    return v4
.end method

.method private onPanelSpeedChanged()V
    .locals 1

    .line 262
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->postAutoDismissRunnable(Z)V

    .line 263
    return-void
.end method

.method private postAutoDismissRunnable(Z)V
    .locals 6
    .param p1, "fromSpeed"    # Z

    .line 216
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getSpeed()F

    move-result v0

    .line 217
    .local v0, "speed":F
    const/4 v1, 0x1

    .line 218
    .local v1, "changed":Z
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 219
    iget v3, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mLastSpeed:F

    mul-float/2addr v3, v0

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    .line 221
    :cond_1
    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 224
    :cond_2
    if-eqz v1, :cond_3

    .line 226
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    :cond_3
    :goto_1
    iput v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mLastSpeed:F

    .line 230
    return-void
.end method

.method private registerPanelObserver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 267
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xui/app/XPanelActivity;->URI_PANEL_SPEED:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 270
    :goto_0
    return-void
.end method

.method private setWindowVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 192
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 194
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_2

    .line 195
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 196
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDimAlpha:F

    nop

    :cond_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 198
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 200
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    return-void
.end method

.method private shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 251
    nop

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XPanelActivity;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 254
    .local v0, "isOutside":Z
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 255
    .local v3, "decorView":Landroid/view/View;
    iget-boolean v4, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnTouchOutside:Z

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 256
    return v2

    .line 258
    :cond_3
    return v1
.end method

.method private unregisterPanelObserver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 274
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 277
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->postAutoDismissRunnable(Z)V

    .line 118
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUserEvent()V
    .locals 1

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->postAutoDismissRunnable(Z)V

    .line 182
    return-void
.end method

.method public finish()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 124
    return-void
.end method

.method public getLayoutBuilder()Lcom/xiaopeng/xui/app/XPanelActivity$Builder;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mLayoutBuilder:Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    return-object v0
.end method

.method public handleDismissEvent()V
    .locals 5

    .line 160
    iget v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDismissType:I

    .line 161
    .local v0, "type":I
    new-instance v1, Lcom/xiaopeng/xui/app/XPanelActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity$2;-><init>(Lcom/xiaopeng/xui/app/XPanelActivity;I)V

    .line 176
    .local v1, "r":Ljava/lang/Runnable;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/app/XPanelActivity;->handleWindowVisibility(Z)V

    .line 177
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDismissDelay:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return-void
.end method

.method public handleWindowVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 185
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoVisibility:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPanelActivity;->setWindowVisible(Z)V

    .line 188
    :cond_0
    return-void
.end method

.method public moveTaskToBack(Z)Z
    .locals 1
    .param p1, "nonRoot"    # Z

    .line 128
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->moveTaskToBack(Z)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->requestWindowFeature(I)Z

    .line 59
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance v0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mLayoutBuilder:Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->handleWindowVisibility(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->unregisterPanelObserver(Landroid/content/Context;)V

    .line 94
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnPauseOneshot:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->handleDismissEvent()V

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnPauseOneshot:Z

    .line 98
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 67
    .local v0, "orientation":I
    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_x:I

    invoke-static {p0, v1}, Lcom/xiaopeng/xui/app/XPanelActivity;->dp2px(Landroid/content/Context;I)I

    move-result v1

    .line 68
    .local v1, "x":I
    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_y:I

    invoke-static {p0, v2}, Lcom/xiaopeng/xui/app/XPanelActivity;->dp2px(Landroid/content/Context;I)I

    move-result v2

    .line 69
    .local v2, "y":I
    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_width:I

    invoke-static {p0, v3}, Lcom/xiaopeng/xui/app/XPanelActivity;->dp2px(Landroid/content/Context;I)I

    move-result v3

    .line 70
    .local v3, "width":I
    sget v4, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_height:I

    invoke-static {p0, v4}, Lcom/xiaopeng/xui/app/XPanelActivity;->dp2px(Landroid/content/Context;I)I

    move-result v4

    .line 71
    .local v4, "height":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 76
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getLayoutBuilder()Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setX(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setY(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setWidth(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setHeight(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object v5

    const/16 v6, 0x31

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setGravity(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->apply()V

    goto :goto_0

    .line 73
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getLayoutBuilder()Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setX(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setY(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setWidth(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setHeight(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object v5

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setGravity(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->apply()V

    .line 74
    nop

    .line 79
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->postAutoDismissRunnable(Z)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->handleWindowVisibility(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->registerPanelObserver(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 108
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/app/XPanelActivity;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->handleDismissEvent()V

    .line 110
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public recreate()V
    .locals 1

    .line 102
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->recreate()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnPauseOneshot:Z

    .line 104
    return-void
.end method

.method public setAutoVisibilityEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoVisibility:Z

    .line 157
    return-void
.end method

.method public setCloseOnPauseOneshot(Z)V
    .locals 0
    .param p1, "close"    # Z

    .line 140
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnPauseOneshot:Z

    .line 141
    return-void
.end method

.method public setCloseOnTouchOutside(Z)V
    .locals 0
    .param p1, "close"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnTouchOutside:Z

    .line 145
    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .line 148
    iput p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDimAlpha:F

    .line 149
    return-void
.end method

.method public setDismissDelay(J)V
    .locals 0
    .param p1, "delay"    # J

    .line 152
    iput-wide p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDismissDelay:J

    .line 153
    return-void
.end method

.method public setDismissType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 136
    iput p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDismissType:I

    .line 137
    return-void
.end method
