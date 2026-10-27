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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 18

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

    .line 58
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "has.dialog.close.byhand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "gui.current.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "gui.applet.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "gui.third.app.download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "gui.applet.page.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "gui.appshop.page.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "gui.third.app.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "gui.applet.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "gui.screen.split.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "gui.appshop.page.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "gui.app.page.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_b
    const-string v0, "gui.screen.change.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_c
    const-string v0, "gui.applet.page.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_d
    const-string v0, "gui.screen.full.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_e
    const-string v0, "gui.third.app.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_f
    const-string v0, "gui.app.page.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_10
    const-string v0, "gui.current.back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_11
    const-string v0, "gui.third.app.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->hasDialogCloseByHand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getCurrentCloseStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getAppletOpenStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getAppDownStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->onOpenAppletMainPage(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->onOpenAppshopPage(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getAppCloseStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getAppletCloseStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->screenSplitSet(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->onCloseAppshopPage(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->onOpenAppStoreMainPage(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->screenChangeSet(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->onCloseAppletMainPage(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->screenFullSet(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getAppStatusV2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->onCloseAppStoreMainPage(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getCurrentBackStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->getAppOpenStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

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
