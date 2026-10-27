.class Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand$1;
.super Ljava/lang/Object;
.source "QQRankListCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand$1;->b:Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand$1;->a:Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand$1;->b:Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;->getCommand()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "data is error===="

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "doCommand: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string v1, "listsign_rank_music"

    .line 34
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankType()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v2

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand$1;->b:Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;->getAccountType()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    .line 44
    iget-object v1, p0, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand$1;->b:Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;->b()Lbaj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method
