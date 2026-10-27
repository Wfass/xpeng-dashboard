.class public Landroid/car/xpeng/guard/CarGuardModeEvent;
.super Landroid/car/xpeng/Scene;
.source "CarGuardModeEvent.java"


# static fields
.field public static final CAR_GUARD_ALARM_LEVEL_APPROACH:I = 0x1

.field public static final CAR_GUARD_ALARM_LEVEL_NONE:I = 0x0

.field public static final CAR_GUARD_ALARM_LEVEL_VIBRATE:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/xpeng/guard/CarGuardModeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlarmLevel:I

.field private mStatistics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/car/xpeng/guard/CarGuardModeEvent$1;

    invoke-direct {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent$1;-><init>()V

    sput-object v0, Landroid/car/xpeng/guard/CarGuardModeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Landroid/car/xpeng/Scene;-><init>(Landroid/car/xpeng/Scene;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mStatistics:Ljava/util/Map;

    .line 52
    invoke-virtual {p1}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getAlarmLevel()I

    move-result v0

    iput v0, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mAlarmLevel:I

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mStatistics:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Landroid/car/xpeng/Scene;-><init>(Landroid/os/Parcel;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mStatistics:Ljava/util/Map;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mAlarmLevel:I

    .line 59
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mStatistics:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/car/xpeng/Scene;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mStatistics:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAlarmLevel()I
    .locals 1

    .line 92
    iget v0, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mAlarmLevel:I

    return v0
.end method

.method public getStatistics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mStatistics:Ljava/util/Map;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroid/car/xpeng/Scene;->reset()V

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->setAlarmLevel(I)Landroid/car/xpeng/guard/CarGuardModeEvent;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->setStatistics(Ljava/util/Map;)Landroid/car/xpeng/guard/CarGuardModeEvent;

    return-void
.end method

.method public setAlarmLevel(I)Landroid/car/xpeng/guard/CarGuardModeEvent;
    .locals 0

    .line 96
    iput p1, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mAlarmLevel:I

    return-object p0
.end method

.method public setStatistics(Ljava/util/Map;)Landroid/car/xpeng/guard/CarGuardModeEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/car/xpeng/guard/CarGuardModeEvent;"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mStatistics:Ljava/util/Map;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarGuardModeEvent{mSceneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mAction:Landroid/car/xpeng/Scene$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlarmLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mAlarmLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatistics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mStatistics:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Landroid/car/xpeng/Scene;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    iget p2, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mAlarmLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object p2, p0, Landroid/car/xpeng/guard/CarGuardModeEvent;->mStatistics:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
