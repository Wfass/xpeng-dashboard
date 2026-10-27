.class public Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;
.super Ljava/lang/Object;
.source "SceneNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 6

    .line 39
    const-string v0, "command://scene.control"

    const-string v1, "scene.dm.start"

    const-string v2, "scene.dm.end"

    const-string v3, "scene.vui.enable"

    const-string v4, "scene.vui.disable"

    const-string v5, "scene.rebuild"

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
    const-string v0, "scene.dm.end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "scene.rebuild"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "command://scene.control"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "scene.dm.start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "scene.vui.enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "scene.vui.disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->onRebuild(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_2

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->onVuiDisable(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    goto :goto_2

    .line 25
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->onVuiEnable(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_2

    .line 22
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->onDMEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->onDMStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->onSceneEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 36
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x66accfde -> :sswitch_5
        -0x5c3376f7 -> :sswitch_4
        0x2af429df -> :sswitch_3
        0x315df5ec -> :sswitch_2
        0x3e497cb9 -> :sswitch_1
        0x4d902998 -> :sswitch_0
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
