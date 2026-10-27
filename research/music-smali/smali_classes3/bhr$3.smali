.class Lbhr$3;
.super Ljava/lang/Object;
.source "KugouZoneAlbumBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhr;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbhx;

.field final synthetic c:Lbhr;


# direct methods
.method constructor <init>(Lbhr;ILbhx;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lbhr$3;->c:Lbhr;

    iput p2, p0, Lbhr$3;->a:I

    iput-object p3, p0, Lbhr$3;->b:Lbhx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 174
    iget-object p1, p0, Lbhr$3;->c:Lbhr;

    iget-object p1, p1, Lbhr;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lbhr$3;->c:Lbhr;

    iget-object p1, p1, Lbhr;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    iget-object v0, p0, Lbhr$3;->c:Lbhr;

    invoke-static {v0}, Lbhr;->b(Lbhr;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lbhr$3;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbhr$3;->c:Lbhr;

    invoke-static {v1}, Lbhr;->b(Lbhr;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lbhr$3;->a:I

    .line 176
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbhr$3;->b:Lbhx;

    invoke-virtual {v2}, Lbhx;->i()I

    move-result v2

    iget-object v3, p0, Lbhr$3;->b:Lbhx;

    invoke-virtual {v3}, Lbhx;->h()I

    move-result v3

    .line 175
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/music/kugouzone/view/b;->playControlMusicAlbumListSign(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
