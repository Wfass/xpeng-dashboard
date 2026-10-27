.class public Lbfs;
.super Lbqo;
.source "MsRadioItemLayoutBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqo<",
        "Lbfu;",
        "Lbfs$a;",
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
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbfs$a;
    .locals 3

    .line 26
    sget v0, Lbez$f;->music_item_radio_item_layout:I

    invoke-virtual {p0, p1, v0}, Lbfs;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    const-string v0, "MsRadioItemLayoutBinder"

    if-nez p1, :cond_0

    .line 28
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lbez$f;->music_item_radio_item_layout:I

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
    new-instance p2, Lbfs$a;

    invoke-direct {p2, p1}, Lbfs$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lbfs$a;

    check-cast p2, Lbfu;

    invoke-virtual {p0, p1, p2}, Lbfs;->a(Lbfs$a;Lbfu;)V

    return-void
.end method

.method protected a(Lbfs$a;Lbfu;)V
    .locals 2

    .line 39
    invoke-virtual {p2}, Lbfu;->a()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {p1}, Lbfs$a;->a(Lbfs$a;)Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setVisibility(I)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1}, Lbfs$a;->a(Lbfs$a;)Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setVisibility(I)V

    .line 43
    invoke-static {p1}, Lbfs$a;->a(Lbfs$a;)Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;

    move-result-object p1

    invoke-virtual {p2}, Lbfu;->a()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-result-object v0

    invoke-virtual {p2}, Lbfu;->b()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    :goto_0
    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lbfs;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbfs$a;

    move-result-object p1

    return-object p1
.end method
