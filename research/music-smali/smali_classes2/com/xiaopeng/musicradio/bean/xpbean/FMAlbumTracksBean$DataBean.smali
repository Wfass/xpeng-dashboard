.class public Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;
.super Ljava/lang/Object;
.source "FMAlbumTracksBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;,
        Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field mode:Ljava/lang/String;

.field private page:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

.field private sort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
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
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->page:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    return-object v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->list:Ljava/util/List;

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->mode:Ljava/lang/String;

    return-void
.end method

.method public setPage(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->page:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    return-void
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->sort:Ljava/lang/String;

    return-void
.end method
