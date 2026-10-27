.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean;
.super Ljava/lang/Object;
.source "VipMusicCollectListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicCollectBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean;->list:Ljava/util/List;

    return-void
.end method
