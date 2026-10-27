.class public Lcom/xiaopeng/musicradio/bean/netradio/AllRadioCategoryTagResult;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "AllRadioCategoryTagResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/netradio/AllRadioCategoryTagResult$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/netradio/AllRadioCategoryTagResult$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/netradio/AllRadioCategoryTagResult$DataBean;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/AllRadioCategoryTagResult;->data:Lcom/xiaopeng/musicradio/bean/netradio/AllRadioCategoryTagResult$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/netradio/AllRadioCategoryTagResult$DataBean;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/AllRadioCategoryTagResult;->data:Lcom/xiaopeng/musicradio/bean/netradio/AllRadioCategoryTagResult$DataBean;

    return-void
.end method
