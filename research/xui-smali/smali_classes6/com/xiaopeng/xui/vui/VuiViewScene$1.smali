.class Lcom/xiaopeng/xui/vui/VuiViewScene$1;
.super Ljava/lang/Object;
.source "VuiViewScene.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/vui/VuiViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/vui/VuiViewScene;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/vui/VuiViewScene;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/vui/VuiViewScene;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene$1;->this$0:Lcom/xiaopeng/xui/vui/VuiViewScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 36
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene$1;->this$0:Lcom/xiaopeng/xui/vui/VuiViewScene;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->access$000(Lcom/xiaopeng/xui/vui/VuiViewScene;)V

    .line 39
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 43
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene$1;->this$0:Lcom/xiaopeng/xui/vui/VuiViewScene;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->access$100(Lcom/xiaopeng/xui/vui/VuiViewScene;)V

    .line 46
    :cond_0
    return-void
.end method
