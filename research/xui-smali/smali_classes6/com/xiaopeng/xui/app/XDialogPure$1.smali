.class Lcom/xiaopeng/xui/app/XDialogPure$1;
.super Ljava/lang/Object;
.source "XDialogPure.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XDialogPure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XDialogPure;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XDialogPure;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/app/XDialogPure;

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$1;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$1;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->access$000(Lcom/xiaopeng/xui/app/XDialogPure;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    .line 58
    const-string v0, "XDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$1;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->cancel()V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$1;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->access$100(Lcom/xiaopeng/xui/app/XDialogPure;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$1;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->access$100(Lcom/xiaopeng/xui/app/XDialogPure;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure$1;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    iget-object v1, v1, Lcom/xiaopeng/xui/app/XDialogPure;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 64
    :cond_0
    return-void
.end method
