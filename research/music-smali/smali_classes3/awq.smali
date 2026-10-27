.class public Lawq;
.super Lcom/xiaopeng/musicradio/datalist/d;
.source "HistoryNetradioAdapter.java"


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

.field private l:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, v0, v1, v0}, Lawq;-><init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V
    .locals 1

    .line 26
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_netradio_item_layout:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/xiaopeng/musicradio/datalist/d;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    .line 27
    iput-boolean p4, p0, Lawq;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;ZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 1

    .line 31
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_netradio_item_layout:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/xiaopeng/musicradio/datalist/d;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    .line 32
    iput-boolean p4, p0, Lawq;->k:Z

    .line 33
    iput-object p5, p0, Lawq;->l:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/datalist/h;
    .locals 1

    .line 39
    invoke-static {p1}, Lavk;->c(Landroid/view/View;)Lavk;

    move-result-object p1

    .line 40
    new-instance p2, Latp;

    iget-boolean p3, p0, Lawq;->k:Z

    iget-object v0, p0, Lawq;->l:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-direct {p2, p1, p3, v0}, Latp;-><init>(Lavk;ZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-object p2
.end method
