.class public Lbgk;
.super Lbqo;
.source "XpPlayTitleBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbgk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqo<",
        "Lbgm;",
        "Lbgk$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lbqo;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbgk$a;
    .locals 3

    .line 26
    sget v0, Lbez$f;->music_item_xp_play_title_layout:I

    invoke-virtual {p0, p1, v0}, Lbgk;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    const-string v0, "MsXpPlayTitleBinder"

    if-nez p1, :cond_0

    .line 28
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lbez$f;->music_item_xp_play_title_layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "get view by create."

    .line 29
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "get view from cache."

    .line 31
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    new-instance p2, Lbgk$a;

    invoke-direct {p2, p1}, Lbgk$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lbgk$a;

    check-cast p2, Lbgm;

    invoke-virtual {p0, p1, p2}, Lbgk;->a(Lbgk$a;Lbgm;)V

    return-void
.end method

.method protected a(Lbgk$a;Lbgm;)V
    .locals 3

    .line 39
    invoke-static {p1}, Lbgk$a;->a(Lbgk$a;)Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;

    move-result-object v0

    invoke-virtual {p2}, Lbgm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lbgm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lbgk$a;->a(Lbgk$a;)Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;

    move-result-object p1

    invoke-virtual {p2}, Lbgm;->c()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lbgk;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbgk$a;

    move-result-object p1

    return-object p1
.end method
