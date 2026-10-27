.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;
.super Ljava/lang/Object;
.source "SingerIndexResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private singerAreaBoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;"
        }
    .end annotation
.end field

.field private singerTypeBoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSingerAreaBoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->singerAreaBoList:Ljava/util/List;

    return-object v0
.end method

.method public getSingerTypeBoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->singerTypeBoList:Ljava/util/List;

    return-object v0
.end method

.method public setSingerAreaBoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->singerAreaBoList:Ljava/util/List;

    return-void
.end method

.method public setSingerTypeBoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->singerTypeBoList:Ljava/util/List;

    return-void
.end method
