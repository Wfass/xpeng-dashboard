.class public final Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
.super Ljava/lang/Object;
.source "CarUxRestrictionsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrivingStateRestrictions"
.end annotation


# instance fields
.field private mMode:Ljava/lang/String;

.field private mReqOpt:Z

.field private mRestrictions:I

.field private mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "baseline"

    .line 1043
    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mMode:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1044
    iput-boolean v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mReqOpt:Z

    const/16 v0, 0x1ff

    .line 1045
    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mRestrictions:I

    return-void
.end method

.method static synthetic access$1200(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;
    .locals 0

    .line 1042
    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    return-object p0
.end method

.method static synthetic access$1300(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Ljava/lang/String;
    .locals 0

    .line 1042
    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Z
    .locals 0

    .line 1042
    iget-boolean p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mReqOpt:Z

    return p0
.end method

.method static synthetic access$1500(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)I
    .locals 0

    .line 1042
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mRestrictions:I

    return p0
.end method


# virtual methods
.method public setDistractionOptimizationRequired(Z)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
    .locals 0

    .line 1054
    iput-boolean p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mReqOpt:Z

    return-object p0
.end method

.method public setMode(Ljava/lang/String;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
    .locals 1

    const-string v0, "mode must not be null"

    .line 1073
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mMode:Ljava/lang/String;

    return-object p0
.end method

.method public setRestrictions(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
    .locals 0

    .line 1064
    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mRestrictions:I

    return-object p0
.end method

.method public setSpeedRange(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
    .locals 0

    .line 1082
    iput-object p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mode: "

    .line 1089
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Requires DO? "

    .line 1090
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mReqOpt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Restrictions: "

    .line 1091
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mRestrictions:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". SpeedRange: "

    .line 1092
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1093
    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1094
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
