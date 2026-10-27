.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "CollectListBean.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;
    }
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean;->data:Ljava/util/List;

    return-void
.end method
