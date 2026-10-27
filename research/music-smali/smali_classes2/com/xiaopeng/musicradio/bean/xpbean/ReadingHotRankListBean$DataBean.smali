.class public Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean$DataBean;
.super Ljava/lang/Object;
.source "ReadingHotRankListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:Lcom/xiaopeng/musicradio/bean/common/PageBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean$DataBean;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean$DataBean;->mPage:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-object v0
.end method
