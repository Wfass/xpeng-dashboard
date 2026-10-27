.class Lcom/xiaopeng/speech/proxy/TTSEngineProxy$4;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;ILjava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/coreapi/ITTSEngine;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

.field final synthetic val$audioFocus:I

.field final synthetic val$priority:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$ttsId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$4;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$4;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$4;->val$priority:I

    iput-object p4, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$4;->val$ttsId:Ljava/lang/String;

    iput p5, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$4;->val$audioFocus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/ITTSEngine;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$4;->val$text:Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$4;->val$priority:I

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$4;->val$ttsId:Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$4;->val$audioFocus:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/xiaopeng/speech/coreapi/ITTSEngine;->speak(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPC Excption:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 174
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

    .line 166
    check-cast p1, Lcom/xiaopeng/speech/coreapi/ITTSEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$4;->run(Lcom/xiaopeng/speech/coreapi/ITTSEngine;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
