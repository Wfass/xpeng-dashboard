.class public Lcom/xiaopeng/lib_xpbt/XpBtDevice;
.super Ljava/lang/Object;
.source "XpBtDevice.java"


# instance fields
.field private address:Ljava/lang/String;

.field private category:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->category:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->address:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setCategory(I)V
    .locals 0
    .param p1, "category"    # I

    .line 29
    iput p1, p0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->category:I

    .line 30
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->name:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XpBtDevice{address=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
