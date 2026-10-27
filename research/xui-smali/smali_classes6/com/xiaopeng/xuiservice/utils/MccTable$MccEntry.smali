.class Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;
.super Ljava/lang/Object;
.source "MccTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/MccTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MccEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final mIso:Ljava/lang/String;

.field final mMcc:I

.field final mSmallestDigitsMnc:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "mnc"    # I
    .param p2, "iso"    # Ljava/lang/String;
    .param p3, "smallestDigitsMCC"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p2, :cond_0

    .line 32
    iput p1, p0, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;->mMcc:I

    .line 33
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;->mIso:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;->mSmallestDigitsMnc:I

    .line 35
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;)I
    .locals 2
    .param p1, "o"    # Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    .line 39
    iget v0, p0, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;->mMcc:I

    iget v1, p1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;->mMcc:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;->compareTo(Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;)I

    move-result p1

    return p1
.end method
