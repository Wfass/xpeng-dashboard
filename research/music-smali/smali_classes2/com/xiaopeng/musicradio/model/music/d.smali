.class public Lcom/xiaopeng/musicradio/model/music/d;
.super Ljava/lang/Object;
.source "DefaultMusicPlayAction.java"

# interfaces
.implements Laqq$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 16
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbxn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/model/music/d$1;

    const/16 v3, 0x32

    invoke-direct {v2, p0, v0, v3}, Lcom/xiaopeng/musicradio/model/music/d$1;-><init>(Lcom/xiaopeng/musicradio/model/music/d;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;)V

    return-void
.end method
