.class Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "VuiFloatingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;->onAnimationEnd(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->unRegisterAnimationCallback()V

    .line 58
    return-void
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;->onAnimationStart(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V

    .line 49
    :cond_0
    return-void
.end method
