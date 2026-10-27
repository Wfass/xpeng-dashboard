.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;
.super Ljava/lang/Object;
.source "CollectListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;
    }
.end annotation


# instance fields
.field private collectType:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectType()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;->collectType:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public setCollectType(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;->collectType:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;->list:Ljava/util/List;

    return-void
.end method
