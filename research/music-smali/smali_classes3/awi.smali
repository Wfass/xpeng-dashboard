.class public Lawi;
.super Lcom/xiaopeng/musicradio/datalist/d;
.source "HistoryAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/d<",
        "Lcom/xiaopeng/musicradio/datalist/h;",
        ">;"
    }
.end annotation


# instance fields
.field private k:Z

.field private l:I

.field private m:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, v0, v1, v0}, Lawi;-><init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V
    .locals 1

    .line 39
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_album_item_layout:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/xiaopeng/musicradio/datalist/d;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    .line 40
    iput-boolean p4, p0, Lawi;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, v0, v1, v0}, Lawi;-><init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    .line 34
    iput p2, p0, Lawi;->l:I

    .line 35
    iput-object p3, p0, Lawi;->m:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/datalist/h;
    .locals 2

    .line 46
    invoke-static {p1}, Lave;->c(Landroid/view/View;)Lave;

    move-result-object p1

    .line 47
    new-instance p2, Latm;

    iget-boolean p3, p0, Lawi;->k:Z

    iget v0, p0, Lawi;->l:I

    iget-object v1, p0, Lawi;->m:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-direct {p2, p1, p3, v0, v1}, Latm;-><init>(Lave;ZILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-object p2
.end method
