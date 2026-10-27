.class public Lcom/xiaopeng/musicradio/bean/xpbean/ReadingRadioResult$DataBean$ListBean;
.super Ljava/lang/Object;
.source "ReadingRadioResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/ReadingRadioResult$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x9L


# instance fields
.field private group:Ljava/lang/String;

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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingRadioResult$DataBean$ListBean;->group:Ljava/lang/String;

    return-object v0
.end method

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

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingRadioResult$DataBean$ListBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingRadioResult$DataBean$ListBean;->group:Ljava/lang/String;

    return-void
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

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingRadioResult$DataBean$ListBean;->list:Ljava/util/List;

    return-void
.end method
