.class Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode$1;
.super Ljava/lang/Object;
.source "IdiomNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->disableWakeup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->access$000(Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disable wake up."

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 103
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;

    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->access$100(Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;)Landroid/os/Binder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupEnhance(Landroid/os/IBinder;)V

    .line 104
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;

    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->access$100(Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;)Landroid/os/Binder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->setWheelWakeupEnabled(Landroid/os/IBinder;Z)V

    .line 105
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSoundLockState()Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->access$202(Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;Z)Z

    .line 107
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSoundLockState()Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->setMode(I)V

    .line 108
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSoundLockState()Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->setDriveSoundLocation(I)V

    .line 110
    :cond_0
    return-void
.end method
