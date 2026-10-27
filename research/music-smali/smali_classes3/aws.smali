.class public Laws;
.super Lcom/xiaopeng/musicradio/datalist/d;
.source "HistoryProgramAdapter.java"


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
    invoke-direct {p0, p1, v0, v1, v0}, Laws;-><init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V
    .locals 1

    .line 26
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_program_item_layout:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/xiaopeng/musicradio/datalist/d;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    .line 27
    iput-boolean p4, p0, Laws;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;ZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 1

    .line 30
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_program_item_layout:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/xiaopeng/musicradio/datalist/d;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    .line 31
    iput-boolean p4, p0, Laws;->k:Z

    .line 32
    iput-object p5, p0, Laws;->l:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/datalist/h;
    .locals 1

    .line 38
    invoke-static {p1}, Lavm;->c(Landroid/view/View;)Lavm;

    move-result-object p1

    .line 39
    new-instance p2, Latq;

    iget-boolean p3, p0, Laws;->k:Z

    iget-object v0, p0, Laws;->l:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-direct {p2, p1, p3, v0}, Latq;-><init>(Lavm;ZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-object p2
.end method
