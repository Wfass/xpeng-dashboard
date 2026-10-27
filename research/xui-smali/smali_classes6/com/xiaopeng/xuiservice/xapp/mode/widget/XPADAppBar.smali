.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;
.super Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;
.source "XPADAppBar.java"


# static fields
.field private static final DELAY:I = 0x1388

.field private static final MSG_HIGHLIGHT:I = 0x1

.field private static final MSG_NORMAL:I = 0x2


# instance fields
.field handler:Landroid/os/Handler;

.field imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "navigationBar"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    .param p3, "screenId"    # I
    .param p4, "areaType"    # Ljava/lang/String;
    .param p5, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;-><init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 31
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->handler:Landroid/os/Handler;

    .line 48
    new-instance v0, Landroid/widget/Space;

    invoke-direct {v0, p1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "space":Landroid/widget/Space;
    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->addView(Landroid/view/View;II)V

    .line 51
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->imageView:Landroid/widget/ImageView;

    .line 52
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->imageView:Landroid/widget/ImageView;

    const/4 v3, -0x2

    invoke-virtual {p2, v2, v3, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->addView(Landroid/view/View;II)V

    .line 54
    new-instance v2, Landroid/widget/Space;

    invoke-direct {v2, p1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    .line 55
    invoke-virtual {p2, v0, v1, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->addView(Landroid/view/View;II)V

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->imageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$XPADAppBar$lmmVodCR6OyekA-pcD3PrNYwons;

    invoke-direct {v2, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$XPADAppBar$lmmVodCR6OyekA-pcD3PrNYwons;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->msgHighlight()V

    .line 70
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->msgDelayNormal()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;
    .param p1, "x1"    # Z

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->setHighlight(Z)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 59
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xp.xpad.desktop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    const-string v1, "from"

    const-string v2, "home-component"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NavigationBar2"

    const-string v2, "click xpad back"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private msgDelayNormal()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    return-void
.end method

.method private msgHighlight()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    return-void
.end method

.method private msgReset()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    return-void
.end method

.method private setHighlight(Z)V
    .locals 2
    .param p1, "h"    # Z

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v1, 0x7f0801f1

    goto :goto_0

    :cond_0
    const v1, 0x7f0801f0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public getDefaultPosition(Landroid/graphics/Rect;)[I
    .locals 3
    .param p1, "windowRect"    # Landroid/graphics/Rect;

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit16 v1, v1, -0xa0

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public onClickAppArea()V
    .locals 0

    .line 145
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 98
    return-void
.end method

.method public onDockVisibilityChanged(IZ)V
    .locals 0
    .param p1, "screenIdParams"    # I
    .param p2, "visibility"    # Z

    .line 93
    return-void
.end method

.method public onFinishDrag(Z)V
    .locals 0
    .param p1, "leftSide"    # Z

    .line 113
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->msgReset()V

    .line 114
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->msgDelayNormal()V

    .line 115
    return-void
.end method

.method public onFinishTouch()V
    .locals 0

    .line 120
    return-void
.end method

.method public onMoveToCenter()V
    .locals 0

    .line 135
    return-void
.end method

.method public onMoveToLeftEdge()V
    .locals 0

    .line 125
    return-void
.end method

.method public onMoveToRightEdge()V
    .locals 0

    .line 130
    return-void
.end method

.method public onStartTouch()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->msgReset()V

    .line 108
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->msgHighlight()V

    .line 109
    return-void
.end method

.method public onUpdateLayout(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 140
    return-void
.end method

.method public update(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)Z
    .locals 1
    .param p1, "areaType"    # Ljava/lang/String;
    .param p2, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 102
    const/4 v0, 0x1

    return v0
.end method
