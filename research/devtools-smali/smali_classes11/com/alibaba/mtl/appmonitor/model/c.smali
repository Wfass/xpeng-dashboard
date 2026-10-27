.class public Lcom/alibaba/mtl/appmonitor/model/c;
.super Ljava/lang/Object;
.source "MetricRepo.java"


# static fields
.field private static bD:Lcom/alibaba/mtl/appmonitor/model/c;


# instance fields
.field public bC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/appmonitor/model/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/c;->bC:Ljava/util/List;

    .line 30
    return-void
.end method

.method public static Y()Lcom/alibaba/mtl/appmonitor/model/c;
    .locals 2

    .line 18
    sget-object v0, Lcom/alibaba/mtl/appmonitor/model/c;->bD:Lcom/alibaba/mtl/appmonitor/model/c;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/c;-><init>(I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/c;->bD:Lcom/alibaba/mtl/appmonitor/model/c;

    .line 21
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/model/c;->bD:Lcom/alibaba/mtl/appmonitor/model/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alibaba/mtl/appmonitor/model/b;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/c;->bC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/c;->bC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public b(Lcom/alibaba/mtl/appmonitor/model/b;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/c;->bC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/c;->bC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 41
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/b;
    .locals 5

    .line 45
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/c;->bC:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/c;->bC:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 49
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 50
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/c;->bC:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/model/b;

    .line 51
    if-eqz v3, :cond_1

    .line 52
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/model/b;->T()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/model/b;->U()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    return-object v3

    .line 49
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_2
    return-object v0

    .line 46
    :cond_3
    :goto_1
    return-object v0
.end method
