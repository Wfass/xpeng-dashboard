.class public Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode_Processor;
.super Ljava/lang/Object;
.source "UserBookNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 3

    .line 30
    const-string v0, "command://control.manual.search"

    const-string v1, "command://control.open.user.book"

    const-string v2, "command://control.close.user.book"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

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

    const v1, -0x3bae912a

    if-eq v0, v1, :cond_2

    const v1, 0x544dac68

    if-eq v0, v1, :cond_1

    const v1, 0x6d09a4f0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "command://control.manual.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "command://control.open.user.book"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "command://control.close.user.book"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;->onCloseUserBook(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;->onOpenUserBook(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;->onCheckUserBook(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 27
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
