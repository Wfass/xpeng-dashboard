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
    .param p1, "this$0"    # Lcom/xiaopeng/xui/app/XDialog;

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog$2;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog$2;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XDialog;->access$100(Lcom/xiaopeng/xui/app/XDialog;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog$2;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XDialog;->access$100(Lcom/xiaopeng/xui/app/XDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog$2;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, v1, Lcom/xiaopeng/xui/app/XDialog;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 138
    :cond_0
    return-void
.end method
