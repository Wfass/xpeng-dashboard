.class Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;
.super Ljava/lang/Object;
.source "Connector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/configuration/internal/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$202(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    .line 96
    const-string v0, "Connector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;->getAppID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v3}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;->getAppVersionCode()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v4}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$400(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;->subscribe(Ljava/lang/String;Ljava/lang/String;ILcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$500(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$100(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 106
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 110
    const-string v0, "Connector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;->unsubscribe(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$500(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
