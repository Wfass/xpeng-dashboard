.class public Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDayliBean$DataBean;
.super Ljava/lang/Object;
.source "FMAlbumDayliBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDayliBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDayliBean$DataBean$PageBean;
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

.field private page:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDayliBean$DataBean$PageBean;


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
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDayliBean$DataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDayliBean$DataBean$PageBean;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDayliBean$DataBean;->page:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDayliBean$DataBean$PageBean;

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

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDayliBean$DataBean;->list:Ljava/util/List;

    return-void
.end method

.method public setPage(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDayliBean$DataBean$PageBean;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDayliBean$DataBean;->page:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDayliBean$DataBean$PageBean;

    return-void
.end method
