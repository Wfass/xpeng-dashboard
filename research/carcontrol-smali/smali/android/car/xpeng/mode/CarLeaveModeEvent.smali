.class public Landroid/car/xpeng/mode/CarLeaveModeEvent;
.super Ljava/lang/Object;
.source "CarLeaveModeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/mode/CarLeaveModeEvent$Action;
    }
.end annotation


# static fields
.field public static final ACTION_ENTER:I = 0x1

.field public static final ACTION_EXIT:I = 0x0

.field public static final ACTION_NONE:I = -0x1

.field public static final ACTION_PRE_ENTER:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/xpeng/mode/CarLeaveModeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID:I = -0x1


# instance fields
.field private mAction:I

.field private mEnterError:I

.field private mTimeStamp:J

.field private mTip:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Landroid/car/xpeng/mode/CarLeaveModeEvent$1;

    invoke-direct {v0}, Landroid/car/xpeng/mode/CarLeaveModeEvent$1;-><init>()V

    sput-object v0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIII)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 49
    iput-wide v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTimeStamp:J

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mAction:I

    .line 64
    iput v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mEnterError:I

    .line 73
    iput v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTip:I

    .line 87
    iput-wide p1, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTimeStamp:J

    .line 88
    iput p3, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mAction:I

    .line 89
    iput p4, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mEnterError:I

    .line 90
    iput p5, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTip:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 49
    iput-wide v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTimeStamp:J

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mAction:I

    .line 64
    iput v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mEnterError:I

    .line 73
    iput v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTip:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTimeStamp:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mAction:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mEnterError:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTip:I

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

    .line 108
    iget v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mAction:I

    return v0
.end method

.method public getEnterFailReason()I
    .locals 1

    .line 114
    iget v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mEnterError:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 100
    iget-wide v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public getTip()I
    .locals 1

    .line 123
    iget v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTip:I

    return v0
.end method

.method public setAction(I)V
    .locals 0

    .line 111
    iput p1, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mAction:I

    return-void
.end method

.method public setEnterFailReason(I)V
    .locals 0

    .line 117
    iput p1, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mEnterError:I

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 104
    iput-wide p1, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTimeStamp:J

    return-void
.end method

.method public setTip(I)V
    .locals 0

    .line 120
    iput p1, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTip:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarLeaveModeEvent{mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnterError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mEnterError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTip:I

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

    .line 133
    iget-wide v0, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget p2, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget p2, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mEnterError:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget p2, p0, Landroid/car/xpeng/mode/CarLeaveModeEvent;->mTip:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
