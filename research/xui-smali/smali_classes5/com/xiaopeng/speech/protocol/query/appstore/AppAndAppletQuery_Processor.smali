.class public Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;
.super Ljava/lang/Object;
.source "AppAndAppletQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 18

    .line 58
    const-string v0, "gui.appshop.page.open"

    const-string v1, "gui.appshop.page.close"

    const-string v2, "gui.app.page.open"

    const-string v3, "gui.app.page.close"

    const-string v4, "gui.applet.page.open"

    const-string v5, "gui.applet.page.close"

    const-string v6, "gui.third.app.open"

    const-string v7, "gui.third.app.status"

    const-string v8, "gui.third.app.close"

    const-string v9, "gui.applet.open"

    const-string v10, "gui.applet.close"

    const-string v11, "gui.current.close"

    const-string v12, "has.dialog.close.byhand"

    const-string v13, "gui.third.app.download"

    const-string v14, "gui.current.back"

    const-string v15, "gui.screen.full.set"

    const-string v16, "gui.screen.split.set"

    const-string v17, "gui.screen.change.set"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "has.dialog.close.byhand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "gui.current.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "gui.applet.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "gui.third.app.download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "gui.applet.page.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "gui.appshop.page.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "gui.third.app.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "gui.applet.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "gui.screen.split.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_9
    const-string v0, "gui.appshop.page.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_a
    const-string v0, "gui.app.page.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_b
    const-string v0, "gui.screen.change.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_c
    const-string v0, "gui.applet.page.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_d
    const-string v0, "gui.screen.full.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_e
    const-string v0, "gui.third.app.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_f
    const-string v0, "gui.app.page.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_10
    const-string v0, "gui.current.back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_11
    const-string v0, "gui.third.app.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->screenChangeSet(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->screenSplitSet(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 47
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->screenFullSet(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 45
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getCurrentBackStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 43
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getAppDownStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 41
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->hasDialogCloseByHand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 39
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getCurrentCloseStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 37
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getAppletCloseStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getAppletOpenStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 33
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getAppCloseStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getAppStatusV2(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getAppOpenStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->onCloseAppletMainPage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->onOpenAppletMainPage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->onCloseAppStoreMainPage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->onOpenAppStoreMainPage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->onCloseAppshopPage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->onOpenAppshopPage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a18d44f -> :sswitch_11
        -0x58b249f1 -> :sswitch_10
        -0x479afb27 -> :sswitch_f
        -0x302ae867 -> :sswitch_e
        -0x2cc592ee -> :sswitch_d
        -0x26bc6606 -> :sswitch_c
        -0x227d020d -> :sswitch_b
        -0xa8be0b7 -> :sswitch_a
        0x30b5b23 -> :sswitch_9
        0x12c3b0df -> :sswitch_8
        0x16273937 -> :sswitch_7
        0x16538571 -> :sswitch_6
        0x18e4d7bf -> :sswitch_5
        0x1fcde208 -> :sswitch_4
        0x356ec26f -> :sswitch_3
        0x3a8ae72b -> :sswitch_2
        0x427c51d0 -> :sswitch_1
        0x42e0338e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
