.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean;
.super Ljava/lang/Object;
.source "VipMusicMainZoneResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectInfoBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean$CollectListBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeL


# instance fields
.field private collectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean$CollectListBean;",
            ">;"
        }
    .end annotation
.end field

.field private collectSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean$CollectListBean;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean;->collectList:Ljava/util/List;

    return-object v0
.end method

.method public getCollectSize()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean;->collectSize:I

    return v0
.end method

.method public setCollectList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean$CollectListBean;",
            ">;)V"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean;->collectList:Ljava/util/List;

    return-void
.end method

.method public setCollectSize(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMainZoneResult$DataBean$ListBean$ModuleListBean$CollectInfoBean;->collectSize:I

    return-void
.end method
