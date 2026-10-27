.class public Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode_Processor;
.super Ljava/lang/Object;
.source "BugReportNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 6

    .line 39
    const-string v0, "command://bugreport.start.bug"

    const-string v1, "command://bugreport.end.bug"

    const-string v2, "command://bugreport.submit.bug"

    const-string v3, "command://bugreport.cancel.bug"

    const-string v4, "command://bugreport.volume.bug"

    const-string v5, "command://bugreport.end.tts"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "command://bugreport.volume.bug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "command://bugreport.submit.bug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "command://bugreport.start.bug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "command://bugreport.end.tts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "command://bugreport.end.bug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "command://bugreport.cancel.bug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->onBugReportEndtts(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_2

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->onBugReportVolume(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    goto :goto_2

    .line 25
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->onBugReportCancel(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_2

    .line 22
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->onBugReportSubmit(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->onBugReportEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->onBugReportBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 36
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x512d130b -> :sswitch_5
        -0x4bd58cf4 -> :sswitch_4
        -0x4bd54975 -> :sswitch_3
        -0x4b6ccbad -> :sswitch_2
        -0x3d89006d -> :sswitch_1
        -0x1e49aa6b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
