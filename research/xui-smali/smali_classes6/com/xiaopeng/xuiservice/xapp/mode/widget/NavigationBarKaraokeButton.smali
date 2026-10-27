.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarKaraokeButton;
.super Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;
.source "NavigationBarKaraokeButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenId"    # I
    .param p3, "areaType"    # Ljava/lang/String;
    .param p4, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getIconResId()I
    .locals 1

    .line 16
    const v0, 0x7f0801ed

    return v0
.end method

.method protected onClick(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 1
    .param p1, "screenId"    # I
    .param p2, "areaType"    # Ljava/lang/String;
    .param p3, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 21
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->hideOrShowKaraokeEffectDialog(I)V

    .line 22
    return-void
.end method
