.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean;
.super Ljava/lang/Object;
.source "VipMusicMainZoneResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xcL


# instance fields
.field private id:I

.field private mPosition:I

.field private moduleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean;->id:I

    return v0
.end method

.method public getModuleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean;->moduleList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean;->mPosition:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean;->id:I

    return-void
.end method

.method public setModuleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean;->moduleList:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean;->mPosition:I

    return-void
.end method
