.class Lbhr$4;
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

    .line 180
    iput-object p1, p0, Lbhr$4;->c:Lbhr;

    iput p2, p0, Lbhr$4;->a:I

    iput-object p3, p0, Lbhr$4;->b:Lbhx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 183
    iget-object p1, p0, Lbhr$4;->c:Lbhr;

    iget-object p1, p1, Lbhr;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lbhr$4;->c:Lbhr;

    iget-object v0, p1, Lbhr;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    iget-object p1, p0, Lbhr$4;->c:Lbhr;

    invoke-static {p1}, Lbhr;->b(Lbhr;)Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lbhr$4;->a:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lbhr$4;->c:Lbhr;

    invoke-static {p1}, Lbhr;->b(Lbhr;)Ljava/util/List;

    move-result-object p1

    iget v2, p0, Lbhr$4;->a:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lbhr$4;->c:Lbhr;

    invoke-static {p1}, Lbhr;->b(Lbhr;)Ljava/util/List;

    move-result-object p1

    iget v3, p0, Lbhr$4;->a:I

    .line 185
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lbhr$4;->b:Lbhx;

    invoke-virtual {p1}, Lbhx;->i()I

    move-result v4

    iget-object p1, p0, Lbhr$4;->b:Lbhx;

    invoke-virtual {p1}, Lbhx;->h()I

    move-result v5

    .line 184
    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/musicradio/music/kugouzone/view/b;->openMusicAlbumDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
