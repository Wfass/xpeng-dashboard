.class Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$1;
.super Ljava/lang/Object;
.source "QueryInjectorProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->registerDataSensor([Ljava/lang/String;Lcom/xiaopeng/speech/IRemoteDataSensor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/IQueryInjector;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

.field final synthetic val$command:[Ljava/lang/String;

.field final synthetic val$query:Lcom/xiaopeng/speech/IRemoteDataSensor;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;[Ljava/lang/String;Lcom/xiaopeng/speech/IRemoteDataSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$1;->val$command:[Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$1;->val$query:Lcom/xiaopeng/speech/IRemoteDataSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/IQueryInjector;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Lcom/xiaopeng/speech/IQueryInjector;

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$1;->val$command:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$1;->val$query:Lcom/xiaopeng/speech/IRemoteDataSensor;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/IQueryInjector;->registerDataSensor([Ljava/lang/String;Lcom/xiaopeng/speech/IRemoteDataSensor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 46
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    check-cast p1, Lcom/xiaopeng/speech/IQueryInjector;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$1;->run(Lcom/xiaopeng/speech/IQueryInjector;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
