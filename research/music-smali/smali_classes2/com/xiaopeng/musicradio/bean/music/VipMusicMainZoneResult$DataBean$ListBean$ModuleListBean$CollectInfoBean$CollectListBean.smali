.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean$CollectListBean;
.super Ljava/lang/Object;
.source "VipMusicMainZoneResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectListBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xfL


# instance fields
.field private collect:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field private isLock:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollect()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean$CollectListBean;->collect:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-object v0
.end method

.method public getIsLock()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean$CollectListBean;->isLock:I

    return v0
.end method

.method public setCollect(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean$CollectListBean;->collect:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-void
.end method

.method public setIsLock(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean$CollectListBean;->isLock:I

    return-void
.end method
