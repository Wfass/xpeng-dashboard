.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyResResult$DataBean;
.super Ljava/lang/Object;
.source "DolbyResResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyResResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;",
            ">;"
        }
    .end annotation
.end field


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
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyResResult$DataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyInfo;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyResResult$DataBean;->list:Ljava/util/List;

    return-void
.end method
