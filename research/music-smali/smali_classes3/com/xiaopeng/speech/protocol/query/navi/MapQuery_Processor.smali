.class public Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;
.super Ljava/lang/Object;
.source "MapQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "navi.open.controls.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "navi.is.zoomin.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "context.info.navi.list.bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "navi.speech.cruise.opened"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "navi.is.searching"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "navi.is.explore.path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "navi.is.calculate.path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "navi.side.road.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "navi.common.addr.get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "navi.query.list.info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "navi.is.sr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "navi.route.change"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "navi.is.zoomout.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "is.GaodeAccount.Login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "navi.main.road.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_f
    const-string v0, "navi.is.navigation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_10
    const-string v0, "context.info.navi.list.onepage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_11
    const-string v0, "navi.can.multi.poi.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_12
    const-string v0, "navi.get.navigation.info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_13
    const-string v0, "navi.favorite.open.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_14
    const-string v0, "context.info.navi.list.top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_15
    const-string v0, "navi.scale.current.level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_16
    const-string v0, "navi.is.cruise"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_17
    const-string v0, "navi.poi.details.favorite.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->x(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->w(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->v(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->u(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->t(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->s(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->p(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->o(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->n(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->m(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->l(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->k(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72c7f514 -> :sswitch_17
        -0x6527ae2f -> :sswitch_16
        -0x5db18d1d -> :sswitch_15
        -0x48f15554 -> :sswitch_14
        -0x473cfbf4 -> :sswitch_13
        -0x32bf8c98 -> :sswitch_12
        -0x2a516eb9 -> :sswitch_11
        -0x25792c34 -> :sswitch_10
        -0x163586f0 -> :sswitch_f
        -0x5e0f4ed -> :sswitch_e
        0xd33536 -> :sswitch_d
        0x11ed103 -> :sswitch_c
        0x8cce03d -> :sswitch_b
        0xe31395b -> :sswitch_a
        0x12db0010 -> :sswitch_9
        0x13f1c234 -> :sswitch_8
        0x467565b1 -> :sswitch_7
        0x56b45aa9 -> :sswitch_6
        0x64ede69c -> :sswitch_5
        0x65b132be -> :sswitch_4
        0x6be4d4de -> :sswitch_3
        0x75139d74 -> :sswitch_2
        0x796ba9aa -> :sswitch_1
        0x79b50bce -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 24

    const-string v0, "navi.is.cruise"

    const-string v1, "navi.is.explore.path"

    const-string v2, "navi.is.navigation"

    const-string v3, "navi.common.addr.get"

    const-string v4, "navi.route.change"

    const-string v5, "navi.get.navigation.info"

    const-string v6, "navi.is.zoomin.max"

    const-string v7, "navi.is.zoomout.min"

    const-string v8, "navi.is.calculate.path"

    const-string v9, "navi.favorite.open.status"

    const-string v10, "navi.open.controls.status"

    const-string v11, "navi.main.road.status"

    const-string v12, "navi.side.road.status"

    const-string v13, "navi.scale.current.level"

    const-string v14, "navi.poi.details.favorite.status"

    const-string v15, "navi.is.sr"

    const-string v16, "context.info.navi.list.top"

    const-string v17, "context.info.navi.list.bottom"

    const-string v18, "context.info.navi.list.onepage"

    const-string v19, "is.GaodeAccount.Login"

    const-string v20, "navi.is.searching"

    const-string v21, "navi.speech.cruise.opened"

    const-string v22, "navi.can.multi.poi.search"

    const-string v23, "navi.query.list.info"

    .line 70
    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
