.class public Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioResult$DataBean;
.super Ljava/lang/Object;
.source "RecommendReadingRadioResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
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
            "Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioBean;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioResult$DataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioBean;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioResult$DataBean;->list:Ljava/util/List;

    return-void
.end method
