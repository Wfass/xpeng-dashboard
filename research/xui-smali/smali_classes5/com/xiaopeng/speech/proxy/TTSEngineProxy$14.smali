.class Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speakEnhanceByVoicePosition(Ljava/lang/String;ILjava/lang/String;IIIJI)Z
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

.field final synthetic val$position:I

.field final synthetic val$priority:I

.field final synthetic val$streamType:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$timeout:J

.field final synthetic val$ttsId:Ljava/lang/String;

.field final synthetic val$ttsMode:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Ljava/lang/String;ILjava/lang/String;IIIJI)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    .line 316
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$priority:I

    iput-object p4, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$ttsId:Ljava/lang/String;

    iput p5, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$audioFocus:I

    iput p6, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$streamType:I

    iput p7, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$ttsMode:I

    iput-wide p8, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$timeout:J

    iput p10, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/ITTSEngine;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/ITTSEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$text:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$priority:I

    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$ttsId:Ljava/lang/String;

    iget v4, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$audioFocus:I

    iget v5, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$streamType:I

    iget v6, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$ttsMode:I

    iget-wide v7, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$timeout:J

    iget v9, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->val$position:I

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Lcom/xiaopeng/speech/coreapi/ITTSEngine;->speakEnhanceByVoicePosition(Ljava/lang/String;ILjava/lang/String;IIIJI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPC Excption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 325
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    check-cast p1, Lcom/xiaopeng/speech/coreapi/ITTSEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$14;->run(Lcom/xiaopeng/speech/coreapi/ITTSEngine;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
