.class public Lcom/xiaopeng/musicradio/mine/main/presenter/NetradioMineMainPresenter;
.super Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;
.source "NetradioMineMainPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 14
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 15
    new-instance p1, Lawx;

    invoke-direct {p1}, Lawx;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/NetradioMineMainPresenter;->b:Lawu;

    return-void
.end method
