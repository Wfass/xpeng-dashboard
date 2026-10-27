.class public Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;
.super Ljava/lang/Object;
.source "SceneNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "scene.dm.end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_1
    const-string v0, "scene.rebuild"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

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

    move v0, v5

    goto :goto_1

    :sswitch_4
    const-string v0, "scene.vui.enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_5
    const-string v0, "scene.vui.disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66accfde -> :sswitch_5
        -0x5c3376f7 -> :sswitch_4
        0x2af429df -> :sswitch_3
        0x315df5ec -> :sswitch_2
        0x3e497cb9 -> :sswitch_1
        0x4d902998 -> :sswitch_0
    .end sparse-switch
.end method

.method public a()[Ljava/lang/String;
    .locals 6

    const-string v0, "command://scene.control"

    const-string v1, "scene.dm.start"

    const-string v2, "scene.dm.end"

    const-string v3, "scene.vui.enable"

    const-string v4, "scene.vui.disable"

    const-string v5, "scene.rebuild"

    .line 39
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
