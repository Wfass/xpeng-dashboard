.class Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;
.super Ljava/lang/Object;
.source "XTouchTargetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->extendViewTouchTarget(Landroid/view/View;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ancestorId:I

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IIIII)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;->val$ancestorId:I

    iput p3, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;->val$left:I

    iput p4, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;->val$top:I

    iput p5, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;->val$right:I

    iput p6, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;->val$ancestorId:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->findViewAncestor(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "ancestor":Landroid/view/View;
    iget-object v2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;->val$view:Landroid/view/View;

    iget v4, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;->val$left:I

    iget v5, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;->val$top:I

    iget v6, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;->val$right:I

    iget v7, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;->val$bottom:I

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->extendViewTouchTarget(Landroid/view/View;Landroid/view/View;IIII)V

    .line 69
    return-void
.end method
