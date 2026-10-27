.class public Lcom/xiaopeng/carcontrol/util/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delayClickable(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const-wide/16 v0, 0x3e8

    .line 39
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/carcontrol/util/UIUtils;->delayClickable(Landroid/view/View;J)V

    return-void
.end method

.method public static delayClickable(Landroid/view/View;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "duration"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "UIUtils"

    const-string/jumbo p1, "view is null"

    .line 31
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    const/4 v0, 0x1

    .line 35
    new-instance v1, Lcom/xiaopeng/carcontrol/util/-$$Lambda$UIUtils$gmMRTmti76KsueUx134EpNe2DGc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/util/-$$Lambda$UIUtils$gmMRTmti76KsueUx134EpNe2DGc;-><init>(Landroid/view/View;)V

    invoke-static {v0, v1, p1, p2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public static delayEnable(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "UIUtils"

    const-string/jumbo v0, "view is null"

    .line 22
    invoke-static {p0, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x1

    .line 26
    new-instance v1, Lcom/xiaopeng/carcontrol/util/-$$Lambda$UIUtils$pF3DMVYqFzlhJLpewoNo_spqKnM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/util/-$$Lambda$UIUtils$pF3DMVYqFzlhJLpewoNo_spqKnM;-><init>(Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resid"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$delayClickable$1(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method static synthetic lambda$delayEnable$0(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
