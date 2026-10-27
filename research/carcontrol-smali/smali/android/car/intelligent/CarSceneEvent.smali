.class public Landroid/car/intelligent/CarSceneEvent;
.super Ljava/lang/Object;
.source "CarSceneEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/intelligent/CarSceneEvent$Type;,
        Landroid/car/intelligent/CarSceneEvent$Position;,
        Landroid/car/intelligent/CarSceneEvent$Action;
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
            "Landroid/car/intelligent/CarSceneEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID:I = -0x1

.field public static final POSITION_FRONT_LEFT:I = 0x1

.field public static final POSITION_FRONT_RIGHT:I = 0x2

.field public static final POSITION_NONE:I = 0x0

.field public static final POSITION_SECOND_LEFT:I = 0x3

.field public static final POSITION_SECOND_RIGHT:I = 0x4

.field public static final TYPE_ARHUD_DRIVING:I = 0x3

.field public static final TYPE_DRIVING:I = 0x2

.field public static final TYPE_WELCOME:I = 0x1


# instance fields
.field private mExitReason:I

.field private mSceneAction:I

.field private mScenePosition:I

.field private mSceneType:I

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    new-instance v0, Landroid/car/intelligent/CarSceneEvent$1;

    invoke-direct {v0}, Landroid/car/intelligent/CarSceneEvent$1;-><init>()V

    sput-object v0, Landroid/car/intelligent/CarSceneEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 123
    iput-wide v0, p0, Landroid/car/intelligent/CarSceneEvent;->mTimeStamp:J

    const/4 v0, 0x1

    .line 130
    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneType:I

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneAction:I

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mScenePosition:I

    .line 157
    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mExitReason:I

    return-void
.end method

.method public constructor <init>(JIII)V
    .locals 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 123
    iput-wide v0, p0, Landroid/car/intelligent/CarSceneEvent;->mTimeStamp:J

    const/4 v0, 0x1

    .line 130
    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneType:I

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneAction:I

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mScenePosition:I

    .line 157
    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mExitReason:I

    .line 188
    iput-wide p1, p0, Landroid/car/intelligent/CarSceneEvent;->mTimeStamp:J

    .line 189
    iput p3, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneType:I

    .line 190
    iput p4, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneAction:I

    .line 191
    iput p5, p0, Landroid/car/intelligent/CarSceneEvent;->mScenePosition:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 123
    iput-wide v0, p0, Landroid/car/intelligent/CarSceneEvent;->mTimeStamp:J

    const/4 v0, 0x1

    .line 130
    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneType:I

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneAction:I

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mScenePosition:I

    .line 157
    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mExitReason:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/intelligent/CarSceneEvent;->mTimeStamp:J

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneType:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneAction:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/intelligent/CarSceneEvent;->mScenePosition:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/car/intelligent/CarSceneEvent;->mExitReason:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExitReason()I
    .locals 1

    .line 238
    iget v0, p0, Landroid/car/intelligent/CarSceneEvent;->mExitReason:I

    return v0
.end method

.method public getSceneAction()I
    .locals 1

    .line 221
    iget v0, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneAction:I

    return v0
.end method

.method public getScenePosition()I
    .locals 1

    .line 230
    iget v0, p0, Landroid/car/intelligent/CarSceneEvent;->mScenePosition:I

    return v0
.end method

.method public getSceneType()I
    .locals 1

    .line 212
    iget v0, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneType:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 203
    iget-wide v0, p0, Landroid/car/intelligent/CarSceneEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public setExitReason(I)Landroid/car/intelligent/CarSceneEvent;
    .locals 0

    .line 242
    iput p1, p0, Landroid/car/intelligent/CarSceneEvent;->mExitReason:I

    return-object p0
.end method

.method public setSceneAction(I)V
    .locals 0

    .line 225
    iput p1, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneAction:I

    return-void
.end method

.method public setScenePosition(I)V
    .locals 0

    .line 234
    iput p1, p0, Landroid/car/intelligent/CarSceneEvent;->mScenePosition:I

    return-void
.end method

.method public setSceneType(I)V
    .locals 0

    .line 216
    iput p1, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneType:I

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 207
    iput-wide p1, p0, Landroid/car/intelligent/CarSceneEvent;->mTimeStamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarSceneEvent{mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/car/intelligent/CarSceneEvent;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSceneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSceneAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScenePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/intelligent/CarSceneEvent;->mScenePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExitReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/intelligent/CarSceneEvent;->mExitReason:I

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

    .line 166
    iget-wide v0, p0, Landroid/car/intelligent/CarSceneEvent;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    iget p2, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget p2, p0, Landroid/car/intelligent/CarSceneEvent;->mSceneAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget p2, p0, Landroid/car/intelligent/CarSceneEvent;->mScenePosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget p2, p0, Landroid/car/intelligent/CarSceneEvent;->mExitReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
