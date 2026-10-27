.class Lcom/xiaopeng/speech/proxy/WindowEngineProxy$3;
.super Ljava/lang/Object;
.source "WindowEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/WindowEngineProxy;->setAnimState(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/IWindowEngine;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/WindowEngineProxy;

.field final synthetic val$from:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/WindowEngineProxy;II)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy$3;->this$0:Lcom/xiaopeng/speech/proxy/WindowEngineProxy;

    iput p2, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy$3;->val$state:I

    iput p3, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy$3;->val$from:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/IWindowEngine;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    iget v0, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy$3;->val$state:I

    iget v1, p0, Lcom/xiaopeng/speech/proxy/WindowEngineProxy$3;->val$from:I

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/IWindowEngine;->setAnimState(II)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    check-cast p1, Lcom/xiaopeng/speech/IWindowEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/WindowEngineProxy$3;->run(Lcom/xiaopeng/speech/IWindowEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
