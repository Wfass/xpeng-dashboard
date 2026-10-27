.class public Lcom/xiaopeng/xui/app/XPanelActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "XPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XPanelActivity$a;
    }
.end annotation


# static fields
.field private static final aad:Landroid/net/Uri;


# instance fields
.field private aae:F

.field private final aaf:Ljava/lang/Runnable;

.field private final aag:Landroid/os/Handler;

.field private aah:Z

.field private aai:Z

.field private aaj:F

.field private aak:J

.field private aal:Z

.field private aam:I

.field private aan:Lcom/xiaopeng/xui/app/XPanelActivity$a;

.field private aao:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "key_panel_car_speed"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/app/XPanelActivity;->aad:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aae:F

    .line 36
    new-instance v0, Lcom/xiaopeng/xui/app/XPanelActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/XPanelActivity$1;-><init>(Lcom/xiaopeng/xui/app/XPanelActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aaf:Ljava/lang/Runnable;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aag:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aah:Z

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aai:Z

    .line 48
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aaj:F

    .line 50
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aak:J

    .line 51
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aal:Z

    .line 53
    iput v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aam:I

    .line 279
    new-instance v0, Lcom/xiaopeng/xui/app/XPanelActivity$3;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aag:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/app/XPanelActivity$3;-><init>(Lcom/xiaopeng/xui/app/XPanelActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aao:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/app/XPanelActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->qw()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/MotionEvent;)Z
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

    .line 245
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

    .line 245
    :goto_1
    return p1
.end method

.method private aC(Landroid/content/Context;)V
    .locals 3

    .line 267
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/xui/app/XPanelActivity;->aad:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aao:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    goto :goto_0

    .line 268
    :catch_0
    move-exception p1

    .line 270
    :goto_0
    return-void
.end method

.method private aD(Landroid/content/Context;)V
    .locals 1

    .line 274
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aao:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    goto :goto_0

    .line 275
    :catch_0
    move-exception p1

    .line 277
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/xui/app/XPanelActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->qx()V

    return-void
.end method

.method private bb(Z)V
    .locals 4

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 194
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

    iget v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aaj:F

    nop

    :cond_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 198
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 200
    :cond_3
    return-void
.end method

.method private bc(Z)V
    .locals 4

    .line 216
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getSpeed()F

    move-result v0

    .line 217
    nop

    .line 218
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 219
    iget p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aae:F

    mul-float/2addr p1, v0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 221
    move v2, p1

    :cond_1
    :goto_0
    cmpg-float p1, v0, v1

    if-gtz p1, :cond_2

    .line 223
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aag:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aaf:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 224
    :cond_2
    if-eqz v2, :cond_3

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aag:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aaf:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aag:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aaf:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    :cond_3
    :goto_1
    iput v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aae:F

    .line 230
    return-void
.end method

.method public static d(Landroid/content/Context;I)I
    .locals 1
    .param p1    # I
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
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 372
    mul-float/2addr p0, v0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
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

.method private qw()V
    .locals 2

    .line 203
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getSpeed()F

    move-result v0

    .line 204
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->qv()V

    .line 207
    :cond_0
    return-void
.end method

.method private qx()V
    .locals 1

    .line 262
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->bc(Z)V

    .line 263
    return-void
.end method

.method private shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 251
    nop

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XPanelActivity;->a(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 253
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 254
    :cond_1
    move p1, v2

    goto :goto_0

    .line 253
    :cond_2
    nop

    .line 254
    move p1, v1

    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 255
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aah:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 256
    return v2

    .line 258
    :cond_3
    return v1
.end method


# virtual methods
.method public ba(Z)V
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aal:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPanelActivity;->bb(Z)V

    .line 188
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->bc(Z)V

    .line 118
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 124
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
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->requestWindowFeature(I)Z

    .line 59
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance p1, Lcom/xiaopeng/xui/app/XPanelActivity$a;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/XPanelActivity$a;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aan:Lcom/xiaopeng/xui/app/XPanelActivity$a;

    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->ba(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->aD(Landroid/content/Context;)V

    .line 94
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aai:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->qv()V

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aai:Z

    .line 98
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

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

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->d(Landroid/content/Context;I)I

    move-result v0

    .line 68
    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_y:I

    invoke-static {p0, v1}, Lcom/xiaopeng/xui/app/XPanelActivity;->d(Landroid/content/Context;I)I

    move-result v1

    .line 69
    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_width:I

    invoke-static {p0, v2}, Lcom/xiaopeng/xui/app/XPanelActivity;->d(Landroid/content/Context;I)I

    move-result v2

    .line 70
    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_height:I

    invoke-static {p0, v3}, Lcom/xiaopeng/xui/app/XPanelActivity;->d(Landroid/content/Context;I)I

    move-result v3

    .line 71
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 76
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->qu()Lcom/xiaopeng/xui/app/XPanelActivity$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XPanelActivity$a;->dZ(I)Lcom/xiaopeng/xui/app/XPanelActivity$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/app/XPanelActivity$a;->ea(I)Lcom/xiaopeng/xui/app/XPanelActivity$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/app/XPanelActivity$a;->eb(I)Lcom/xiaopeng/xui/app/XPanelActivity$a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/app/XPanelActivity$a;->ec(I)Lcom/xiaopeng/xui/app/XPanelActivity$a;

    move-result-object p1

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XPanelActivity$a;->ed(I)Lcom/xiaopeng/xui/app/XPanelActivity$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XPanelActivity$a;->apply()V

    goto :goto_0

    .line 73
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->qu()Lcom/xiaopeng/xui/app/XPanelActivity$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XPanelActivity$a;->dZ(I)Lcom/xiaopeng/xui/app/XPanelActivity$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/app/XPanelActivity$a;->ea(I)Lcom/xiaopeng/xui/app/XPanelActivity$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/app/XPanelActivity$a;->eb(I)Lcom/xiaopeng/xui/app/XPanelActivity$a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/app/XPanelActivity$a;->ec(I)Lcom/xiaopeng/xui/app/XPanelActivity$a;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XPanelActivity$a;->ed(I)Lcom/xiaopeng/xui/app/XPanelActivity$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XPanelActivity$a;->apply()V

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

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->bc(Z)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->ba(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->aC(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 108
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/app/XPanelActivity;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPanelActivity;->qv()V

    .line 110
    const/4 p1, 0x1

    return p1

    .line 112
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public qu()Lcom/xiaopeng/xui/app/XPanelActivity$a;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aan:Lcom/xiaopeng/xui/app/XPanelActivity$a;

    return-object v0
.end method

.method public qv()V
    .locals 4

    .line 160
    iget v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aam:I

    .line 161
    new-instance v1, Lcom/xiaopeng/xui/app/XPanelActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity$2;-><init>(Lcom/xiaopeng/xui/app/XPanelActivity;I)V

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->ba(Z)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aag:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aak:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return-void
.end method

.method public recreate()V
    .locals 1

    .line 102
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->recreate()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity;->aai:Z

    .line 104
    return-void
.end method
