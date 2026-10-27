.class public Lcom/xiaopeng/devtools/model/c/a/b/b;
.super Ljava/lang/Object;
.source "ScanDeviceLab.java"


# static fields
.field private static sQ:Lcom/xiaopeng/devtools/model/c/a/b/b;


# instance fields
.field private sR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/b;->sR:Ljava/util/List;

    .line 18
    return-void
.end method

.method public static gm()Lcom/xiaopeng/devtools/model/c/a/b/b;
    .locals 1

    .line 21
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/b/b;->sQ:Lcom/xiaopeng/devtools/model/c/a/b/b;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/b/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/c/a/b/b;-><init>()V

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/b/b;->sQ:Lcom/xiaopeng/devtools/model/c/a/b/b;

    .line 24
    :cond_0
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/b/b;->sQ:Lcom/xiaopeng/devtools/model/c/a/b/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/b;->sR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public bD(Ljava/lang/String;)Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;
    .locals 4

    .line 36
    nop

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/b;->sR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;

    .line 38
    invoke-virtual {v2}, Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    nop

    .line 41
    move-object v1, v2

    :cond_0
    goto :goto_0

    .line 42
    :cond_1
    return-object v1
.end method

.method public deleteAll()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/b;->sR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/b;->sR:Ljava/util/List;

    return-object v0
.end method
