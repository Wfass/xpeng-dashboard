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

    const-string v0, "key_panel_car_speed"

    .line 31
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/app/XPanelActivity;->URI_PANEL_SPEED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mLastSpeed:F

    .line 36
    new-instance v0, Lcom/xiaopeng/xui/app/XPanelActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/XPanelActivity$1;-><init>(Lcom/xiaopeng/xui/app/XPanelActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoDismissRunnable:Ljava/lang/Runnable;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnTouchOutside:Z

    const/4 v2, 0x1

    .line 46
    iput-boolean v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnPauseOneshot:Z

    const v2, 0x3f19999a    # 0.6f

    .line 48
    iput v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDimAlpha:F

    const-wide/16 v2, 0x0

    .line 50
    iput-wide v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDismissDelay:J

    .line 51
    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoVisibility:Z

    .line 53
    iput v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDismissType:I

    .line 279
    new-instance v1, Lcom/xiaopeng/xui/app/XPanelActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity$3;-><init>(Lcom/xiaopeng/xui/app/XPanelActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/XPanelActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->handleAutoDismissEvent()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/app/XPanelActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->onPanelSpeedChanged()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 1

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    mul-float/2addr p0, v0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private getSpeed()F
    .locals 3

    const/4 v0, 0x0

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_panel_car_speed"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private handleAutoDismissEvent()V
    .locals 2

    .line 203
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->handleDismissEvent()V

    :cond_0
    return-void
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 241
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 243
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result p1

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    neg-int v2, p1

    if-lt v0, v2, :cond_1

    if-lt p2, v2, :cond_1

    .line 246
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p1

    if-gt v0, v2, :cond_1

    .line 247
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private onPanelSpeedChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 262
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->postAutoDismissRunnable(Z)V

    return-void
.end method

.method private postAutoDismissRunnable(Z)V
    .locals 4

    .line 216
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 219
    iget p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mLastSpeed:F

    mul-float/2addr p1, v0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move v2, p1

    :cond_1
    :goto_0
    cmpg-float p1, v0, v1

    if-gtz p1, :cond_2

    .line 223
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    :cond_3
    :goto_1
    iput v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mLastSpeed:F

    return-void
.end method

.method private registerPanelObserver(Landroid/content/Context;)V
    .locals 3

    .line 267
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/xui/app/XPanelActivity;->URI_PANEL_SPEED:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setWindowVisible(Z)V
    .locals 4

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v3, v2

    .line 195
    :goto_0
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    if-eqz p1, :cond_1

    .line 196
    iget v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDimAlpha:F

    :cond_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 198
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XPanelActivity;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 253
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    .line 254
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 255
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnTouchOutside:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private unregisterPanelObserver(Landroid/content/Context;)V
    .locals 1

    .line 274
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->postAutoDismissRunnable(Z)V

    .line 118
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchUserEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->postAutoDismissRunnable(Z)V

    return-void
.end method

.method public finish()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public getLayoutBuilder()Lcom/xiaopeng/xui/app/XPanelActivity$Builder;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mLayoutBuilder:Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    return-object v0
.end method

.method public handleDismissEvent()V
    .locals 4

    .line 160
    iget v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDismissType:I

    .line 161
    new-instance v1, Lcom/xiaopeng/xui/app/XPanelActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity$2;-><init>(Lcom/xiaopeng/xui/app/XPanelActivity;I)V

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->handleWindowVisibility(Z)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mPanelHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDismissDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public handleWindowVisibility(Z)V
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoVisibility:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPanelActivity;->setWindowVisible(Z)V

    :cond_0
    return-void
.end method

.method public moveTaskToBack(Z)Z
    .locals 0

    .line 128
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->moveTaskToBack(Z)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0xe

    .line 58
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->requestWindowFeature(I)Z

    .line 59
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance p1, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mLayoutBuilder:Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x0

    .line 92
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

    :cond_0
    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnPauseOneshot:Z

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 67
    sget v0, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_x:I

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->dp2px(Landroid/content/Context;I)I

    move-result v0

    .line 68
    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_y:I

    invoke-static {p0, v1}, Lcom/xiaopeng/xui/app/XPanelActivity;->dp2px(Landroid/content/Context;I)I

    move-result v1

    .line 69
    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_width:I

    invoke-static {p0, v2}, Lcom/xiaopeng/xui/app/XPanelActivity;->dp2px(Landroid/content/Context;I)I

    move-result v2

    .line 70
    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_height:I

    invoke-static {p0, v3}, Lcom/xiaopeng/xui/app/XPanelActivity;->dp2px(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getLayoutBuilder()Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setX(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setY(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setWidth(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setHeight(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object p1

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setGravity(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->apply()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getLayoutBuilder()Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setX(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setY(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setWidth(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setHeight(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->setGravity(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->apply()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->postAutoDismissRunnable(Z)V

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->handleWindowVisibility(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->registerPanelObserver(Landroid/content/Context;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 108
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/app/XPanelActivity;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->handleDismissEvent()V

    const/4 p1, 0x1

    return p1

    .line 112
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public recreate()V
    .locals 1

    .line 102
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->recreate()V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnPauseOneshot:Z

    return-void
.end method

.method public setAutoVisibilityEnable(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mAutoVisibility:Z

    return-void
.end method

.method public setCloseOnPauseOneshot(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnPauseOneshot:Z

    return-void
.end method

.method public setCloseOnTouchOutside(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mCloseOnTouchOutside:Z

    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDimAlpha:F

    return-void
.end method

.method public setDismissDelay(J)V
    .locals 0

    .line 152
    iput-wide p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDismissDelay:J

    return-void
.end method

.method public setDismissType(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->mDismissType:I

    return-void
.end method
