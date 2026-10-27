.class Lboc$1;
.super Ljava/lang/Object;
.source "AlbumSearchBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lboc;->a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lboh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lboc;


# direct methods
.method constructor <init>(Lboc;Ljava/util/List;I)V
    .locals 0

    .line 142
    iput-object p1, p0, Lboc$1;->c:Lboc;

    iput-object p2, p0, Lboc$1;->a:Ljava/util/List;

    iput p3, p0, Lboc$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 145
    iget-object p1, p0, Lboc$1;->c:Lboc;

    iget-object p1, p1, Lboc;->a:Lbnn;

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lboc$1;->c:Lboc;

    iget-object p1, p1, Lboc;->a:Lbnn;

    iget-object v0, p0, Lboc$1;->a:Ljava/util/List;

    iget v1, p0, Lboc$1;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lboc$1;->a:Ljava/util/List;

    iget v2, p0, Lboc$1;->b:I

    .line 147
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-interface {p1, v0, v1}, Lbnn;->playControlMusicAlbumListSign(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
