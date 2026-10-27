.class Lbha$4;
.super Ljava/lang/Object;
.source "DolbyZoneSongBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbha;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhf;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic c:I

.field final synthetic d:Lbha;


# direct methods
.method constructor <init>(Lbha;Lbhf;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 0

    .line 169
    iput-object p1, p0, Lbha$4;->d:Lbha;

    iput-object p2, p0, Lbha$4;->a:Lbhf;

    iput-object p3, p0, Lbha$4;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iput p4, p0, Lbha$4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 172
    iget-object p1, p0, Lbha$4;->d:Lbha;

    iget-object p1, p1, Lbha;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    if-eqz p1, :cond_1

    .line 173
    iget-object p1, p0, Lbha$4;->a:Lbhf;

    invoke-virtual {p1}, Lbhf;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget v0, Lbha;->b:I

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    .line 174
    iget-object p1, p0, Lbha$4;->d:Lbha;

    iget-object v0, p1, Lbha;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    iget-object p1, p0, Lbha$4;->a:Lbhf;

    invoke-virtual {p1}, Lbhf;->b()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lbha$4;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object p1, p0, Lbha$4;->a:Lbhf;

    invoke-virtual {p1}, Lbhf;->c()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lbha$4;->a:Lbhf;

    invoke-virtual {p1}, Lbhf;->d()I

    move-result v4

    iget v5, p0, Lbha$4;->c:I

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;->playMusic(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;II)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lbha$4;->d:Lbha;

    iget-object v0, p1, Lbha;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    iget-object p1, p0, Lbha$4;->a:Lbhf;

    invoke-virtual {p1}, Lbhf;->b()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lbha$4;->d:Lbha;

    invoke-static {v1}, Lbha;->b(Lbha;)I

    move-result v1

    sget v2, Lbha;->b:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lbha$4;->d:Lbha;

    invoke-static {v2}, Lbha;->b(Lbha;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lbha;->b:I

    mul-int/2addr v2, v3

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lbha$4;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object p1, p0, Lbha$4;->a:Lbhf;

    invoke-virtual {p1}, Lbhf;->c()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lbha$4;->a:Lbhf;

    invoke-virtual {p1}, Lbhf;->d()I

    move-result v4

    iget v5, p0, Lbha$4;->c:I

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;->playMusic(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method
