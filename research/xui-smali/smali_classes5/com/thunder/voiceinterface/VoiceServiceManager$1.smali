.class Lcom/thunder/voiceinterface/VoiceServiceManager$1;
.super Ljava/lang/Object;
.source "VoiceServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thunder/voiceinterface/VoiceServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thunder/voiceinterface/VoiceServiceManager;


# direct methods
.method constructor <init>(Lcom/thunder/voiceinterface/VoiceServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thunder/voiceinterface/VoiceServiceManager;

    .line 182
    iput-object p1, p0, Lcom/thunder/voiceinterface/VoiceServiceManager$1;->this$0:Lcom/thunder/voiceinterface/VoiceServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 185
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager$1;->this$0:Lcom/thunder/voiceinterface/VoiceServiceManager;

    invoke-static {p2}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/thunder/voiceinterface/IVoiceInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/thunder/voiceinterface/VoiceServiceManager;->access$002(Lcom/thunder/voiceinterface/VoiceServiceManager;Lcom/thunder/voiceinterface/IVoiceInterface;)Lcom/thunder/voiceinterface/IVoiceInterface;

    .line 186
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager$1;->this$0:Lcom/thunder/voiceinterface/VoiceServiceManager;

    invoke-static {v0}, Lcom/thunder/voiceinterface/VoiceServiceManager;->access$100(Lcom/thunder/voiceinterface/VoiceServiceManager;)Lcom/thunder/voiceinterface/OnVoiceBindListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager$1;->this$0:Lcom/thunder/voiceinterface/VoiceServiceManager;

    invoke-static {v0}, Lcom/thunder/voiceinterface/VoiceServiceManager;->access$100(Lcom/thunder/voiceinterface/VoiceServiceManager;)Lcom/thunder/voiceinterface/OnVoiceBindListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thunder/voiceinterface/OnVoiceBindListener;->onBindCompleted()V

    .line 189
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 193
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager$1;->this$0:Lcom/thunder/voiceinterface/VoiceServiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/thunder/voiceinterface/VoiceServiceManager;->access$002(Lcom/thunder/voiceinterface/VoiceServiceManager;Lcom/thunder/voiceinterface/IVoiceInterface;)Lcom/thunder/voiceinterface/IVoiceInterface;

    .line 194
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager$1;->this$0:Lcom/thunder/voiceinterface/VoiceServiceManager;

    invoke-static {v0, v1}, Lcom/thunder/voiceinterface/VoiceServiceManager;->access$102(Lcom/thunder/voiceinterface/VoiceServiceManager;Lcom/thunder/voiceinterface/OnVoiceBindListener;)Lcom/thunder/voiceinterface/OnVoiceBindListener;

    .line 195
    return-void
.end method
