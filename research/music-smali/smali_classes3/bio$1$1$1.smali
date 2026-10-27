.class Lbio$1$1$1;
.super Ljava/lang/Object;
.source "QqMusicPlayHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbio$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:Lbio$1$1;


# direct methods
.method constructor <init>(Lbio$1$1;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lbio$1$1$1;->b:Lbio$1$1;

    iput-object p2, p0, Lbio$1$1$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 160
    iget-object v0, p0, Lbio$1$1$1;->b:Lbio$1$1;

    iget-object v0, v0, Lbio$1$1;->b:Lbio$1;

    iget-object v0, v0, Lbio$1;->e:Lbio;

    iget-object v1, p0, Lbio$1$1$1;->b:Lbio$1$1;

    iget-object v1, v1, Lbio$1$1;->b:Lbio$1;

    iget-object v1, v1, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object v2, p0, Lbio$1$1$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object v3, p0, Lbio$1$1$1;->b:Lbio$1$1;

    iget-object v3, v3, Lbio$1$1;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;

    invoke-virtual {v0, v1, v2, v3}, Lbio;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V

    return-void
.end method
