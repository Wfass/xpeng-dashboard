.class public Lbbq;
.super Lbbc;
.source "RecommendHandler.java"


# instance fields
.field private c:Lbbc;


# direct methods
.method public constructor <init>(Laxz;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lbbc;-><init>(Laxz;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 38
    invoke-super {p0}, Lbbc;->a()V

    .line 39
    iget-object v0, p0, Lbbq;->c:Lbbc;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lbbc;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V
    .locals 11

    move-object v0, p0

    .line 19
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getCollectId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1000"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "AbsFindHandler"

    const-string v2, "playDailyMusic"

    .line 21
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    move/from16 v10, p8

    invoke-virtual {v1, v10}, Lbdm;->a(I)Lbeg;

    move-result-object v1

    invoke-interface {v1}, Lbeg;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    iget-object v1, v0, Lbbq;->a:Laxz;

    const/4 v2, 0x0

    const-string v3, ""

    move v4, p2

    invoke-virtual {v1, p2, v2, v3}, Laxz;->a(ZILjava/lang/String;)V

    return-void

    :cond_0
    move v4, p2

    .line 26
    new-instance v2, Lbbh;

    iget-object v1, v0, Lbbq;->a:Laxz;

    invoke-direct {v2, v1}, Lbbh;-><init>(Laxz;)V

    move-object v3, p1

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lbbh;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    goto :goto_0

    :cond_1
    move v4, p2

    move/from16 v10, p8

    const-string v2, "-1003"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    new-instance v2, Lbbm;

    iget-object v1, v0, Lbbq;->a:Laxz;

    invoke-direct {v2, v1}, Lbbm;-><init>(Laxz;)V

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lbbm;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    goto :goto_0

    .line 30
    :cond_2
    new-instance v1, Lbbf;

    iget-object v2, v0, Lbbq;->a:Laxz;

    invoke-direct {v1, v2}, Lbbf;-><init>(Laxz;)V

    iput-object v1, v0, Lbbq;->c:Lbbc;

    .line 32
    iget-object v2, v0, Lbbq;->c:Lbbc;

    invoke-static/range {p8 .. p8}, Lcom/xiaopeng/musicradio/utils/ay;->a(I)I

    move-result v6

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lbbc;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    :goto_0
    return-void
.end method
