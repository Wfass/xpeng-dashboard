.class public Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;
.source "MsDataBasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter<",
        "TUIInterface;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public t()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
