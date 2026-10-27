.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/VehiclesInfo;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "VehiclesInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/VehiclesInfo$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/xpbean/VehiclesInfo$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/VehiclesInfo$DataBean;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/VehiclesInfo;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/VehiclesInfo$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/VehiclesInfo$DataBean;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/VehiclesInfo;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/VehiclesInfo$DataBean;

    return-void
.end method
