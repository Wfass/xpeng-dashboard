.class Lcom/xiaopeng/speech/proxy/SpeechStateProxy$6;
.super Ljava/lang/Object;
.source "SpeechStateProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->changeCurrentTTS(Ljava/lang/String;)V
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

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/SpeechStateProxy;Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$6;->this$0:Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$6;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/ISpeechState;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$6;->val$name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/ISpeechState;->changeCurrentTTS(Ljava/lang/String;)V

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

    .line 174
    check-cast p1, Lcom/xiaopeng/speech/ISpeechState;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$6;->run(Lcom/xiaopeng/speech/ISpeechState;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
