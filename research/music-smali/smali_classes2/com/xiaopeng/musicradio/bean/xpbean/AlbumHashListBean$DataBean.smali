.class public Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean;
.super Ljava/lang/Object;
.source "AlbumHashListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean$ListBean;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
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
            "Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean;->list:Ljava/util/List;

    return-void
.end method
