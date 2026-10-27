.class Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;
.super Ljava/lang/Object;
.source "XTouchTargetUtils.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutAttachStateChangeListener"
.end annotation


# static fields
.field private static msCount:I


# instance fields
.field private ancestor:Landroid/view/View;

.field bottom:I

.field left:I

.field right:I

.field top:I


# direct methods
.method constructor <init>(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "ancestor"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->ancestor:Landroid/view/View;

    .line 162
    iput p2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->left:I

    .line 163
    iput p3, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->top:I

    .line 164
    iput p4, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->right:I

    .line 165
    iput p5, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->bottom:I

    .line 166
    sget v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->msCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->msCount:I

    .line 167
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 170
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 171
    sget v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->msCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->msCount:I

    .line 172
    sget v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->msCount:I

    if-nez v0, :cond_0

    .line 173
    const-string v0, "xpui-touch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LayoutAttachStateChangeListener  finalize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->msCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left1"    # I
    .param p3, "top1"    # I
    .param p4, "right1"    # I
    .param p5, "bottom1"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    move-object v0, p0

    move-object v7, p1

    .line 178
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 179
    iget-object v2, v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->ancestor:Landroid/view/View;

    iget v3, v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->left:I

    iget v4, v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->top:I

    iget v5, v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->right:I

    iget v6, v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->bottom:I

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->extendViewTouchTarget(Landroid/view/View;Landroid/view/View;IIII)V

    .line 180
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;->ancestor:Landroid/view/View;

    .line 181
    invoke-virtual {v7, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 182
    invoke-virtual {v7, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 183
    const-string v1, " LayoutAttachStateChangeListener  onLayoutChange "

    invoke-static {v1}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$000(Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 188
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 191
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 192
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 193
    const-string v0, " LayoutAttachStateChangeListener  onViewDetachedFromWindow "

    invoke-static {v0}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$000(Ljava/lang/String;)V

    .line 194
    return-void
.end method
