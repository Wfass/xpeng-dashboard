.class Lbha$2;
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

.field final synthetic b:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

.field final synthetic c:Lbha;


# direct methods
.method constructor <init>(Lbha;Lbhf;Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lbha$2;->c:Lbha;

    iput-object p2, p0, Lbha$2;->a:Lbhf;

    iput-object p3, p0, Lbha$2;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 127
    iget-object p1, p0, Lbha$2;->c:Lbha;

    iget-object p1, p1, Lbha;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbha$2;->a:Lbhf;

    invoke-virtual {p1}, Lbhf;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 128
    iget-object p1, p0, Lbha$2;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getPlayAllText()Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lbha$2;->c:Lbha;

    iget-object v0, v0, Lbha;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    iget-object v1, p0, Lbha$2;->a:Lbhf;

    invoke-virtual {v1}, Lbhf;->b()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lbha$2;->a:Lbhf;

    invoke-virtual {v2}, Lbhf;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbha$2;->a:Lbhf;

    invoke-virtual {v3}, Lbhf;->d()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;->playAllMusic(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
