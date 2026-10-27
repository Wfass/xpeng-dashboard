.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;
.super Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;
.source "NormalAppBar.java"


# static fields
.field private static final DELAY:I = 0x1388

.field private static final KEY_DRAG_OR_COLLAPSED:Ljava/lang/String; = "NavigationBar_KEY_DRAG_OR_COLLAPSED"

.field private static final MSG_COLLAPSE:I = 0x1

.field private static final MSG_DISPLAY:I = 0x3

.field private static final MSG_HIDE:I = 0x2

.field private static dragOrTouched:Ljava/lang/Boolean;


# instance fields
.field private atLeft:Z

.field private expanded:Z

.field private functionButtonCount:I

.field private final handler:Landroid/os/Handler;

.field private final llBar:Landroid/widget/LinearLayout;

.field private final llNavFunctionButtons:Landroid/widget/LinearLayout;

.field private final spaceLeft:Landroid/widget/Space;

.field private final spaceRight:Landroid/widget/Space;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "navigationBar"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    .param p3, "screenId"    # I
    .param p4, "areaType"    # Ljava/lang/String;
    .param p5, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;
    .param p6, "atLeft"    # Z

    .line 87
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;-><init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 53
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->handler:Landroid/os/Handler;

    .line 88
    iput-boolean p6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->atLeft:Z

    .line 90
    const v0, 0x7f0c0037

    invoke-static {p1, v0, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    const v0, 0x7f0900ca

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llBar:Landroid/widget/LinearLayout;

    .line 93
    const v0, 0x7f090052

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    .line 94
    .local v0, "btnExpandCollapse":Lcom/xiaopeng/xui/widget/XImageView;
    const v1, 0x7f0900cc

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llNavFunctionButtons:Landroid/widget/LinearLayout;

    .line 95
    const v1, 0x7f090135

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->spaceLeft:Landroid/widget/Space;

    .line 96
    const v1, 0x7f090136

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->spaceRight:Landroid/widget/Space;

    .line 98
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NormalAppBar$MI-JeHhlsBILIGJwxgtEe_KdZmo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NormalAppBar$MI-JeHhlsBILIGJwxgtEe_KdZmo;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-direct {p0, p4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->setupFunctionButtons(Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->dragOrTouched:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->isDragOrTouched()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->dragOrTouched:Ljava/lang/Boolean;

    .line 107
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->dragOrTouched:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->collapse()V

    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expand()V

    .line 111
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->msgReset()V

    .line 113
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->collapse()V

    return-void
.end method

.method private addFunctionButton(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;)V
    .locals 2
    .param p1, "button"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;

    .line 256
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 257
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/innerutils/DensityUtil;->dp2px(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 258
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/innerutils/DensityUtil;->dp2px(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 259
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llNavFunctionButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->functionButtonCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->functionButtonCount:I

    .line 261
    return-void
.end method

.method private clearFunctionButton()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llNavFunctionButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->functionButtonCount:I

    .line 253
    return-void
.end method

.method private collapse()V
    .locals 2

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expanded:Z

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llNavFunctionButtons:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->updateBackground()V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->navigationBar:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->setAlpha(F)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->navigationBar:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->updateViewLayoutAfterWidthChanged()V

    .line 155
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->msgReset()V

    .line 156
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->msgDelayHide()V

    .line 157
    return-void
.end method

.method private expand()V
    .locals 2

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expanded:Z

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llNavFunctionButtons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->updateBackground()V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->navigationBar:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->setAlpha(F)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->navigationBar:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->updateViewLayoutAfterWidthChanged()V

    .line 143
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->msgReset()V

    .line 144
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->msgDelayCollapse()V

    .line 145
    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->navigationBar:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static isDragOrTouched()Z
    .locals 3

    .line 204
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "NavigationBar_KEY_DRAG_OR_COLLAPSED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$9c4vWZLUc6-jUrziaQWt5uGGDUI(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->collapse()V

    return-void
.end method

.method public static synthetic lambda$lvu2td3pED-2kngvpfbselv3TBQ()V
    .locals 0

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->setDragOrTouched()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->toggleExpand()V

    return-void
.end method

.method private msgCollapse()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    return-void
.end method

.method private msgDelayCollapse()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 181
    return-void
.end method

.method private msgDelayHide()V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 189
    return-void
.end method

.method private msgDisplay()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    return-void
.end method

.method private msgReset()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    return-void
.end method

.method private static setDragOrTouched()V
    .locals 3

    .line 208
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "NavigationBar_KEY_DRAG_OR_COLLAPSED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    return-void
.end method

.method private setupFunctionButtons(Ljava/lang/String;)V
    .locals 7
    .param p1, "areaType"    # Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->clearFunctionButton()V

    .line 215
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-string v0, "com.xp.xpad"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget-object v1, v1, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarShareButton;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->context:Landroid/content/Context;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->screenId:I

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarShareButton;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->addFunctionButton(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;)V

    .line 224
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->appType:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    .line 225
    .local v0, "showKaraoke":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 226
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarKaraokeButton;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->context:Landroid/content/Context;

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->screenId:I

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    invoke-direct {v1, v4, v5, p1, v6}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarKaraokeButton;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->addFunctionButton(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;)V

    .line 231
    :cond_3
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarCloseButton;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->context:Landroid/content/Context;

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->screenId:I

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    invoke-direct {v1, v4, v5, p1, v6}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarCloseButton;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->addFunctionButton(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;)V

    .line 233
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarBackButton;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->context:Landroid/content/Context;

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->screenId:I

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    invoke-direct {v1, v4, v5, p1, v6}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarBackButton;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->addFunctionButton(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;)V

    .line 235
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v1, v1, Lcom/xiaopeng/app/xpPackageInfo;->navigationKey:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    move v2, v3

    nop

    :cond_4
    move v1, v2

    .line 236
    .local v1, "showHome":Z
    if-eqz v1, :cond_5

    .line 237
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarHomeButton;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->context:Landroid/content/Context;

    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->screenId:I

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    invoke-direct {v2, v3, v4, p1, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarHomeButton;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->addFunctionButton(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;)V

    .line 240
    :cond_5
    const-string v2, "logical"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 241
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarDockerButton;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->context:Landroid/content/Context;

    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->screenId:I

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    invoke-direct {v2, v3, v4, p1, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarDockerButton;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->addFunctionButton(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;)V

    .line 243
    :cond_6
    return-void
.end method

.method private toggleExpand()V
    .locals 2

    .line 123
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expanded:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->collapse()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expand()V

    .line 129
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->dragOrTouched:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->dragOrTouched:Ljava/lang/Boolean;

    .line 131
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NormalAppBar$lvu2td3pED-2kngvpfbselv3TBQ;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NormalAppBar$lvu2td3pED-2kngvpfbselv3TBQ;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_1
    return-void
.end method

.method private updateBackground()V
    .locals 4

    .line 160
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expanded:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llBar:Landroid/widget/LinearLayout;

    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 163
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->atLeft:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llBar:Landroid/widget/LinearLayout;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llBar:Landroid/widget/LinearLayout;

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->spaceLeft:Landroid/widget/Space;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expanded:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->spaceRight:Landroid/widget/Space;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expanded:Z

    if-eqz v1, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/Space;->setVisibility(I)V

    .line 171
    return-void
.end method


# virtual methods
.method public getDefaultPosition(Landroid/graphics/Rect;)[I
    .locals 3
    .param p1, "windowRect"    # Landroid/graphics/Rect;

    .line 337
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0x78

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public onClickAppArea()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->navigationBar:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->msgReset()V

    .line 326
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->msgDisplay()V

    .line 327
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->msgDelayHide()V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->navigationBar:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expanded:Z

    if-eqz v0, :cond_1

    .line 330
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->msgReset()V

    .line 331
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->msgCollapse()V

    .line 333
    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 80
    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 82
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->updateBackground()V

    .line 84
    :cond_0
    return-void
.end method

.method public onDockVisibilityChanged(IZ)V
    .locals 2
    .param p1, "screenIdParams"    # I
    .param p2, "visibility"    # Z

    .line 73
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->screenId:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expanded:Z

    if-eqz v0, :cond_0

    const-string v0, "logical"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->areaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->navigationBar:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NormalAppBar$9c4vWZLUc6-jUrziaQWt5uGGDUI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NormalAppBar$9c4vWZLUc6-jUrziaQWt5uGGDUI;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->post(Ljava/lang/Runnable;)Z

    .line 76
    :cond_0
    return-void
.end method

.method public onFinishDrag(Z)V
    .locals 2
    .param p1, "leftSide"    # Z

    .line 273
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->atLeft:Z

    .line 275
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expanded:Z

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llBar:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const v1, 0x7f080078

    goto :goto_0

    :cond_0
    const v1, 0x7f080079

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 279
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->dragOrTouched:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->dragOrTouched:Ljava/lang/Boolean;

    .line 281
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NormalAppBar$lvu2td3pED-2kngvpfbselv3TBQ;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NormalAppBar$lvu2td3pED-2kngvpfbselv3TBQ;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 283
    :cond_2
    return-void
.end method

.method public onFinishTouch()V
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expanded:Z

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->msgDelayCollapse()V

    goto :goto_0

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->msgDelayHide()V

    .line 293
    :goto_0
    return-void
.end method

.method public onMoveToCenter()V
    .locals 2

    .line 311
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expanded:Z

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llBar:Landroid/widget/LinearLayout;

    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 314
    :cond_0
    return-void
.end method

.method public onMoveToLeftEdge()V
    .locals 2

    .line 297
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expanded:Z

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llBar:Landroid/widget/LinearLayout;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 300
    :cond_0
    return-void
.end method

.method public onMoveToRightEdge()V
    .locals 2

    .line 304
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->expanded:Z

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->llBar:Landroid/widget/LinearLayout;

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 307
    :cond_0
    return-void
.end method

.method public onStartTouch()V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->msgReset()V

    .line 269
    return-void
.end method

.method public onUpdateLayout(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 319
    return-void
.end method

.method public update(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)Z
    .locals 2
    .param p1, "areaType"    # Ljava/lang/String;
    .param p2, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 117
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->functionButtonCount:I

    .line 118
    .local v0, "prevFunctionButtonCount":I
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->setupFunctionButtons(Ljava/lang/String;)V

    .line 119
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->functionButtonCount:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
