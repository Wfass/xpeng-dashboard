.class public Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;
.super Ljava/lang/Object;
.source "GuessLikeListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;
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

.field private mPageBean:Lcom/xiaopeng/musicradio/bean/common/PageBean;
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

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getPageBean()Lcom/xiaopeng/musicradio/bean/common/PageBean;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->mPageBean:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-object v0
.end method
