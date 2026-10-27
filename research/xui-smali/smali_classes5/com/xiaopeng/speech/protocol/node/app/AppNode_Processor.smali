.class public Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;
.super Ljava/lang/Object;
.source "AppNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/app/AppNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 15

    .line 66
    const-string v0, "native://app.query"

    const-string v1, "command://app.open"

    const-string v2, "command://app.page.open"

    const-string v3, "command://system.keyevent.back"

    const-string v4, "command://appstore.open"

    const-string v5, "command://trigger.intent"

    const-string v6, "command://system.debug.open"

    const-string v7, "native://app.active"

    const-string v8, "command://app.ai.homepage.open"

    const-string v9, "command://app.ai.homepage.close"

    const-string v10, "command://app.launcher.exit"

    const-string v11, "command://start.page"

    const-string v12, "command://gui.carspeech.debug.open"

    const-string v13, "command://youku.search.result"

    const-string v14, "native://app.is.foreground"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

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

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "native://app.is.foreground"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "command://app.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "native://app.query"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "native://app.active"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "command://trigger.intent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "command://app.ai.homepage.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_6
    const-string v0, "command://system.keyevent.back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "command://appstore.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v0, "command://system.debug.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_9
    const-string v0, "command://app.page.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_a
    const-string v0, "command://app.ai.homepage.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_b
    const-string v0, "command://gui.carspeech.debug.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_c
    const-string v0, "command://youku.search.result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_d
    const-string v0, "command://app.launcher.exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_e
    const-string v0, "command://start.page"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAppForeground(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    goto :goto_2

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onOpenYoukuSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    goto :goto_2

    .line 52
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onGuiSpeechDebugPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    goto :goto_2

    .line 49
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onStartPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto :goto_2

    .line 46
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAppLauncherExit(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    goto :goto_2

    .line 43
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAiHomepageClose(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_2

    .line 40
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAiHomepageOpen(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 37
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAppActive(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    goto :goto_2

    .line 34
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onDebugOpen(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto :goto_2

    .line 31
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onTriggerIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_2

    .line 28
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAppStoreOpen(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    goto :goto_2

    .line 25
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onKeyeventBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_2

    .line 22
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAppPageOpen(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAppOpen(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 63
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d1881b6 -> :sswitch_e
        -0x67bc1ef0 -> :sswitch_d
        -0x4c8aad11 -> :sswitch_c
        -0x4b813981 -> :sswitch_b
        -0xc90f11e -> :sswitch_a
        -0xc8eb553 -> :sswitch_9
        -0x81b1e6b -> :sswitch_8
        0x10838409 -> :sswitch_7
        0x25f6a8ca -> :sswitch_6
        0x396c3020 -> :sswitch_5
        0x4498f1c1 -> :sswitch_4
        0x4a0ca7d6 -> :sswitch_3
        0x55e195f8 -> :sswitch_2
        0x6f17eb66 -> :sswitch_1
        0x7465c9b7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
