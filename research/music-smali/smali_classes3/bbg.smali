.class public Lbbg;
.super Lbbc;
.source "CollectMusicHandler.java"


# direct methods
.method public constructor <init>(Laxz;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lbbc;-><init>(Laxz;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V
    .locals 16

    move-object/from16 v7, p0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollectMusicHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lbbo;

    invoke-direct {v0}, Lbbo;-><init>()V

    iput-object v0, v7, Lbbg;->b:Lbbo;

    .line 36
    iget-object v8, v7, Lbbg;->b:Lbbo;

    new-instance v15, Lbbg$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v3, p5

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lbbg$1;-><init>(Lbbg;IIIZI)V

    const/16 v12, 0x46

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v13, p5

    move/from16 v14, p7

    invoke-virtual/range {v8 .. v15}, Lbbo;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;IIIIZLbbo$a;)V

    return-void
.end method
