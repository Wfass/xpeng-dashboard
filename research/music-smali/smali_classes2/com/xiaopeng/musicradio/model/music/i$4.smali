.class Lcom/xiaopeng/musicradio/model/music/i$4;
.super Ljava/lang/Object;
.source "MusicControlModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/music/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/xiaopeng/musicradio/model/music/i;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/i;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZ)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iput p3, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->b:I

    iput-boolean p4, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 1163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicControlModel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error: getListSign = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " listSign = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1168
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1169
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error: playing = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hash = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const p2, 0x4c4b42

    const/4 v1, 0x0

    if-eq p3, p2, :cond_5

    const p2, 0x4c4b49

    if-ne p3, p2, :cond_2

    goto/16 :goto_0

    .line 1196
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/music/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 1198
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {p3, p4}, Lcom/xiaopeng/musicradio/utils/by;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/model/music/i;->b(Ljava/lang/String;)V

    .line 1199
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->pauseByLogic()V

    .line 1200
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {p1, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/model/music/i;Z)V

    .line 1201
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/a;->l()V

    goto/16 :goto_1

    .line 1203
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error: playState = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    iget p3, p3, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    iget p2, p2, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    if-ne p2, v2, :cond_4

    .line 1205
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQualitySize(I)I

    move-result v8

    .line 1206
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 1207
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1206
    invoke-static/range {v3 .. v8}, Lbkx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Landroid/os/Bundle;

    move-result-object p2

    .line 1209
    iget-object p3, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {p3}, Lcom/xiaopeng/musicradio/model/music/i;->b(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setData(Landroid/os/Bundle;)V

    .line 1210
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    iget-boolean p3, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->c:Z

    invoke-static {p2, p1, v1, v2, p3}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/model/music/i;Ljava/lang/String;ZZZ)V

    .line 1211
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    move-result-object p1

    iget p2, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->b:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->seekTo(I)V

    goto/16 :goto_1

    .line 1213
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->pauseByLogic()V

    goto :goto_1

    .line 1175
    :cond_5
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object p2

    if-nez p2, :cond_6

    .line 1176
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {p2, p4}, Lcom/xiaopeng/musicradio/model/music/i;->b(Ljava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 1179
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHasCopyright(Ljava/lang/Boolean;)V

    .line 1181
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/music/i;->g(Lcom/xiaopeng/musicradio/model/music/i;)I

    .line 1182
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x7d0

    invoke-static {p3, p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(II)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1183
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {p1, p4}, Lcom/xiaopeng/musicradio/model/music/i;->b(Ljava/lang/String;)V

    .line 1185
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/music/i;->h(Lcom/xiaopeng/musicradio/model/music/i;)I

    move-result p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_9

    .line 1186
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->pauseByLogic()V

    goto :goto_1

    .line 1188
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/music/i;->i(Lcom/xiaopeng/musicradio/model/music/i;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1189
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->v()V

    goto :goto_1

    .line 1191
    :cond_a
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->u()V

    :goto_1
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZLjava/lang/String;)V
    .locals 8

    .line 1149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQualitySize(I)I

    move-result v7

    .line 1150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 1151
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1150
    invoke-static/range {v2 .. v7}, Lbkx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Landroid/os/Bundle;

    move-result-object v0

    .line 1153
    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTempNetUrl(Ljava/lang/String;)V

    .line 1154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setData(Landroid/os/Bundle;)V

    .line 1155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playNet cache: igon = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicControlModel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p3, v0, v1, p2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/model/music/i;Ljava/lang/String;ZZZ)V

    .line 1158
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->d:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    move-result-object p1

    iget p2, p0, Lcom/xiaopeng/musicradio/model/music/i$4;->b:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->seekTo(I)V

    return-void
.end method
