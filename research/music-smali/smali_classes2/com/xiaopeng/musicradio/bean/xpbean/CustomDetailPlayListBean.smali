.class public Lcom/xiaopeng/musicradio/bean/xpbean/CustomDetailPlayListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "CustomDetailPlayListBean.java"


# instance fields
.field private mPageBean:Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;

.field private musicInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getMusicInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/CustomDetailPlayListBean;->musicInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getPageBean()Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/CustomDetailPlayListBean;->mPageBean:Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;

    return-object v0
.end method

.method public setMusicInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/CustomDetailPlayListBean;->musicInfoList:Ljava/util/List;

    return-void
.end method

.method public setPageBean(Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/CustomDetailPlayListBean;->mPageBean:Lcom/xiaopeng/musicradio/bean/xpbean/MineDetailPlayListBean$PageBean;

    return-void
.end method
