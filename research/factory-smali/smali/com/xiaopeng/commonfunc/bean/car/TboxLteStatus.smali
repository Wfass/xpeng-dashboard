.class public Lcom/xiaopeng/commonfunc/bean/car/TboxLteStatus;
.super Ljava/lang/Object;
.source "TboxLteStatus.java"


# instance fields
.field private neighbours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;",
            ">;"
        }
    .end annotation
.end field

.field private tbox:Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;


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
            "Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteStatus;->neighbours:Ljava/util/List;

    return-object v0
.end method

.method public getTbox()Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteStatus;->tbox:Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;

    return-object v0
.end method
