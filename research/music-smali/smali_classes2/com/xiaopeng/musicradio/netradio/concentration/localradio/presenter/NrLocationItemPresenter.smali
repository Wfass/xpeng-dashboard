.class public Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationItemPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "NrLocationItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "NrLocationItemPresenter"

    const-string v0, "onCreateView"

    .line 18
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
