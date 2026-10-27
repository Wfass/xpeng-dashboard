.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;
.super Ljava/lang/Object;
.source "FavouriteCollectBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private collectType:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field private page:Lcom/xiaopeng/musicradio/bean/common/PageBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectType()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->collectType:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->page:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-object v0
.end method

.method public setCollectType(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->collectType:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->list:Ljava/util/List;

    return-void
.end method

.method public setPage(Lcom/xiaopeng/musicradio/bean/common/PageBean;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->page:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-void
.end method
