.class public Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode_Processor;
.super Ljava/lang/Object;
.source "MeditationMusicNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "meditation.music.control.prev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "meditation.music.control.next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "meditation.music.control.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "meditation.music.control.pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79106674 -> :sswitch_3
        0x5aa4c757 -> :sswitch_2
        0x6fb44c9d -> :sswitch_1
        0x6fb563dd -> :sswitch_0
    .end sparse-switch
.end method

.method public a()[Ljava/lang/String;
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
