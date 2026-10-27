.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyResInfo$DataBean;
.super Ljava/lang/Object;
.source "DolbyResInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyResInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private enableVehicleDolby:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnableVehicleDolby()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyResInfo$DataBean;->enableVehicleDolby:Z

    return v0
.end method

.method public setEnableVehicleDolby(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyResInfo$DataBean;->enableVehicleDolby:Z

    return-void
.end method
