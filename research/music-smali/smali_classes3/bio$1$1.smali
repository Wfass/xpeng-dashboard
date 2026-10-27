.class Lbio$1$1;
.super Ljava/lang/Object;
.source "QqMusicPlayHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbio$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;

.field final synthetic b:Lbio$1;


# direct methods
.method constructor <init>(Lbio$1;Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lbio$1$1;->b:Lbio$1;

    iput-object p2, p0, Lbio$1$1;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lbio$1$1;->b:Lbio$1;

    iget-object v0, v0, Lbio$1;->e:Lbio;

    invoke-virtual {v0}, Lbio;->h()Lbae;

    move-result-object v0

    iget-object v1, p0, Lbio$1$1;->b:Lbio$1;

    iget-object v1, v1, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbae;->c(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 157
    new-instance v1, Lbio$1$1$1;

    invoke-direct {v1, p0, v0}, Lbio$1$1$1;-><init>(Lbio$1$1;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
