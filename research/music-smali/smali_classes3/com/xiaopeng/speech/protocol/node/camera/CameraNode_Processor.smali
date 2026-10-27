.class public Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;
.super Ljava/lang/Object;
.source "CameraNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "command://camera.top.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "command://camera.right.record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "command://camera.three.d.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "command://camera.front.record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "command://camera.rear.take"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "command://camera.three.d.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "command://camera.top.rotate.right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "command://camera.top.rotate.front"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "command://camera.right.take"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "command://camera.transparent.chassis.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "command://camera.left.record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "command://camera.overall.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "command://camera.top.rotate.rear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "command://camera.top.rotate.left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "command://camera.rear.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "command://camera.left.take"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "command://camera.rear.record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "command://camera.rear.on.new"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "command://camera.rear.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "command://camera.top.take"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_14
    const-string v0, "command://camera.front.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_15
    const-string v0, "command://camera.left.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_16
    const-string v0, "command://camera.right.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_17
    const-string v0, "command://camera.transparent.chassis.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_18
    const-string v0, "command://camera.transparent.chassis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_19
    const-string v0, "command://camera.top.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_1a
    const-string v0, "command://camera.photoalbum.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_1

    :sswitch_1b
    const-string v0, "command://camera.front.take"

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

    goto/16 :goto_2

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->C(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->B(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->A(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 88
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 85
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->y(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 82
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 79
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 76
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 73
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 70
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 67
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 64
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 61
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 55
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 49
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74d448fa -> :sswitch_1b
        -0x6fd8e77f -> :sswitch_1a
        -0x6766500e -> :sswitch_19
        -0x4c09ef10 -> :sswitch_18
        -0x4845508f -> :sswitch_17
        -0x406328b5 -> :sswitch_16
        -0x3e140e74 -> :sswitch_15
        -0x34dddbe2 -> :sswitch_14
        -0x27106226 -> :sswitch_13
        -0x1dcb1d81 -> :sswitch_12
        -0x176575ff -> :sswitch_11
        -0x12ada2bf -> :sswitch_10
        -0x9481f0c -> :sswitch_f
        -0xf60931 -> :sswitch_e
        0xafb2007 -> :sswitch_d
        0xafdd9a4 -> :sswitch_c
        0x1a98d4fa -> :sswitch_b
        0x250eb17e -> :sswitch_a
        0x47fdc39d -> :sswitch_9
        0x4bc652f3 -> :sswitch_8
        0x541a5e29 -> :sswitch_7
        0x54bf421c -> :sswitch_6
        0x5e6e4bd3 -> :sswitch_5
        0x6469a177 -> :sswitch_4
        0x6be54b10 -> :sswitch_3
        0x6f5b2dfb -> :sswitch_2
        0x70489fbd -> :sswitch_1
        0x7a9c4dbc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public a()[Ljava/lang/String;
    .locals 28

    const-string v0, "command://camera.overall.on"

    const-string v1, "command://camera.rear.take"

    const-string v2, "command://camera.rear.record"

    const-string v3, "command://camera.front.take"

    const-string v4, "command://camera.front.record"

    const-string v5, "command://camera.left.take"

    const-string v6, "command://camera.left.record"

    const-string v7, "command://camera.right.take"

    const-string v8, "command://camera.right.record"

    const-string v9, "command://camera.left.on"

    const-string v10, "command://camera.right.on"

    const-string v11, "command://camera.rear.on"

    const-string v12, "command://camera.rear.on.new"

    const-string v13, "command://camera.front.on"

    const-string v14, "command://camera.rear.off"

    const-string v15, "command://camera.top.off"

    const-string v16, "command://camera.top.on"

    const-string v17, "command://camera.top.take"

    const-string v18, "command://camera.top.rotate.left"

    const-string v19, "command://camera.top.rotate.right"

    const-string v20, "command://camera.top.rotate.front"

    const-string v21, "command://camera.top.rotate.rear"

    const-string v22, "command://camera.transparent.chassis"

    const-string v23, "command://camera.three.d.on"

    const-string v24, "command://camera.three.d.off"

    const-string v25, "command://camera.transparent.chassis.on"

    const-string v26, "command://camera.transparent.chassis.off"

    const-string v27, "command://camera.photoalbum.open"

    .line 105
    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
