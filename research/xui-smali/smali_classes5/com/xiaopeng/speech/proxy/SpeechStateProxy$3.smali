.class Lcom/xiaopeng/speech/proxy/SpeechStateProxy$3;
.super Ljava/lang/Object;
.source "SpeechStateProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setShowSpeechDialog(Z)V
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

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/SpeechStateProxy;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$3;->this$0:Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    iput-boolean p2, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$3;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/ISpeechState;)Ljava/lang/Object;
    .locals 1
    .param p1, "proxy"    # Lcom/xiaopeng/speech/ISpeechState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-boolean v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$3;->val$isShow:Z

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/ISpeechState;->setShowSpeechDialog(Z)V

    .line 74
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

    .line 69
    check-cast p1, Lcom/xiaopeng/speech/ISpeechState;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$3;->run(Lcom/xiaopeng/speech/ISpeechState;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
