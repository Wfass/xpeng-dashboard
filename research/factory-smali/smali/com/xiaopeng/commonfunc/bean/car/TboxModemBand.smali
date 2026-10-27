.class public Lcom/xiaopeng/commonfunc/bean/car/TboxModemBand;
.super Ljava/lang/Object;
.source "TboxModemBand.java"


# instance fields
.field private GSM:Lcom/xiaopeng/commonfunc/bean/car/TboxGsmBand;

.field private LTE:Lcom/xiaopeng/commonfunc/bean/car/TboxLteBand;

.field private UMTS:Lcom/xiaopeng/commonfunc/bean/car/TboxUmtsBand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/commonfunc/bean/car/TboxGsmBand;Lcom/xiaopeng/commonfunc/bean/car/TboxUmtsBand;Lcom/xiaopeng/commonfunc/bean/car/TboxLteBand;)V
    .locals 0
    .param p1, "GSM"    # Lcom/xiaopeng/commonfunc/bean/car/TboxGsmBand;
    .param p2, "UMTS"    # Lcom/xiaopeng/commonfunc/bean/car/TboxUmtsBand;
    .param p3, "LTE"    # Lcom/xiaopeng/commonfunc/bean/car/TboxLteBand;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxModemBand;->GSM:Lcom/xiaopeng/commonfunc/bean/car/TboxGsmBand;

    .line 16
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxModemBand;->UMTS:Lcom/xiaopeng/commonfunc/bean/car/TboxUmtsBand;

    .line 17
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxModemBand;->LTE:Lcom/xiaopeng/commonfunc/bean/car/TboxLteBand;

    .line 18
    return-void
.end method


# virtual methods
.method public getGSM()Lcom/xiaopeng/commonfunc/bean/car/TboxGsmBand;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxModemBand;->GSM:Lcom/xiaopeng/commonfunc/bean/car/TboxGsmBand;

    return-object v0
.end method

.method public getLTE()Lcom/xiaopeng/commonfunc/bean/car/TboxLteBand;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxModemBand;->LTE:Lcom/xiaopeng/commonfunc/bean/car/TboxLteBand;

    return-object v0
.end method

.method public getUMTS()Lcom/xiaopeng/commonfunc/bean/car/TboxUmtsBand;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxModemBand;->UMTS:Lcom/xiaopeng/commonfunc/bean/car/TboxUmtsBand;

    return-object v0
.end method
