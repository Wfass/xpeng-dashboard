.class public Landroid/car/xpeng/ai/scene/CarScene;
.super Ljava/lang/Object;
.source "CarScene.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/ai/scene/CarScene$Type;,
        Landroid/car/xpeng/ai/scene/CarScene$Position;,
        Landroid/car/xpeng/ai/scene/CarScene$Action;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/xpeng/ai/scene/CarScene;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExitCode:I

.field private mSceneAction:Landroid/car/xpeng/ai/scene/CarScene$Action;

.field private mSceneId:Ljava/lang/String;

.field private mScenePosition:Landroid/car/xpeng/ai/scene/CarScene$Position;

.field private mSceneType:Landroid/car/xpeng/ai/scene/CarScene$Type;

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Landroid/car/xpeng/ai/scene/CarScene$1;

    invoke-direct {v0}, Landroid/car/xpeng/ai/scene/CarScene$1;-><init>()V

    sput-object v0, Landroid/car/xpeng/ai/scene/CarScene;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/xpeng/ai/scene/CarScene;->mTimeStamp:J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneId:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/xpeng/ai/scene/CarScene;->mExitCode:I

    .line 158
    invoke-static {}, Landroid/car/xpeng/ai/scene/CarScene$Type;->values()[Landroid/car/xpeng/ai/scene/CarScene$Type;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneType:Landroid/car/xpeng/ai/scene/CarScene$Type;

    .line 159
    invoke-static {}, Landroid/car/xpeng/ai/scene/CarScene$Action;->values()[Landroid/car/xpeng/ai/scene/CarScene$Action;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneAction:Landroid/car/xpeng/ai/scene/CarScene$Action;

    .line 160
    invoke-static {}, Landroid/car/xpeng/ai/scene/CarScene$Position;->values()[Landroid/car/xpeng/ai/scene/CarScene$Position;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mScenePosition:Landroid/car/xpeng/ai/scene/CarScene$Position;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/xpeng/ai/scene/CarScene;->mTimeStamp:J

    .line 148
    iput-object p1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneId:Ljava/lang/String;

    .line 149
    sget-object p1, Landroid/car/xpeng/ai/scene/CarScene$Type;->TYPE_WELCOME:Landroid/car/xpeng/ai/scene/CarScene$Type;

    iput-object p1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneType:Landroid/car/xpeng/ai/scene/CarScene$Type;

    .line 150
    sget-object p1, Landroid/car/xpeng/ai/scene/CarScene$Action;->ACTION_NONE:Landroid/car/xpeng/ai/scene/CarScene$Action;

    iput-object p1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneAction:Landroid/car/xpeng/ai/scene/CarScene$Action;

    .line 151
    sget-object p1, Landroid/car/xpeng/ai/scene/CarScene$Position;->POSITION_NONE:Landroid/car/xpeng/ai/scene/CarScene$Position;

    iput-object p1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mScenePosition:Landroid/car/xpeng/ai/scene/CarScene$Position;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExitCode()I
    .locals 1

    .line 236
    iget v0, p0, Landroid/car/xpeng/ai/scene/CarScene;->mExitCode:I

    return v0
.end method

.method public getSceneAction()Landroid/car/xpeng/ai/scene/CarScene$Action;
    .locals 1

    .line 209
    iget-object v0, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneAction:Landroid/car/xpeng/ai/scene/CarScene$Action;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getScenePosition()Landroid/car/xpeng/ai/scene/CarScene$Position;
    .locals 1

    .line 218
    iget-object v0, p0, Landroid/car/xpeng/ai/scene/CarScene;->mScenePosition:Landroid/car/xpeng/ai/scene/CarScene$Position;

    return-object v0
.end method

.method public getSceneType()Landroid/car/xpeng/ai/scene/CarScene$Type;
    .locals 1

    .line 200
    iget-object v0, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneType:Landroid/car/xpeng/ai/scene/CarScene$Type;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 191
    iget-wide v0, p0, Landroid/car/xpeng/ai/scene/CarScene;->mTimeStamp:J

    return-wide v0
.end method

.method public setExitCode(I)Landroid/car/xpeng/ai/scene/CarScene;
    .locals 0

    .line 240
    iput p1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mExitCode:I

    return-object p0
.end method

.method public setSceneAction(Landroid/car/xpeng/ai/scene/CarScene$Action;)Landroid/car/xpeng/ai/scene/CarScene;
    .locals 0

    .line 213
    iput-object p1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneAction:Landroid/car/xpeng/ai/scene/CarScene$Action;

    return-object p0
.end method

.method public setSceneId(Ljava/lang/String;)Landroid/car/xpeng/ai/scene/CarScene;
    .locals 0

    .line 231
    iput-object p1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneId:Ljava/lang/String;

    return-object p0
.end method

.method public setScenePosition(Landroid/car/xpeng/ai/scene/CarScene$Position;)Landroid/car/xpeng/ai/scene/CarScene;
    .locals 0

    .line 222
    iput-object p1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mScenePosition:Landroid/car/xpeng/ai/scene/CarScene$Position;

    return-object p0
.end method

.method public setSceneType(Landroid/car/xpeng/ai/scene/CarScene$Type;)Landroid/car/xpeng/ai/scene/CarScene;
    .locals 0

    .line 204
    iput-object p1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneType:Landroid/car/xpeng/ai/scene/CarScene$Type;

    return-object p0
.end method

.method public setTimeStamp(J)Landroid/car/xpeng/ai/scene/CarScene;
    .locals 0

    .line 195
    iput-wide p1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mTimeStamp:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarScene{mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSceneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExitCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mExitCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSceneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneType:Landroid/car/xpeng/ai/scene/CarScene$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSceneAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneAction:Landroid/car/xpeng/ai/scene/CarScene$Action;

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
    .locals 2

    .line 165
    iget-wide v0, p0, Landroid/car/xpeng/ai/scene/CarScene;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget-object p2, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 167
    iget p2, p0, Landroid/car/xpeng/ai/scene/CarScene;->mExitCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object p2, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneType:Landroid/car/xpeng/ai/scene/CarScene$Type;

    invoke-virtual {p2}, Landroid/car/xpeng/ai/scene/CarScene$Type;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object p2, p0, Landroid/car/xpeng/ai/scene/CarScene;->mSceneAction:Landroid/car/xpeng/ai/scene/CarScene$Action;

    invoke-virtual {p2}, Landroid/car/xpeng/ai/scene/CarScene$Action;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object p2, p0, Landroid/car/xpeng/ai/scene/CarScene;->mScenePosition:Landroid/car/xpeng/ai/scene/CarScene$Position;

    invoke-virtual {p2}, Landroid/car/xpeng/ai/scene/CarScene$Position;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
