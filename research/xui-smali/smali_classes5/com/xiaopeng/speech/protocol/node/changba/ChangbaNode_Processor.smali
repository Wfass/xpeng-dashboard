.class public Lcom/xiaopeng/speech/protocol/node/changba/ChangbaNode_Processor;
.super Ljava/lang/Object;
.source "ChangbaNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/changba/ChangbaNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/changba/ChangbaNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/changba/ChangbaNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/changba/ChangbaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/changba/ChangbaNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "command://changba.search.music"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7b804158

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "command://changba.search.music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/changba/ChangbaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/changba/ChangbaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/changba/ChangbaNode;->onMusicChangbaSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 21
    :goto_2
    return-void
.end method
