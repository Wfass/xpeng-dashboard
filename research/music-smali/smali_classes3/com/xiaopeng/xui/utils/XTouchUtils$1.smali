.class final Lcom/xiaopeng/xui/utils/XTouchUtils$1;
.super Ljava/lang/Object;
.source "XTouchUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/utils/XTouchUtils;->enlargeTouchDelegate(Landroid/view/View;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$addLayoutChange:Z

.field final synthetic val$expandTouchHeight:I

.field final synthetic val$expandTouchWidth:I

.field final synthetic val$parentView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IILandroid/view/View;Z)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$expandTouchHeight:I

    iput p3, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$expandTouchWidth:I

    iput-object p4, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$parentView:Landroid/view/View;

    iput-boolean p5, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$addLayoutChange:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 552
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 553
    iget-object v1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$view:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 554
    iget-object v1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 556
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$expandTouchHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 557
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$expandTouchHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 558
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$expandTouchWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 559
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$expandTouchWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 561
    iget-object v1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v1

    if-nez v1, :cond_0

    .line 563
    new-instance v1, Lbxl;

    iget-object v2, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$view:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Lbxl;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 564
    iget-object v2, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$parentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 566
    :cond_0
    instance-of v2, v1, Lbxl;

    if-eqz v2, :cond_1

    .line 567
    check-cast v1, Lbxl;

    iget-object v2, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$view:Landroid/view/View;

    new-instance v3, Landroid/view/TouchDelegate;

    invoke-direct {v3, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Lbxl;->a(Landroid/view/View;Landroid/view/TouchDelegate;)V

    .line 568
    iget-boolean v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$addLayoutChange:Z

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$view:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/xui/utils/XTouchUtils$1$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/utils/XTouchUtils$1$1;-><init>(Lcom/xiaopeng/xui/utils/XTouchUtils$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    return-void
.end method
