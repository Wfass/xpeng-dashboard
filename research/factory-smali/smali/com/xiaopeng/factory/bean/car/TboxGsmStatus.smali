.class public Lcom/xiaopeng/factory/bean/car/TboxGsmStatus;
.super Ljava/lang/Object;
.source "TboxGsmStatus.java"


# instance fields
.field private neighbours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/factory/bean/car/TboxGsmBean;",
            ">;"
        }
    .end annotation
.end field

.field private tbox:Lcom/xiaopeng/factory/bean/car/TboxGsmBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getNeighbours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/factory/bean/car/TboxGsmBean;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/car/TboxGsmStatus;->neighbours:Ljava/util/List;

    return-object v0
.end method

.method public getTbox()Lcom/xiaopeng/factory/bean/car/TboxGsmBean;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/car/TboxGsmStatus;->tbox:Lcom/xiaopeng/factory/bean/car/TboxGsmBean;

    return-object v0
.end method
