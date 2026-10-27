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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 15

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

    .line 66
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

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

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "native://app.is.foreground"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "command://app.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "native://app.query"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "native://app.active"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "command://trigger.intent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "command://app.ai.homepage.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "command://system.keyevent.back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "command://appstore.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v0, "command://system.debug.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_9
    const-string v0, "command://app.page.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_a
    const-string v0, "command://app.ai.homepage.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_b
    const-string v0, "command://gui.carspeech.debug.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_c
    const-string v0, "command://youku.search.result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_d
    const-string v0, "command://app.launcher.exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_e
    const-string v0, "command://start.page"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAppForeground(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAppOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAppActive(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onTriggerIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAiHomepageOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onKeyeventBack(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAppStoreOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onDebugOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAppPageOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAiHomepageClose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onGuiSpeechDebugPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onOpenYoukuSearch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onAppLauncherExit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/AppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->onStartPage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

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
