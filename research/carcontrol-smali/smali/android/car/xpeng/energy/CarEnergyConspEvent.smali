.class public Landroid/car/xpeng/energy/CarEnergyConspEvent;
.super Ljava/lang/Object;
.source "CarEnergyConspEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/xpeng/energy/CarEnergyConspEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnergyDistribution:[F

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/car/xpeng/energy/CarEnergyConspEvent$1;

    invoke-direct {v0}, Landroid/car/xpeng/energy/CarEnergyConspEvent$1;-><init>()V

    sput-object v0, Landroid/car/xpeng/energy/CarEnergyConspEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[F)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Landroid/car/xpeng/energy/CarEnergyConspEvent;->mTimeStamp:J

    .line 32
    iput-object p3, p0, Landroid/car/xpeng/energy/CarEnergyConspEvent;->mEnergyDistribution:[F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/xpeng/energy/CarEnergyConspEvent;->mTimeStamp:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Landroid/car/xpeng/energy/CarEnergyConspEvent;->mEnergyDistribution:[F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnergyDistribution()[F
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/car/xpeng/energy/CarEnergyConspEvent;->mEnergyDistribution:[F

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 42
    iget-wide v0, p0, Landroid/car/xpeng/energy/CarEnergyConspEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarEnergyConspEvent{mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/car/xpeng/energy/CarEnergyConspEvent;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnergyDistribution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/energy/CarEnergyConspEvent;->mEnergyDistribution:[F

    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 64
    iget-wide v0, p0, Landroid/car/xpeng/energy/CarEnergyConspEvent;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-object p2, p0, Landroid/car/xpeng/energy/CarEnergyConspEvent;->mEnergyDistribution:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
