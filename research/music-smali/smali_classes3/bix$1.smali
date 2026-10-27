.class Lbix$1;
.super Lbkv;
.source "MusicReplayDownBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbix;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbix;


# direct methods
.method constructor <init>(Lbix;Z)V
    .locals 0

    .line 69
    iput-object p1, p0, Lbix$1;->b:Lbix;

    iput-boolean p2, p0, Lbix$1;->a:Z

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 159
    invoke-direct {p0}, Lbix$1;->c()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lbix$1;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "SP_TIP_COUNT"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 163
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbub$a;->replay_tip:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;I)V

    .line 164
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object v0

    invoke-virtual {v0}, Lbus;->d()Lbxc;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v2, Lbub$a;->replay_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbxc;->c(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private c()I
    .locals 2

    const-string v0, "SP_TIP_COUNT"

    const/4 v1, 0x0

    .line 168
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lbix$1;->b:Lbix;

    invoke-virtual {v0}, Lbix;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " s = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p1, p0, Lbix$1;->b:Lbix;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lbix;->a(Lbix;Lcom/lzy/okgo/adapter/Call;)Lcom/lzy/okgo/adapter/Call;

    .line 175
    iget-object p1, p0, Lbix$1;->b:Lbix;

    invoke-static {p1}, Lbix;->a(Lbix;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;)V
    .locals 8

    .line 72
    iget-object v0, p0, Lbix$1;->b:Lbix;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbix;->a(Lbix;Lcom/lzy/okgo/adapter/Call;)Lcom/lzy/okgo/adapter/Call;

    .line 73
    iget-object v0, p0, Lbix$1;->b:Lbix;

    invoke-virtual {v0}, Lbix;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    .line 75
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 76
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 77
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getCurrentSong()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 78
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 79
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getCurrentSong()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lbix$1;->b:Lbix;

    invoke-virtual {v2}, Lbix;->l()Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lbix$1;->b:Lbix;

    invoke-virtual {v3}, Lbix;->m()Ljava/lang/String;

    move-result-object v3

    .line 83
    iget-object v4, p0, Lbix$1;->b:Lbix;

    invoke-virtual {v4}, Lbix;->n()Ljava/lang/String;

    move-result-object v4

    .line 85
    iget-object v5, p0, Lbix$1;->b:Lbix;

    invoke-virtual {v5}, Lbix;->k()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response:sessionId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " localSessionId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " upSessionId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " playingId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " localPlayingId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbix$1;->b:Lbix;

    invoke-virtual {v2, v1, v4}, Lbix;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    :cond_1
    iget-object p1, p0, Lbix$1;->b:Lbix;

    invoke-static {p1}, Lbix;->a(Lbix;)V

    goto/16 :goto_0

    .line 92
    :cond_2
    iget-object v1, p0, Lbix$1;->b:Lbix;

    invoke-virtual {v1, v0}, Lbix;->a(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lbix$1;->b:Lbix;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getCurrentSong()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbix;->b(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    .line 96
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getCollectId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->collectId:Ljava/lang/String;

    const-string v1, "listsign_net_replay"

    .line 97
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 102
    iget-boolean v2, p0, Lbix$1;->a:Z

    if-eqz v2, :cond_4

    .line 104
    iget-object v2, p0, Lbix$1;->b:Lbix;

    invoke-static {v2}, Lbix;->b(Lbix;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    iget-object v2, p0, Lbix$1;->b:Lbix;

    invoke-static {v2}, Lbix;->c(Lbix;)V

    .line 107
    iget-object v2, p0, Lbix$1;->b:Lbix;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getCurrentSong()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    .line 107
    invoke-static {v2, v0, v3, p1, v1}, Lbix;->a(Lbix;Lcom/xiaopeng/musicradio/bean/ListSignBean;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/common/PageBean;Ljava/util/List;)V

    goto :goto_0

    .line 112
    :cond_3
    iget-object v2, p0, Lbix$1;->b:Lbix;

    new-instance v3, Lbix$1$1;

    invoke-direct {v3, p0, v0, p1, v1}, Lbix$1$1;-><init>(Lbix$1;Lcom/xiaopeng/musicradio/bean/ListSignBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;Ljava/util/List;)V

    invoke-static {v2, v3}, Lbix;->a(Lbix;Lbix$a;)V

    goto :goto_0

    .line 138
    :cond_4
    invoke-direct {p0}, Lbix$1;->b()V

    .line 139
    iget-object v2, p0, Lbix$1;->b:Lbix;

    invoke-static {v2}, Lbix;->i(Lbix;)V

    .line 142
    iget-object v2, p0, Lbix$1;->b:Lbix;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getCurrentSong()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    .line 142
    invoke-static {v2, v0, v3, p1, v1}, Lbix;->a(Lbix;Lcom/xiaopeng/musicradio/bean/ListSignBean;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/common/PageBean;Ljava/util/List;)V

    goto :goto_0

    .line 148
    :cond_5
    iget-object p1, p0, Lbix$1;->b:Lbix;

    invoke-static {p1}, Lbix;->j(Lbix;)V

    goto :goto_0

    .line 152
    :cond_6
    iget-object p1, p0, Lbix$1;->b:Lbix;

    invoke-virtual {p1}, Lbix;->k()Ljava/lang/String;

    move-result-object p1

    const-string v0, "response: continuePlayBean is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p1, p0, Lbix$1;->b:Lbix;

    invoke-static {p1}, Lbix;->a(Lbix;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 69
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;

    invoke-virtual {p0, p1}, Lbix$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;)V

    return-void
.end method
