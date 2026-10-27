.class Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$2;
.super Ljava/lang/Object;
.source "XpSpeechTtsService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3
    .param p1, "status"    # I

    .line 113
    const-string v0, "XpSpeechTtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "succeed"

    goto :goto_0

    :cond_0
    const-string v2, "failed"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v1, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$502(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;I)I

    .line 117
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$400()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
