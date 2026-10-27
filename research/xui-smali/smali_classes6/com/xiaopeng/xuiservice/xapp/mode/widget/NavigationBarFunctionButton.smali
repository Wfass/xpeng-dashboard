.class public abstract Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;
.super Lcom/xiaopeng/xui/widget/XImageButton;
.source "NavigationBarFunctionButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final areaType:Ljava/lang/String;

.field private final screenId:I

.field private final xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenId"    # I
    .param p3, "areaType"    # Ljava/lang/String;
    .param p4, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;-><init>(Landroid/content/Context;)V

    .line 23
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->screenId:I

    .line 24
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->areaType:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    .line 27
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 28
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->setBackgroundResource(I)V

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->getIconResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->setImageResource(I)V

    .line 31
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected abstract getIconResId()I
.end method

.method protected abstract onClick(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->screenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", areaType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->areaType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", xpPackageInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget-object v2, v2, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->screenId:I

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->areaType:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->onClick(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 54
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 36
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37
    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->setBackgroundResource(I)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->setImageResource(I)V

    .line 40
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->setBackgroundResource(I)V

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->getIconResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;->setImageResource(I)V

    .line 43
    :cond_0
    return-void
.end method
