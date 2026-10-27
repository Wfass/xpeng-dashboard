.class public Lcom/xiaopeng/musicradio/mine/collect/music/view/b;
.super Lcom/xiaopeng/musicradio/datalist/d;
.source "MCollectedMusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/d<",
        "Lcom/xiaopeng/musicradio/datalist/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/b;-><init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V
    .locals 1

    .line 22
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_mmusic_item_layout:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/xiaopeng/musicradio/datalist/d;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/datalist/h;
    .locals 0

    .line 28
    invoke-static {p1}, Lavg;->c(Landroid/view/View;)Lavg;

    move-result-object p1

    .line 29
    new-instance p2, Latn;

    invoke-direct {p2, p1}, Latn;-><init>(Lavg;)V

    return-object p2
.end method
