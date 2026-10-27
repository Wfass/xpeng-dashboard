.class Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$17;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->addShortcutWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/coreapi/IWakeupEngine;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

.field final synthetic val$pinyin:[Ljava/lang/String;

.field final synthetic val$threshold:[Ljava/lang/String;

.field final synthetic val$words:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    .line 243
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$17;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$17;->val$words:[Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$17;->val$pinyin:[Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$17;->val$threshold:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IWakeupEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$17;->val$words:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$17;->val$pinyin:[Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$17;->val$threshold:[Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->addShortcutWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 247
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

    .line 243
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$17;->run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
