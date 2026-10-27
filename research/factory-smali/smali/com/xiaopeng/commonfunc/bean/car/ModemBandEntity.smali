.class public Lcom/xiaopeng/commonfunc/bean/car/ModemBandEntity;
.super Ljava/lang/Object;
.source "ModemBandEntity.java"


# instance fields
.field private mBandName:Ljava/lang/String;

.field private mIschecked:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "bandName"    # Ljava/lang/String;
    .param p2, "ischecked"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/ModemBandEntity;->mBandName:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/xiaopeng/commonfunc/bean/car/ModemBandEntity;->mIschecked:I

    .line 17
    return-void
.end method


# virtual methods
.method public getBandName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/ModemBandEntity;->mBandName:Ljava/lang/String;

    return-object v0
.end method

.method public ischecked()Z
    .locals 2

    .line 28
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/ModemBandEntity;->mIschecked:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBandName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBandName"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/ModemBandEntity;->mBandName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "mIschecked"    # Z

    .line 32
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/ModemBandEntity;->mIschecked:I

    .line 33
    return-void
.end method
