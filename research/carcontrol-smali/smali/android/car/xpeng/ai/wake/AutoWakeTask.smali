.class public final Landroid/car/xpeng/ai/wake/AutoWakeTask;
.super Ljava/lang/Object;
.source "AutoWakeTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/ai/wake/AutoWakeTask$ClockType;
    }
.end annotation


# static fields
.field public static final CLOCK_TYPE_IG_OFF:I = 0x1

.field public static final CLOCK_TYPE_RTC:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/xpeng/ai/wake/AutoWakeTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClock:Landroid/car/xpeng/ai/clock/AutoWakeClock;

.field private mClockType:I

.field private mCostTime:J

.field private mDurationTime:J

.field private mLeafId:Ljava/lang/String;

.field private mRootId:Ljava/lang/String;

.field private mSource:I

.field private mTaskId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Landroid/car/xpeng/ai/wake/AutoWakeTask$1;

    invoke-direct {v0}, Landroid/car/xpeng/ai/wake/AutoWakeTask$1;-><init>()V

    sput-object v0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mClockType:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mTaskId:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mRootId:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mLeafId:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mSource:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mActionList:Ljava/util/List;

    .line 99
    const-class v0, Landroid/car/xpeng/ai/clock/AutoWakeClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/ai/clock/AutoWakeClock;

    iput-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mClock:Landroid/car/xpeng/ai/clock/AutoWakeClock;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mCostTime:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mDurationTime:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mClockType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mClockType:I

    .line 90
    iput-object p1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mTaskId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mActionList:Ljava/util/List;

    return-object v0
.end method

.method public getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mClock:Landroid/car/xpeng/ai/clock/AutoWakeClock;

    return-object v0
.end method

.method public getClockType()I
    .locals 1

    .line 212
    iget v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mClockType:I

    return v0
.end method

.method public getCostTime()J
    .locals 2

    .line 193
    iget-wide v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mCostTime:J

    return-wide v0
.end method

.method public getDurationTime()J
    .locals 2

    .line 202
    iget-wide v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mDurationTime:J

    return-wide v0
.end method

.method public getLeafId()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mLeafId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootId()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mRootId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 164
    iget v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mSource:I

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public setActionList(Ljava/util/List;)Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/car/xpeng/ai/wake/AutoWakeTask;"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mActionList:Ljava/util/List;

    return-object p0
.end method

.method public setClock(Landroid/car/xpeng/ai/clock/AutoWakeClock;)Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .locals 0

    .line 188
    iput-object p1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mClock:Landroid/car/xpeng/ai/clock/AutoWakeClock;

    return-object p0
.end method

.method public setClockType(I)Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .locals 0

    .line 216
    iput p1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mClockType:I

    return-object p0
.end method

.method public setCostTime(J)Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .locals 0

    .line 197
    iput-wide p1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mCostTime:J

    return-object p0
.end method

.method public setDurationTime(J)Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .locals 0

    .line 206
    iput-wide p1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mDurationTime:J

    return-object p0
.end method

.method public setLeafId(Ljava/lang/String;)Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .locals 0

    .line 159
    iput-object p1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mLeafId:Ljava/lang/String;

    return-object p0
.end method

.method public setRootId(Ljava/lang/String;)Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .locals 0

    .line 150
    iput-object p1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mRootId:Ljava/lang/String;

    return-object p0
.end method

.method public setSource(I)Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .locals 0

    .line 168
    iput p1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mSource:I

    return-object p0
.end method

.method public setTaskId(Ljava/lang/String;)Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .locals 0

    .line 141
    iput-object p1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mTaskId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoWakeTask{mTaskId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRootId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mRootId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLeafId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mLeafId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mClock:Landroid/car/xpeng/ai/clock/AutoWakeClock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCostTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mCostTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDurationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mDurationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClockType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mClockType:I

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

    .line 107
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mRootId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mLeafId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 110
    iget v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mActionList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 112
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mClock:Landroid/car/xpeng/ai/clock/AutoWakeClock;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    iget-wide v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mCostTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-wide v0, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mDurationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget p2, p0, Landroid/car/xpeng/ai/wake/AutoWakeTask;->mClockType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
