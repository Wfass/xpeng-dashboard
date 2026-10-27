.class Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder$1;
.super Ljava/lang/Object;
.source "SystemDelegateBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;


# direct methods
.method constructor <init>(Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder$1;->this$0:Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 27
    const-string v0, "SystemDelegateBinder"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder$1;->this$0:Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;

    invoke-static {p2}, Lcom/xiaopeng/system/delegate/ISystemDelegateInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;->access$002(Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;)Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;

    .line 29
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 33
    const-string v0, "SystemDelegateBinder"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder$1;->this$0:Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;->access$002(Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;)Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;

    .line 35
    return-void
.end method
