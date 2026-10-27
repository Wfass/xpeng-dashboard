.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;
.super Ljava/lang/Object;
.source "VipMusicMainZoneResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xdL


# instance fields
.field private collectInfo:Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean;

.field private moduleId:I

.field private name:Ljava/lang/String;

.field private type:I

.field private zoneId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectInfo()Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;->collectInfo:Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean;

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;->moduleId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;->type:I

    return v0
.end method

.method public getZoneId()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;->zoneId:I

    return v0
.end method

.method public setCollectInfo(Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;->collectInfo:Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean;

    return-void
.end method

.method public setModuleId(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;->moduleId:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;->type:I

    return-void
.end method

.method public setZoneId(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;->zoneId:I

    return-void
.end method
