.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/VehiclesInfo$DataBean;
.super Ljava/lang/Object;
.source "VehiclesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/VehiclesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private enableAuditionZone:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnableAuditionZone()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/VehiclesInfo$DataBean;->enableAuditionZone:Z

    return v0
.end method

.method public setEnableAuditionZone(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/VehiclesInfo$DataBean;->enableAuditionZone:Z

    return-void
.end method
