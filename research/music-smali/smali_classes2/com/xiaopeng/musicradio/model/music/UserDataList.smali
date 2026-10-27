.class public Lcom/xiaopeng/musicradio/model/music/UserDataList;
.super Ljava/util/ArrayList;
.source "UserDataList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final SORT_SAVE_TIME:I = 0x32

.field public static final SPLIT_TAG:Ljava/lang/String; = "&#&#"

.field public static final SP_MUSIC_LIST_SOTR_USER:Ljava/lang/String; = "SP_MUSIC_LIST_SOTR_USER"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSaveSortRun:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/UserDataList;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/UserDataList$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/music/UserDataList$1;-><init>(Lcom/xiaopeng/musicradio/model/music/UserDataList;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/UserDataList;->mSaveSortRun:Ljava/lang/Runnable;

    return-void
.end method

.method public static getHashList()[Ljava/lang/String;
    .locals 2

    const-string v0, "SP_MUSIC_LIST_SOTR_USER"

    const-string v1, ""

    .line 82
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&#&#"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private postSave()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/UserDataList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/UserDataList;->mSaveSortRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/UserDataList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/UserDataList;->mSaveSortRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public add(ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/UserDataList;->postSave()V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/model/music/UserDataList;->add(ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method public add(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/UserDataList;->postSave()V

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/UserDataList;->add(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)Z"
        }
    .end annotation

    .line 23
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/UserDataList;->postSave()V

    return p1
.end method

.method public clear()V
    .locals 0

    .line 30
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/UserDataList;->postSave()V

    return-void
.end method

.method public remove(I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 0

    .line 49
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/UserDataList;->postSave()V

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/UserDataList;->remove(I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 56
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/UserDataList;->postSave()V

    return p1
.end method
