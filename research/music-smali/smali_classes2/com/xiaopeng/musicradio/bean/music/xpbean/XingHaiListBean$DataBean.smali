.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiListBean$DataBean;
.super Ljava/lang/Object;
.source "XingHaiListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private xinghaiVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXinghaiVideoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiListBean$DataBean;->xinghaiVideoList:Ljava/util/List;

    return-object v0
.end method

.method public setXinghaiVideoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiInfo;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XingHaiListBean$DataBean;->xinghaiVideoList:Ljava/util/List;

    return-void
.end method
