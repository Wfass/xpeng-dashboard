.class public Lcom/xiaopeng/musicradio/bean/MusicSourceList;
.super Ljava/lang/Object;
.source "MusicSourceList.java"


# instance fields
.field private musicSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMusicSourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/MusicSourceList;->musicSourceList:Ljava/util/List;

    return-object v0
.end method

.method public setMusicSourceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/MusicSourceList;->musicSourceList:Ljava/util/List;

    return-void
.end method
