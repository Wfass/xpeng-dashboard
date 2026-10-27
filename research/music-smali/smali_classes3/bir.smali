.class public Lbir;
.super Ljava/lang/Object;
.source "MusicMediaCon.java"

# interfaces
.implements Lazo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 15
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicMediaCon"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Layr;->a()Layr;

    move-result-object v1

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v2

    invoke-virtual {v2}, Lbid;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Layr;->a(I)Layq;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {v1, v0}, Layq;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1, v0}, Layq;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
