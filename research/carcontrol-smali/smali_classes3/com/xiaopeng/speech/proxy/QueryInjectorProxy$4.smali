.class Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$4;
.super Ljava/lang/Object;
.source "QueryInjectorProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;->isQueryInject(Ljava/lang/String;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$4;->this$0:Lcom/xiaopeng/speech/proxy/QueryInjectorProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$4;->val$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/IQueryInjector;)Ljava/lang/Boolean;
    .locals 1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$4;->val$event:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/IQueryInjector;->isQueryInject(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    .line 94
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    check-cast p1, Lcom/xiaopeng/speech/IQueryInjector;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/QueryInjectorProxy$4;->run(Lcom/xiaopeng/speech/IQueryInjector;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
