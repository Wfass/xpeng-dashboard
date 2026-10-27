.class public Lbbs;
.super Lbbc;
.source "ReplayMusicHandler.java"


# direct methods
.method public constructor <init>(Laxz;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lbbc;-><init>(Laxz;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V
    .locals 17

    move-object/from16 v8, p0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReplayMusicHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Lbbo;

    invoke-direct {v0}, Lbbo;-><init>()V

    iput-object v0, v8, Lbbs;->b:Lbbo;

    .line 34
    iget-object v9, v8, Lbbs;->b:Lbbo;

    new-instance v16, Lbbs$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p5

    move/from16 v5, p3

    move/from16 v6, p2

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lbbs$1;-><init>(Lbbs;ILcom/xiaopeng/musicradio/bean/ListSignBean;IIZI)V

    const/16 v13, 0xa

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v14, p5

    move/from16 v15, p7

    invoke-virtual/range {v9 .. v16}, Lbbo;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;IIIIZLbbo$a;)V

    return-void
.end method
