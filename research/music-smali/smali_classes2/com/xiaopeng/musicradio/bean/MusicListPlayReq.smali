.class public Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;
.super Ljava/lang/Object;
.source "MusicListPlayReq.java"


# instance fields
.field public final listSign:Ljava/lang/String;

.field public final page:I

.field public final pageSize:I

.field public final target:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field public final targetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final totalPage:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;->targetList:Ljava/util/List;

    .line 23
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;->target:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 24
    iput p3, p0, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;->page:I

    .line 25
    iput p5, p0, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;->totalPage:I

    .line 26
    iput p4, p0, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;->pageSize:I

    .line 27
    iput-object p6, p0, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;->listSign:Ljava/lang/String;

    return-void
.end method
