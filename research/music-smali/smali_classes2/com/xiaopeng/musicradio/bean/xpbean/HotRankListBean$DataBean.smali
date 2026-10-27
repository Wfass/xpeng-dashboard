.class public Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;
.super Ljava/lang/Object;
.source "HotRankListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;
    }
.end annotation


# instance fields
.field private mRankList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ranks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRankList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;->mRankList:Ljava/util/List;

    return-object v0
.end method
