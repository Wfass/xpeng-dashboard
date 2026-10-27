.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarDockerButton;
.super Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;
.source "NavigationBarDockerButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenId"    # I
    .param p3, "areaType"    # Ljava/lang/String;
    .param p4, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected getIconResId()I
    .locals 1

    .line 24
    const v0, 0x7f0801eb

    return v0
.end method

.method protected onClick(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 4
    .param p1, "screenId"    # I
    .param p2, "areaType"    # Ljava/lang/String;
    .param p3, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 29
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/16 v1, 0x7e3

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getSystemBarVisibility(II)I

    move-result v0

    .line 31
    .local v0, "visibility":I
    const/4 v2, 0x4

    if-ne v2, v0, :cond_0

    .line 32
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->setSystemBarVisibility(III)V

    .line 34
    :cond_0
    return-void
.end method
