.class Lbgx$3;
.super Ljava/lang/Object;
.source "DolbyZoneAlbumBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgx;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbgx;


# direct methods
.method constructor <init>(Lbgx;I)V
    .locals 0

    .line 167
    iput-object p1, p0, Lbgx$3;->b:Lbgx;

    iput p2, p0, Lbgx$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 170
    iget-object p1, p0, Lbgx$3;->b:Lbgx;

    iget-object p1, p1, Lbgx;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lbgx$3;->b:Lbgx;

    iget-object p1, p1, Lbgx;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    iget-object v0, p0, Lbgx$3;->b:Lbgx;

    invoke-static {v0}, Lbgx;->b(Lbgx;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lbgx$3;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbgx$3;->b:Lbgx;

    invoke-static {v1}, Lbgx;->b(Lbgx;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lbgx$3;->a:I

    .line 172
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;->playControlMusicAlbumListSign(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
