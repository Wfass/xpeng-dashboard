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

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder$1;->this$0:Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SystemDelegateBinder"

    const-string v0, "onServiceConnected"

    .line 27
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder$1;->this$0:Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;

    invoke-static {p2}, Lcom/xiaopeng/system/delegate/ISystemDelegateInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;->access$002(Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;)Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SystemDelegateBinder"

    const-string v0, "onServiceDisconnected"

    .line 33
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder$1;->this$0:Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;->access$002(Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;)Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;

    return-void
.end method
