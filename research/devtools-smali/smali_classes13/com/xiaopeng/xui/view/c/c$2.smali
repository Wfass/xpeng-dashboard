.class final Lcom/xiaopeng/xui/view/c/c$2;
.super Ljava/lang/Object;
.source "XTouchTargetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/view/c/c;->a(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic abH:Landroid/view/ViewGroup;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/xiaopeng/xui/view/c/c$2;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/xiaopeng/xui/view/c/c$2;->abH:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xui/view/c/c$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " as not isAttachedToWindow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/view/c/c;->fl(Ljava/lang/String;)V

    .line 208
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/c/c$2;->abH:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xui/view/c/c$2;->abH:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/c/c$2;->abH:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/view/c/c$2;->abH:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 218
    new-instance v1, Lcom/xiaopeng/xui/view/c/a;

    iget-object v2, p0, Lcom/xiaopeng/xui/view/c/c$2;->val$view:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Lcom/xiaopeng/xui/view/c/a;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xui/view/c/c$2;->abH:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/view/c/c;->k(Landroid/view/View;)Lcom/xiaopeng/xui/view/c/b;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/view/c/b;->a(Lcom/xiaopeng/xui/view/c/a;)V

    .line 222
    iget-object v2, p0, Lcom/xiaopeng/xui/view/c/c$2;->abH:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 224
    iget-object v2, p0, Lcom/xiaopeng/xui/view/c/c$2;->val$view:Landroid/view/View;

    new-instance v3, Lcom/xiaopeng/xui/view/c/c$c;

    invoke-direct {v3, v1, v0}, Lcom/xiaopeng/xui/view/c/c$c;-><init>(Lcom/xiaopeng/xui/view/c/a;Lcom/xiaopeng/xui/view/c/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 225
    return-void

    .line 211
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " as width or height == 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/view/c/c;->fl(Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/xiaopeng/xui/view/c/c$b;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/c/c$2;->abH:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/view/c/c$b;-><init>(Landroid/view/ViewGroup;)V

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/xui/view/c/c$2;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 214
    iget-object v1, p0, Lcom/xiaopeng/xui/view/c/c$2;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 215
    return-void
.end method
