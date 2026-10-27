.class final Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;
.super Ljava/lang/Object;
.source "XTouchTargetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->extendViewTouchTarget(Landroid/view/View;Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ancestor:Landroid/view/View;

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$ancestor:Landroid/view/View;

    iput p3, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$left:I

    iput p4, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$top:I

    iput p5, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$right:I

    iput p6, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not isAttachedToWindow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$000(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$view:Landroid/view/View;

    invoke-static {}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$100()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 114
    invoke-static {}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$100()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$100()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 124
    invoke-static {}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$100()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$ancestor:Landroid/view/View;

    if-eq v1, v2, :cond_3

    .line 128
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 129
    check-cast v1, Landroid/view/View;

    .line 130
    invoke-static {}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$100()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 131
    invoke-static {}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$100()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$100()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-void

    .line 139
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 140
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 141
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 142
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 143
    new-instance v1, Lcom/xiaopeng/xui/view/touch/XTouchDelegate;

    iget-object v2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$view:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Lcom/xiaopeng/xui/view/touch/XTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$ancestor:Landroid/view/View;

    invoke-static {v0}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->getOrCreateTouchDelegateGroup(Landroid/view/View;)Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->addTouchDelegate(Lcom/xiaopeng/xui/view/touch/XTouchDelegate;)V

    .line 148
    iget-object v2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$ancestor:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 152
    iget-object v2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$view:Landroid/view/View;

    new-instance v3, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;

    invoke-direct {v3, v1, v0}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;-><init>(Lcom/xiaopeng/xui/view/touch/XTouchDelegate;Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    .line 115
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " width or height == 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$000(Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;

    iget-object v2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$ancestor:Landroid/view/View;

    iget v3, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$left:I

    iget v4, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$top:I

    iget v5, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$right:I

    iget v6, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$bottom:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;-><init>(Landroid/view/View;IIII)V

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
