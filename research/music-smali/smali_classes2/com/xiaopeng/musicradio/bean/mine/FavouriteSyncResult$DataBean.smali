.class public Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;
.super Ljava/lang/Object;
.source "FavouriteSyncResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/mine/ResultState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/mine/ResultState;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;->results:Ljava/util/List;

    return-object v0
.end method

.method public setResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/mine/ResultState;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;->results:Ljava/util/List;

    return-void
.end method
