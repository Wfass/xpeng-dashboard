.class public Laxc;
.super Lcom/xiaopeng/musicradio/datalist/d;
.source "PlaylistBlueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/d<",
        "Lcom/xiaopeng/musicradio/datalist/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V
    .locals 1

    .line 18
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_music_item_layout:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/xiaopeng/musicradio/datalist/d;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/datalist/h;
    .locals 0

    .line 24
    invoke-static {p1}, Lavi;->c(Landroid/view/View;)Lavi;

    move-result-object p1

    .line 25
    new-instance p2, Laxd;

    invoke-direct {p2, p1}, Laxd;-><init>(Lavi;)V

    return-object p2
.end method
