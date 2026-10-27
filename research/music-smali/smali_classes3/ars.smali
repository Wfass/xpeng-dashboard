.class public Lars;
.super Ljava/lang/Object;
.source "ReissueMergeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lars$a;
    }
.end annotation


# instance fields
.field private a:Larq;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Larr;

    invoke-direct {v0}, Larr;-><init>()V

    iput-object v0, p0, Lars;->a:Larq;

    return-void
.end method

.method synthetic constructor <init>(Lars$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lars;-><init>()V

    return-void
.end method

.method public static a()Lars;
    .locals 1

    .line 19
    sget-object v0, Lars$a;->a:Lars;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Ljava/util/LinkedList;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            ">;)",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 32
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReissueMergeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "music_love"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lars;->a:Larq;

    invoke-interface {v0, p1, p2}, Larq;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Ljava/util/LinkedList;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Z
    .locals 1

    .line 27
    iget-object v0, p0, Lars;->a:Larq;

    invoke-interface {v0, p1}, Larq;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Z

    move-result p1

    return p1
.end method
