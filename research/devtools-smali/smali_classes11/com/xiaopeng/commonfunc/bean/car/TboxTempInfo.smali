.class public Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;
.super Ljava/lang/Object;
.source "TboxTempInfo.java"


# instance fields
.field private final bbat:I

.field private final tbox:I

.field private final tmcu:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->tbox:I

    .line 17
    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->tmcu:I

    .line 18
    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->bbat:I

    .line 19
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->tbox:I

    .line 11
    iput p2, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->tmcu:I

    .line 12
    iput p3, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->bbat:I

    .line 13
    return-void
.end method


# virtual methods
.method public getBbat()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->bbat:I

    return v0
.end method

.method public getFloatBbat()F
    .locals 2

    .line 42
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->bbat:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getFloatTbox()F
    .locals 2

    .line 34
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->tbox:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getFloatTmcu()F
    .locals 2

    .line 38
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->tmcu:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getTbox()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->tbox:I

    return v0
.end method

.method public getTmcu()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->tmcu:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TboxTempInfo{tbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->tbox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tmcu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->tmcu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bbat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxTempInfo;->bbat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
