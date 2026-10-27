.class public Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode_Processor;
.super Ljava/lang/Object;
.source "MeditationMusicNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 4

    const-string v0, "meditation.music.control.prev"

    const-string v1, "meditation.music.control.next"

    const-string v2, "meditation.music.control.pause"

    const-string v3, "meditation.music.control.resume"

    .line 33
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "meditation.music.control.prev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "meditation.music.control.next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "meditation.music.control.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "meditation.music.control.pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->onPrev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->onNext(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->onResume(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->onPause(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79106674 -> :sswitch_3
        0x5aa4c757 -> :sswitch_2
        0x6fb44c9d -> :sswitch_1
        0x6fb563dd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
