.class public Landroid/car/xpeng/mode/CarCareModeEvent;
.super Ljava/lang/Object;
.source "CarCareModeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/mode/CarCareModeEvent$Action;
    }
.end annotation


# static fields
.field public static final ACTION_ENTER:I = 0x0

.field public static final ACTION_EXIT:I = 0x1

.field public static final ACTION_NONE:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/xpeng/mode/CarCareModeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID:I = -0x1


# instance fields
.field private mAction:I

.field private mExitReason:I

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Landroid/car/xpeng/mode/CarCareModeEvent$1;

    invoke-direct {v0}, Landroid/car/xpeng/mode/CarCareModeEvent$1;-><init>()V

    sput-object v0, Landroid/car/xpeng/mode/CarCareModeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 46
    iput-wide v0, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mTimeStamp:J

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mAction:I

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mExitReason:I

    .line 72
    iput-wide p1, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mTimeStamp:J

    .line 73
    iput p3, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mAction:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 46
    iput-wide v0, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mTimeStamp:J

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mAction:I

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mExitReason:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mTimeStamp:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mAction:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mExitReason:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 90
    iget v0, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mAction:I

    return v0
.end method

.method public getExitReason()I
    .locals 1

    .line 97
    iget v0, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mExitReason:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 82
    iget-wide v0, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public setAction(I)V
    .locals 0

    .line 94
    iput p1, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mAction:I

    return-void
.end method

.method public setExitReason(I)Landroid/car/xpeng/mode/CarCareModeEvent;
    .locals 0

    .line 101
    iput p1, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mExitReason:I

    return-object p0
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mTimeStamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarCareModeEvent{mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExitReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mExitReason:I

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

    .line 112
    iget-wide v0, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget p2, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget p2, p0, Landroid/car/xpeng/mode/CarCareModeEvent;->mExitReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
