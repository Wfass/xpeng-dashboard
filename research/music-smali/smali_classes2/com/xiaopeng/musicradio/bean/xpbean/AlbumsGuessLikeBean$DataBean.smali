.class public Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean;
.super Ljava/lang/Object;
.source "AlbumsGuessLikeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean$PageBean;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation
.end field

.field private page:Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean$PageBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
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

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean$PageBean;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean;->page:Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean$PageBean;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean;->list:Ljava/util/List;

    return-void
.end method

.method public setPage(Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean$PageBean;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean;->page:Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean$PageBean;

    return-void
.end method
