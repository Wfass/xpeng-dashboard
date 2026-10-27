.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2$DataBean;
.super Ljava/lang/Object;
.source "RecommendRadioResultV2.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2$DataBean$ListBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2$DataBean$ListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
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
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2$DataBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2$DataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2$DataBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioResultV2$DataBean;->list:Ljava/util/List;

    return-void
.end method
