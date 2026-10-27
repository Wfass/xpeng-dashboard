.class Lcom/xiaopeng/xui/app/XDialog$2;
.super Ljava/lang/Object;
.source "XDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/XDialog;->init()V
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

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog$2;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog$2;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/XDialog;->access$100(Lcom/xiaopeng/xui/app/XDialog;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog$2;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/XDialog;->access$100(Lcom/xiaopeng/xui/app/XDialog;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog$2;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v0, v0, Lcom/xiaopeng/xui/app/XDialog;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method
