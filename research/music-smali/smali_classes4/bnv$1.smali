.class Lbnv$1;
.super Ljava/lang/Object;
.source "SearchSongItemAdapter.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnv;-><init>(Landroid/content/Context;ILbnn;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnv;


# direct methods
.method constructor <init>(Lbnv;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lbnv$1;->a:Lbnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 32
    iget-object v0, p0, Lbnv$1;->a:Lbnv;

    invoke-virtual {v0, p2}, Lbnv;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 34
    iget-object p1, p0, Lbnv$1;->a:Lbnv;

    iget-object p1, p1, Lbnv;->h:Lbnn;

    if-eqz p1, :cond_1

    .line 35
    iget-object p1, p0, Lbnv$1;->a:Lbnv;

    iget-object p1, p1, Lbnv;->h:Lbnn;

    invoke-interface {p1, p2}, Lbnn;->favOrNot(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 38
    iget-object p1, p0, Lbnv$1;->a:Lbnv;

    iget-object p1, p1, Lbnv;->h:Lbnn;

    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lbnv$1;->a:Lbnv;

    iget-object p1, p1, Lbnv;->h:Lbnn;

    invoke-interface {p1, p2}, Lbnn;->playMusic(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    :cond_1
    :goto_0
    return-void
.end method
