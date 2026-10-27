.class public Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;
.super Ljava/lang/Object;
.source "CheckModeStatus.java"


# instance fields
.field private mCduId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cduid"
    .end annotation
.end field

.field private mKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field

.field private mMaintainMode:Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maintainMode"
    .end annotation
.end field

.field private mSpeedLimitMode:Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "speedLimitMode"
    .end annotation
.end field

.field private mVin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vin"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;)V
    .locals 0
    .param p1, "mVin"    # Ljava/lang/String;
    .param p2, "mCduId"    # Ljava/lang/String;
    .param p3, "mKey"    # Ljava/lang/String;
    .param p4, "mMaintainMode"    # Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;
    .param p5, "mSpeedLimitMode"    # Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mVin:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mCduId:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mKey:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mMaintainMode:Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;

    .line 24
    iput-object p5, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mSpeedLimitMode:Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;

    .line 25
    return-void
.end method


# virtual methods
.method public getCduId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mCduId:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintainMode()Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mMaintainMode:Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;

    return-object v0
.end method

.method public getSpeedLimitMode()Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mSpeedLimitMode:Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mVin:Ljava/lang/String;

    return-object v0
.end method

.method public setCduId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCduId"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mCduId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mKey"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mKey:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setMaintainMode(Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;)V
    .locals 0
    .param p1, "mMaintainMode"    # Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mMaintainMode:Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;

    .line 57
    return-void
.end method

.method public setSpeedLimitMode(Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;)V
    .locals 0
    .param p1, "mSpeedLimitMode"    # Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mSpeedLimitMode:Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;

    .line 65
    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0
    .param p1, "mVin"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/CheckModeStatus;->mVin:Ljava/lang/String;

    .line 33
    return-void
.end method
