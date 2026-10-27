.class public Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "MixSearchResultBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;,
        Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;,
        Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;
    }
.end annotation


# instance fields
.field private mData:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private mPageBean:Lcom/xiaopeng/musicradio/bean/common/PageBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pageInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->mData:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    return-object v0
.end method
