.class Lcom/xiaopeng/speech/proxy/SpeechStateProxy$7;
.super Ljava/lang/Object;
.source "SpeechStateProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setFuncState(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/ISpeechState;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

.field final synthetic val$flag:Z

.field final synthetic val$func:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/SpeechStateProxy;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    .line 204
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$7;->this$0:Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    iput p2, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$7;->val$func:I

    iput-boolean p3, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$7;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/ISpeechState;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Lcom/xiaopeng/speech/ISpeechState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    iget v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$7;->val$func:I

    iget-boolean v1, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$7;->val$flag:Z

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/ISpeechState;->setFuncState(IZ)V

    .line 209
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

    .line 204
    check-cast p1, Lcom/xiaopeng/speech/ISpeechState;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$7;->run(Lcom/xiaopeng/speech/ISpeechState;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
