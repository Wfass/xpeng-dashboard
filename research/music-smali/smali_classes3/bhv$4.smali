.class Lbhv$4;
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

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic c:I

.field final synthetic d:Lbhv;


# direct methods
.method constructor <init>(Lbhv;Lbib;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 0

    .line 171
    iput-object p1, p0, Lbhv$4;->d:Lbhv;

    iput-object p2, p0, Lbhv$4;->a:Lbib;

    iput-object p3, p0, Lbhv$4;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iput p4, p0, Lbhv$4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 174
    iget-object p1, p0, Lbhv$4;->d:Lbhv;

    iget-object p1, p1, Lbhv;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lbhv$4;->a:Lbib;

    invoke-virtual {p1}, Lbib;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget v0, Lbhv;->d:I

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    .line 176
    iget-object p1, p0, Lbhv$4;->d:Lbhv;

    iget-object v0, p1, Lbhv;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    iget-object p1, p0, Lbhv$4;->a:Lbib;

    invoke-virtual {p1}, Lbib;->b()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lbhv$4;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object p1, p0, Lbhv$4;->a:Lbib;

    invoke-virtual {p1}, Lbib;->c()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lbhv$4;->a:Lbib;

    invoke-virtual {p1}, Lbib;->d()I

    move-result v4

    iget v5, p0, Lbhv$4;->c:I

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/musicradio/music/kugouzone/view/b;->playMusic(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;II)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lbhv$4;->d:Lbhv;

    iget-object v0, p1, Lbhv;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    iget-object p1, p0, Lbhv$4;->a:Lbib;

    invoke-virtual {p1}, Lbib;->b()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lbhv$4;->d:Lbhv;

    invoke-static {v1}, Lbhv;->b(Lbhv;)I

    move-result v1

    sget v2, Lbhv;->d:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lbhv$4;->d:Lbhv;

    invoke-static {v2}, Lbhv;->b(Lbhv;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lbhv;->d:I

    mul-int/2addr v2, v3

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lbhv$4;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object p1, p0, Lbhv$4;->a:Lbib;

    invoke-virtual {p1}, Lbib;->c()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lbhv$4;->a:Lbib;

    invoke-virtual {p1}, Lbib;->d()I

    move-result v4

    iget v5, p0, Lbhv$4;->c:I

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/musicradio/music/kugouzone/view/b;->playMusic(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;II)V

    .line 180
    :goto_0
    iget-object p1, p0, Lbhv$4;->a:Lbib;

    invoke-virtual {p1}, Lbib;->i()I

    move-result p1

    invoke-static {p1}, Lbjl;->z(I)V

    .line 181
    iget-object p1, p0, Lbhv$4;->a:Lbib;

    invoke-virtual {p1}, Lbib;->i()I

    move-result p1

    iget-object v0, p0, Lbhv$4;->a:Lbib;

    invoke-virtual {v0}, Lbib;->h()I

    move-result v0

    invoke-static {p1, v0}, Lbjl;->e(II)V

    :cond_1
    return-void
.end method
