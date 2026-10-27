.class Lcom/xiaopeng/xui/widget/XTabLayout$5;
.super Ljava/lang/Object;
.source "XTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTabLayout;->moveIndicatorTo(ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XTabLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 625
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 628
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 629
    .local v0, "value":F
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$600(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$600(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v2

    div-float/2addr v1, v2

    .line 630
    .local v1, "p":F
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$600(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 631
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$800(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$600(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v4

    div-float v4, v0, v4

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$800(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v5

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v6}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$900(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$702(Lcom/xiaopeng/xui/widget/XTabLayout;F)F

    goto :goto_0

    .line 633
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$800(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$600(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v4

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$600(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    div-float/2addr v4, v5

    sub-float/2addr v4, v6

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$800(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v5

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v6}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$900(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$702(Lcom/xiaopeng/xui/widget/XTabLayout;F)F

    .line 635
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1000(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1100(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v3

    const-wide v4, 0x3ff0c49ba5e353f8L    # 1.048

    if-le v2, v3, :cond_1

    .line 636
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1100(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v3

    int-to-double v6, v3

    float-to-double v8, v0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1000(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v5

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v8}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1100(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v8

    sub-int/2addr v5, v8

    int-to-double v8, v5

    mul-double/2addr v3, v8

    add-double/2addr v6, v3

    double-to-int v3, v6

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1202(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    .line 637
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1400(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1500(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1400(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1302(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    goto :goto_1

    .line 639
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1100(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v6}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1000(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v6

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v7}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1100(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1202(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    .line 640
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1400(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v3

    int-to-double v6, v3

    float-to-double v8, v0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1500(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v5

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v8}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1400(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v8

    sub-int/2addr v5, v8

    int-to-double v8, v5

    mul-double/2addr v3, v8

    add-double/2addr v6, v3

    double-to-int v3, v6

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1302(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    .line 643
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1600(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1700(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v3

    const-wide v4, 0x4012978d4fdf3b64L    # 4.648

    if-le v2, v3, :cond_2

    .line 644
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1700(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v3

    int-to-double v6, v3

    float-to-double v8, v0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1600(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v5

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v8}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1700(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v8

    sub-int/2addr v5, v8

    int-to-double v8, v5

    mul-double/2addr v3, v8

    add-double/2addr v6, v3

    double-to-int v3, v6

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1802(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    .line 645
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$2000(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$2100(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$2000(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1902(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    goto :goto_2

    .line 647
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1700(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v6}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1600(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v6

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v7}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1700(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1802(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    .line 648
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$2000(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v3

    int-to-double v6, v3

    float-to-double v8, v0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$2100(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v5

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v8}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$2000(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v8

    sub-int/2addr v5, v8

    int-to-double v8, v5

    mul-double/2addr v3, v8

    add-double/2addr v6, v3

    double-to-int v3, v6

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$1902(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    .line 650
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->invalidate()V

    .line 651
    return-void
.end method
