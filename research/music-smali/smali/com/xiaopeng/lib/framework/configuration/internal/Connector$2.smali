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

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$202(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected: service:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Connector"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    move-result-object p2

    invoke-interface {p2}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;->getAppID()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    .line 100
    invoke-static {v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;->getAppVersionCode()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$400(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;

    move-result-object v2

    .line 99
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;->subscribe(Ljava/lang/String;Ljava/lang/String;ILcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;)V

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$500(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 105
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$100(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 106
    new-instance p1, Lcom/xiaopeng/lib/framework/configuration/internal/ConfigServiceConnectEvent;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/xiaopeng/lib/framework/configuration/internal/ConfigServiceConnectEvent;-><init>(Z)V

    .line 107
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceDisconnected: service:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Connector"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 116
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

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$500(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 121
    :goto_0
    new-instance v0, Lcom/xiaopeng/lib/framework/configuration/internal/ConfigServiceConnectEvent;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/configuration/internal/ConfigServiceConnectEvent;-><init>(Z)V

    .line 122
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
