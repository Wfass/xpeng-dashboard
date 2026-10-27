.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean;
.super Ljava/lang/Object;
.source "MainHotSingerResultBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArtistGroupsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
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
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean;->list:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean;->title:Ljava/lang/String;

    return-void
.end method
