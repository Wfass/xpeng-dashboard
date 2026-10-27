.class Lcom/xiaopeng/xui/app/XDialog$1;
.super Ljava/lang/Object;
.source "XDialog.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/app/XDialog;

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog$1;->this$0:Lcom/xiaopeng/xui/app/XDialog;

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

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog$1;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XDialog;->access$000(Lcom/xiaopeng/xui/app/XDialog;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    .line 83
    const-string v0, "XDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog$1;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->cancel()V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog$1;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XDialog;->access$100(Lcom/xiaopeng/xui/app/XDialog;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog$1;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XDialog;->access$100(Lcom/xiaopeng/xui/app/XDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog$1;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, v1, Lcom/xiaopeng/xui/app/XDialog;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 89
    :cond_0
    return-void
.end method
