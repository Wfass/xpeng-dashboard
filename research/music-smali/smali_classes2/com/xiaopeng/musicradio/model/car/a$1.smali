.class Lcom/xiaopeng/musicradio/model/car/a$1;
.super Ljava/lang/Object;
.source "IGManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/car/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/car/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/car/a;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/car/a$1;->a:Lcom/xiaopeng/musicradio/model/car/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "IGManager"

    const-string v1, "run: ====== "

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/car/a$1;->a:Lcom/xiaopeng/musicradio/model/car/a;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/car/a;->g()V

    .line 153
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->d()Laqt;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Laqt;->getPlayState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " getPlayWhenReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Laqt;->getPlayWhenReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v3

    invoke-virtual {v3}, Laqr;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-interface {v1}, Laqt;->getPlayState()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    invoke-interface {v1}, Laqt;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-interface {v1}, Laqt;->getPlayState()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/car/a$1;->a:Lcom/xiaopeng/musicradio/model/car/a;

    invoke-virtual {v2, v4}, Lcom/xiaopeng/musicradio/model/car/a;->c(Z)V

    .line 158
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    const-string v5, "pause player"

    if-nez v2, :cond_4

    .line 160
    invoke-interface {v1}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v2, :cond_2

    .line 161
    invoke-interface {v1}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 162
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v2

    const/16 v6, 0x3d

    if-ne v2, v6, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    if-eqz v4, :cond_3

    const-string v2, "stop player"

    .line 167
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-interface {v1}, Laqt;->stop()V

    goto :goto_1

    .line 170
    :cond_3
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-interface {v1}, Laqt;->pause()V

    :goto_1
    const-string v2, "run: state playing"

    .line 173
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 175
    :cond_4
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-interface {v1}, Laqt;->pause()V

    goto :goto_2

    .line 179
    :cond_5
    invoke-interface {v1}, Laqt;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/car/a$1;->a:Lcom/xiaopeng/musicradio/model/car/a;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/model/car/a;->c(Z)V

    .line 185
    :cond_6
    :goto_2
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-nez v0, :cond_8

    .line 186
    invoke-interface {v1}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 188
    invoke-interface {v1, v3}, Laqt;->seekTo(I)V

    goto :goto_3

    :cond_7
    const-string v1, "run: model is null"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void
.end method
