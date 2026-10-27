.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;
.super Ljava/lang/Object;
.source "KugouZoneItemBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private zoneModuleDtoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getZoneModuleDtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;->zoneModuleDtoList:Ljava/util/List;

    return-object v0
.end method

.method public setZoneModuleDtoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;->zoneModuleDtoList:Ljava/util/List;

    return-void
.end method
