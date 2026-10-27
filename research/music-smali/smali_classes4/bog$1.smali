.class Lbog$1;
.super Ljava/lang/Object;
.source "SongSearchBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbog;->a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lbol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbol;

.field final synthetic b:Lbog;


# direct methods
.method constructor <init>(Lbog;Lbol;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lbog$1;->b:Lbog;

    iput-object p2, p0, Lbog$1;->a:Lbol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 97
    iget-object p1, p0, Lbog$1;->b:Lbog;

    iget-object p1, p1, Lbog;->a:Lbnn;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbog$1;->a:Lbol;

    invoke-virtual {p1}, Lbol;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 98
    iget-object p1, p0, Lbog$1;->b:Lbog;

    iget-object p1, p1, Lbog;->a:Lbnn;

    iget-object v0, p0, Lbog$1;->a:Lbol;

    invoke-virtual {v0}, Lbol;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    iget-object v2, p0, Lbog$1;->a:Lbol;

    invoke-virtual {v2}, Lbol;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v0, v2, v1}, Lbnn;->playAllMusic(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Ljava/util/List;I)V

    :cond_0
    return-void
.end method
