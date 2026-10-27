.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2$DataBean$ListBean;
.super Ljava/lang/Object;
.source "RecommendRadioResultV2.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBeanV2;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
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
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBeanV2;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2$DataBean$ListBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2$DataBean$ListBean;->type:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBeanV2;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2$DataBean$ListBean;->list:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2$DataBean$ListBean;->type:I

    return-void
.end method
