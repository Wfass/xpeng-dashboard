.class public Lcom/xiaopeng/commonfunc/bean/car/AndroidDugReq;
.super Ljava/lang/Object;
.source "AndroidDugReq.java"


# instance fields
.field public dugMcuPrintReq:I

.field public dugMcuPrintStateReq:I

.field public dugSt:I

.field public dugUpReq:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packToIntArray()[I
    .locals 3

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 11
    .local v0, "data":[I
    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidDugReq;->dugUpReq:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 12
    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidDugReq;->dugMcuPrintReq:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 13
    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidDugReq;->dugMcuPrintStateReq:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 14
    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidDugReq;->dugSt:I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 15
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 19
    const-string v0, ""

    .line 20
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dugUpReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidDugReq;->dugUpReq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n dugMcuPrintReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidDugReq;->dugMcuPrintReq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n dugMcuPrintStateReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidDugReq;->dugMcuPrintStateReq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n dugSt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/AndroidDugReq;->dugSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    return-object v0
.end method
