.class Lcom/xiaopeng/musicradio/model/music/i$6;
.super Ljava/lang/Object;
.source "MusicControlModel.java"

# interfaces
.implements Lbry$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/i;->pauseByLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/music/i;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/i;)V
    .locals 0

    .line 1794
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$6;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1797
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$6;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1800
    :cond_0
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i$6;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lbcj;->a(I)Lbci;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i$6;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v0

    return v0
.end method
