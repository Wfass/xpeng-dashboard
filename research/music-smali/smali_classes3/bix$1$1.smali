.class Lbix$1$1;
.super Ljava/lang/Object;
.source "MusicReplayDownBase.java"

# interfaces
.implements Lbix$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbix$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/ListSignBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lbix$1;


# direct methods
.method constructor <init>(Lbix$1;Lcom/xiaopeng/musicradio/bean/ListSignBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;Ljava/util/List;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lbix$1$1;->d:Lbix$1;

    iput-object p2, p0, Lbix$1$1;->a:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    iput-object p3, p0, Lbix$1$1;->b:Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;

    iput-object p4, p0, Lbix$1$1;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 115
    iget-object v0, p0, Lbix$1$1;->d:Lbix$1;

    iget-object v0, v0, Lbix$1;->b:Lbix;

    invoke-static {v0}, Lbix;->d(Lbix;)V

    .line 116
    iget-object v0, p0, Lbix$1$1;->d:Lbix$1;

    iget-object v0, v0, Lbix$1;->b:Lbix;

    invoke-static {v0}, Lbix;->c(Lbix;)V

    .line 117
    iget-object v0, p0, Lbix$1$1;->d:Lbix$1;

    iget-object v0, v0, Lbix$1;->b:Lbix;

    iget-object v1, p0, Lbix$1$1;->a:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    iget-object v2, p0, Lbix$1$1;->b:Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getCurrentSong()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbix$1$1;->b:Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;

    .line 118
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v3

    iget-object v4, p0, Lbix$1$1;->c:Ljava/util/List;

    .line 117
    invoke-static {v0, v1, v2, v3, v4}, Lbix;->a(Lbix;Lcom/xiaopeng/musicradio/bean/ListSignBean;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/common/PageBean;Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 124
    iget-object v0, p0, Lbix$1$1;->d:Lbix$1;

    iget-object v0, v0, Lbix$1;->b:Lbix;

    invoke-static {v0}, Lbix;->e(Lbix;)V

    .line 125
    iget-object v0, p0, Lbix$1$1;->d:Lbix$1;

    iget-object v0, v0, Lbix$1;->b:Lbix;

    invoke-static {v0}, Lbix;->f(Lbix;)V

    .line 126
    iget-object v0, p0, Lbix$1$1;->d:Lbix$1;

    iget-object v0, v0, Lbix$1;->b:Lbix;

    invoke-static {v0}, Lbix;->g(Lbix;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 131
    iget-object v0, p0, Lbix$1$1;->d:Lbix$1;

    iget-object v0, v0, Lbix$1;->b:Lbix;

    invoke-static {v0}, Lbix;->f(Lbix;)V

    .line 132
    iget-object v0, p0, Lbix$1$1;->d:Lbix$1;

    iget-object v0, v0, Lbix$1;->b:Lbix;

    invoke-static {v0}, Lbix;->h(Lbix;)V

    return-void
.end method
