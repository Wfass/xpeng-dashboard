.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionTTS.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;


# instance fields
.field private final repeater:Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;

.field private speakingTtsID:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->text:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;

    invoke-direct {v0, p2, p0}, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;-><init>(ILcom/xiaopeng/xuiservice/smart/action/Action;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->repeater:Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;

    .line 19
    return-void
.end method

.method public static synthetic lambda$fJ4mD1BzlWBjewUU5t78R26zttc(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->startTTS()V

    return-void
.end method

.method private startTTS()V
    .locals 3

    .line 34
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speakByNormal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->speakingTtsID:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speakByNormal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ttsId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->speakingTtsID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repeater = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->repeater:Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->speakingTtsID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "tts failed, stop action immediately"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->stop()V

    .line 40
    :cond_0
    return-void
.end method

.method private stopTTS()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->speakingTtsID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->speakingTtsID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->stopSpeech(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public onSpeechTtsEventCallBack(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "ttsId"    # Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpeechTtsEventCallBack: event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ttsId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 52
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->speakingTtsID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->speakingTtsID:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->repeater:Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionTTS$fJ4mD1BzlWBjewUU5t78R26zttc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionTTS$fJ4mD1BzlWBjewUU5t78R26zttc;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->repeat(Ljava/lang/Runnable;)V

    .line 57
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->addSpeechTtsEventListener(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;)V

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->startTTS()V

    .line 25
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->stopTTS()V

    .line 30
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->removeSpeechTtsEventListener(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;)V

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", repeater="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;->repeater:Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
