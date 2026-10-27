.class public Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$FreeNumPre;
.super Ljava/lang/Object;
.source "ChargeData.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/bean/search/ChargeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FreeNumPre"
.end annotation


# instance fields
.field private acNums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dcNums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private interval:I

.field private showHistory:Z

.field private timePoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcNums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$FreeNumPre;->acNums:Ljava/util/List;

    return-object v0
.end method

.method public getDcNums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$FreeNumPre;->dcNums:Ljava/util/List;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$FreeNumPre;->interval:I

    return v0
.end method

.method public getTimePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$FreeNumPre;->timePoint:Ljava/util/List;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 329
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$FreeNumPre;->timeStamp:J

    return-wide v0
.end method

.method public isShowHistory()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$FreeNumPre;->showHistory:Z

    return v0
.end method
