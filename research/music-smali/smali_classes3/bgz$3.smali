.class Lbgz$3;
.super Ljava/lang/Object;
.source "DolbyZoneCollectBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgz;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field final synthetic b:Lbgz;


# direct methods
.method constructor <init>(Lbgz;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lbgz$3;->b:Lbgz;

    iput-object p2, p0, Lbgz$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 175
    iget-object p1, p0, Lbgz$3;->b:Lbgz;

    iget-object p1, p1, Lbgz;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lbgz$3;->b:Lbgz;

    iget-object p1, p1, Lbgz;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    iget-object v0, p0, Lbgz$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbgz$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbgz$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;->playControlMusicCollectListSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
