.class public Lcom/xiaopeng/commonfunc/bean/factorytest/ScanDevice;
.super Ljava/lang/Object;
.source "ScanDevice.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mCod:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mRssi:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "cod"    # Ljava/lang/String;
    .param p4, "rssi"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScanDevice;->mName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScanDevice;->mAddress:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScanDevice;->mCod:Ljava/lang/String;

    .line 17
    iput p4, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScanDevice;->mRssi:I

    .line 18
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScanDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCod()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScanDevice;->mCod:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScanDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScanDevice;->mRssi:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScanDevice;->mAddress:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setCod(Ljava/lang/String;)V
    .locals 0
    .param p1, "cod"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScanDevice;->mCod:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScanDevice;->mName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .line 25
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScanDevice;->mRssi:I

    .line 26
    return-void
.end method
