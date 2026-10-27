.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarJoyStickButton;
.super Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;
.source "NavigationBarJoyStickButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenId"    # I
    .param p3, "areaType"    # Ljava/lang/String;
    .param p4, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected getIconResId()I
    .locals 1

    .line 14
    const v0, 0x7f0801c7

    return v0
.end method

.method protected onClick(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 0
    .param p1, "screenId"    # I
    .param p2, "areaType"    # Ljava/lang/String;
    .param p3, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 20
    return-void
.end method
