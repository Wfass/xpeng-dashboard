.class Lcom/xiaopeng/xui/app/XDialog$1;
.super Ljava/lang/Object;
.source "XDialog.java"

# interfaces
.implements Landroidx/lifecycle/l;


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

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog$1;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/n;Landroidx/lifecycle/j$a;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog$1;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/XDialog;->access$000(Lcom/xiaopeng/xui/app/XDialog;)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;

    if-ne p2, p1, :cond_0

    const-string p1, "XDialog"

    const-string p2, "onStop"

    .line 83
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog$1;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->cancel()V

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog$1;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/XDialog;->access$100(Lcom/xiaopeng/xui/app/XDialog;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroidx/lifecycle/n;

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog$1;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/XDialog;->access$100(Lcom/xiaopeng/xui/app/XDialog;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/n;

    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/xui/app/XDialog$1;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    iget-object p2, p2, Lcom/xiaopeng/xui/app/XDialog;->lifecycleEventObserver:Landroidx/lifecycle/l;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/m;)V

    :cond_0
    return-void
.end method
