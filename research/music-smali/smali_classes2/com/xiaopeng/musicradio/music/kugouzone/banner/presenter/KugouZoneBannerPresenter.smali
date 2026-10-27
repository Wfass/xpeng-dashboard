.class public Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "KugouZoneBannerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 15
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method
