.class Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$1;
.super Ljava/lang/Object;
.source "VoiceManager.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonResult"    # Ljava/lang/String;

    .line 20
    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsrToTextListener, onResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;)Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;)Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    sget-object v1, Lcom/car/opensdk/voice/VoiceManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "onResult"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method
