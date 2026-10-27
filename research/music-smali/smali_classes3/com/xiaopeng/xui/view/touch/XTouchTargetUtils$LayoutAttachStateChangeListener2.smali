.class Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener2;
.super Ljava/lang/Object;
.source "XTouchTargetUtils.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutAttachStateChangeListener2"
.end annotation


# static fields
.field private static msCount:I


# instance fields
.field private ancestor:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener2;->ancestor:Landroid/view/ViewGroup;

    .line 235
    sget p1, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener2;->msCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener2;->msCount:I

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .line 239
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 240
    sget v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener2;->msCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener2;->msCount:I

    .line 241
    sget v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener2;->msCount:I

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LayoutAttachStateChangeListener2  finalize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener2;->msCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xpui-touch"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-lez p2, :cond_0

    .line 249
    iget-object p2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener2;->ancestor:Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    const/4 p2, 0x0

    .line 250
    iput-object p2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener2;->ancestor:Landroid/view/ViewGroup;

    .line 251
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 252
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-string p1, " LayoutAttachStateChangeListener2  onLayoutChange "

    .line 253
    invoke-static {p1}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$000(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 260
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 261
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-string p1, " LayoutAttachStateChangeListener2  onViewDetachedFromWindow "

    .line 262
    invoke-static {p1}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$000(Ljava/lang/String;)V

    return-void
.end method
