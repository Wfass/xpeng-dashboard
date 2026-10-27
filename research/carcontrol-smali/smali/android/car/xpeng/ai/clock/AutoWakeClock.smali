.class public final Landroid/car/xpeng/ai/clock/AutoWakeClock;
.super Ljava/lang/Object;
.source "AutoWakeClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/xpeng/ai/clock/AutoWakeClock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCycle:I

.field private mId:Ljava/lang/String;

.field private mTime:Ljava/lang/String;

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/car/xpeng/ai/clock/AutoWakeClock$1;

    invoke-direct {v0}, Landroid/car/xpeng/ai/clock/AutoWakeClock$1;-><init>()V

    sput-object v0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mTime:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mTimeStamp:J

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mCycle:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCycle()I
    .locals 1

    .line 86
    iget v0, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mCycle:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 77
    iget-wide v0, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mTimeStamp:J

    return-wide v0
.end method

.method public setCycle(I)Landroid/car/xpeng/ai/clock/AutoWakeClock;
    .locals 0

    .line 90
    iput p1, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mCycle:I

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/car/xpeng/ai/clock/AutoWakeClock;
    .locals 0

    .line 62
    iput-object p1, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setTime(Ljava/lang/String;)Landroid/car/xpeng/ai/clock/AutoWakeClock;
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mTime:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeStamp(J)Landroid/car/xpeng/ai/clock/AutoWakeClock;
    .locals 0

    .line 81
    iput-wide p1, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mTimeStamp:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoWakeClock{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mCycle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 33
    iget-object p2, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 35
    iget-wide v0, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    iget p2, p0, Landroid/car/xpeng/ai/clock/AutoWakeClock;->mCycle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
