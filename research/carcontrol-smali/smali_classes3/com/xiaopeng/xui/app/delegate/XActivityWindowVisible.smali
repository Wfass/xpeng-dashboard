.class public Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;
.super Ljava/lang/Object;
.source "XActivityWindowVisible.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;


# static fields
.field private static final TAG:Ljava/lang/String; = "XActivityWindowVisible"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAutoVisibility:Z

.field private mDimAlpha:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public changeWindowVisible(Z)V
    .locals 4

    .line 38
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->mAutoVisibility:Z

    if-eqz v0, :cond_3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeWindowVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XActivityWindowVisible"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 42
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v3, v2

    .line 44
    :goto_0
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    if-eqz p1, :cond_1

    .line 45
    iget v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->mDimAlpha:F

    :cond_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 47
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010032

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->mDimAlpha:F

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->changeWindowVisible(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->changeWindowVisible(Z)V

    return-void
.end method

.method public setAutoVisibleEnableOnPause(Z)V
    .locals 2

    .line 31
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->mAutoVisibility:Z

    if-eq p1, v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoVisibleEnableOnPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XActivityWindowVisible"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :cond_0
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->mAutoVisibility:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mDimAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->mDimAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->mAutoVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
