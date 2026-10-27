.class Lbhv$2;
.super Ljava/lang/Object;
.source "KugouZoneSongBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhv;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbib;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbib;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

.field final synthetic c:Lbhv;


# direct methods
.method constructor <init>(Lbhv;Lbib;Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lbhv$2;->c:Lbhv;

    iput-object p2, p0, Lbhv$2;->a:Lbib;

    iput-object p3, p0, Lbhv$2;->b:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 125
    iget-object p1, p0, Lbhv$2;->c:Lbhv;

    iget-object p1, p1, Lbhv;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbhv$2;->a:Lbib;

    invoke-virtual {p1}, Lbib;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 126
    iget-object p1, p0, Lbhv$2;->b:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getPlayAllText()Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lbhv$2;->c:Lbhv;

    iget-object v0, v0, Lbhv;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    iget-object v1, p0, Lbhv$2;->a:Lbib;

    invoke-virtual {v1}, Lbib;->b()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lbhv$2;->a:Lbib;

    invoke-virtual {v2}, Lbib;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbhv$2;->a:Lbib;

    invoke-virtual {v3}, Lbib;->d()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/b;->playAllMusic(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    iget-object p1, p0, Lbhv$2;->a:Lbib;

    invoke-virtual {p1}, Lbib;->i()I

    move-result p1

    iget-object v0, p0, Lbhv$2;->a:Lbib;

    invoke-virtual {v0}, Lbib;->h()I

    move-result v0

    invoke-static {p1, v0}, Lbjl;->a(II)V

    .line 129
    iget-object p1, p0, Lbhv$2;->a:Lbib;

    invoke-virtual {p1}, Lbib;->i()I

    move-result p1

    invoke-static {p1}, Lbjl;->z(I)V

    .line 130
    iget-object p1, p0, Lbhv$2;->a:Lbib;

    invoke-virtual {p1}, Lbib;->i()I

    move-result p1

    iget-object v0, p0, Lbhv$2;->a:Lbib;

    invoke-virtual {v0}, Lbib;->h()I

    move-result v0

    invoke-static {p1, v0}, Lbjl;->e(II)V

    :cond_0
    return-void
.end method
