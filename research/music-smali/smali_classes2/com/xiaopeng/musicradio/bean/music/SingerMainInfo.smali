.class public Lcom/xiaopeng/musicradio/bean/music/SingerMainInfo;
.super Ljava/lang/Object;
.source "SingerMainInfo.java"


# instance fields
.field private mIsTitle:Z

.field private mLetter:Ljava/lang/String;

.field private mSingerBeans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmLetter()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/SingerMainInfo;->mLetter:Ljava/lang/String;

    return-object v0
.end method

.method public getmSingerBeans()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/SingerMainInfo;->mSingerBeans:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/SingerMainInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public ismIsTitle()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/SingerMainInfo;->mIsTitle:Z

    return v0
.end method

.method public setmIsTitle(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/SingerMainInfo;->mIsTitle:Z

    return-void
.end method

.method public setmLetter(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/SingerMainInfo;->mLetter:Ljava/lang/String;

    return-void
.end method

.method public setmSingerBeans(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/SingerMainInfo;->mSingerBeans:Ljava/util/ArrayList;

    return-void
.end method

.method public setmTitle(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/SingerMainInfo;->mTitle:Ljava/lang/String;

    return-void
.end method
