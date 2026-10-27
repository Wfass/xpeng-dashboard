.class public Lcom/xiaopeng/xuiservice/smart/action/util/WindowUtil;
.super Ljava/lang/Object;
.source "WindowUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWindowLayoutParam(Landroid/content/Context;DDDD)Landroid/view/WindowManager$LayoutParams;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .line 14
    const-string/jumbo v0, "window"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 15
    .local v0, "windowManager":Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 18
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 19
    .local v3, "screenWidth":I
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 20
    .local v4, "screenHeight":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCREEN WIDTH = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", HEIGHT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 22
    int-to-double v5, v3

    mul-double v5, v5, p1

    double-to-int v5, v5

    .line 23
    .local v5, "viewX":I
    int-to-double v7, v4

    mul-double v7, v7, p3

    double-to-int v6, v7

    .line 24
    .local v6, "viewY":I
    int-to-double v7, v3

    mul-double v7, v7, p5

    double-to-int v7, v7

    .line 25
    .local v7, "viewW":I
    move-object v15, v0

    int-to-double v0, v4

    .line 25
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    .local v15, "windowManager":Landroid/view/WindowManager;
    mul-double v0, v0, p7

    double-to-int v0, v0

    .line 27
    .local v0, "viewH":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VIEW X = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", Y = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", W = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", H = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 29
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v12, 0x7f6

    const/4 v13, 0x0

    const/4 v14, -0x2

    move-object v9, v1

    move v10, v7

    move v11, v0

    invoke-direct/range {v9 .. v14}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 31
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const v8, 0x80028

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 33
    const v8, 0x800033

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 34
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 35
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 37
    return-object v1
.end method
