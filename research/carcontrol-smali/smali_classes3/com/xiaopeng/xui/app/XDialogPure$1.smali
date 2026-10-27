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

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$1;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$1;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/XDialogPure;->access$000(Lcom/xiaopeng/xui/app/XDialogPure;)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    const-string p1, "XDialog"

    const-string p2, "onStop"

    .line 58
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$1;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialogPure;->cancel()V

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$1;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/XDialogPure;->access$100(Lcom/xiaopeng/xui/app/XDialogPure;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$1;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/XDialogPure;->access$100(Lcom/xiaopeng/xui/app/XDialogPure;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/xui/app/XDialogPure$1;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    iget-object p2, p2, Lcom/xiaopeng/xui/app/XDialogPure;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method
