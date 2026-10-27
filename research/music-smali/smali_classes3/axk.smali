.class public Laxk;
.super Lcom/xiaopeng/musicradio/datalist/d;
.source "PlaylistUserAdapter.java"


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

.field private l:Z

.field private m:Z

.field private n:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;ZZZ)V
    .locals 1

    .line 41
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_album_item_layout:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/xiaopeng/musicradio/datalist/d;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    .line 42
    iput-boolean p4, p0, Laxk;->k:Z

    .line 43
    iput-boolean p5, p0, Laxk;->l:Z

    .line 44
    iput-boolean p6, p0, Laxk;->m:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .line 28
    invoke-direct/range {v0 .. v6}, Laxk;-><init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .line 32
    invoke-direct/range {v0 .. v6}, Laxk;-><init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;ZZZ)V

    .line 33
    iput-object p3, p0, Laxk;->n:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/datalist/h;
    .locals 6

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    .line 58
    invoke-static {p1}, Lavu;->c(Landroid/view/View;)Lavu;

    move-result-object p1

    .line 59
    new-instance p2, Laxl;

    iget-boolean p3, p0, Laxk;->k:Z

    invoke-direct {p2, p1, p3}, Laxl;-><init>(Lavu;Z)V

    return-object p2

    .line 61
    :cond_0
    invoke-static {p1}, Lave;->c(Landroid/view/View;)Lave;

    move-result-object v1

    .line 62
    new-instance p1, Latm;

    iget-boolean v2, p0, Laxk;->k:Z

    iget-boolean v3, p0, Laxk;->l:Z

    iget-boolean v4, p0, Laxk;->m:Z

    iget-object v5, p0, Laxk;->n:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Latm;-><init>(Lave;ZZZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-object p1
.end method

.method public b()[Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;
    .locals 4

    const/4 v0, 0x1

    .line 49
    new-array v1, v0, [Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;

    new-instance v2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;

    sget v3, Lcom/xiaopeng/musicradio/mine/a$d;->playlist_user_item_layout:I

    invoke-direct {v2, v0, v3, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;-><init>(III)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    return-object v1
.end method
