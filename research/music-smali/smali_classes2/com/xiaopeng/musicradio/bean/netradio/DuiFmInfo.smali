.class public Lcom/xiaopeng/musicradio/bean/netradio/DuiFmInfo;
.super Ljava/lang/Object;
.source "DuiFmInfo.java"


# instance fields
.field private fm:Ljava/lang/String;

.field private fmInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFm()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/DuiFmInfo;->fm:Ljava/lang/String;

    return-object v0
.end method

.method public getFmInfo()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/DuiFmInfo;->fmInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setFm(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/DuiFmInfo;->fm:Ljava/lang/String;

    return-void
.end method

.method public setFmInfo(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/DuiFmInfo;->fmInfo:Ljava/lang/String;

    return-void
.end method
