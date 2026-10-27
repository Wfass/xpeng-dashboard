.class public Landroid/car/xpeng/Scene;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/Scene$Action;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/xpeng/Scene;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAction:Landroid/car/xpeng/Scene$Action;

.field protected mCode:I

.field protected mSceneId:Ljava/lang/String;

.field protected mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Landroid/car/xpeng/Scene$1;

    invoke-direct {v0}, Landroid/car/xpeng/Scene$1;-><init>()V

    sput-object v0, Landroid/car/xpeng/Scene;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/car/xpeng/Scene;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget-wide v0, p1, Landroid/car/xpeng/Scene;->mTimeStamp:J

    iput-wide v0, p0, Landroid/car/xpeng/Scene;->mTimeStamp:J

    .line 71
    iget-object v0, p1, Landroid/car/xpeng/Scene;->mSceneId:Ljava/lang/String;

    iput-object v0, p0, Landroid/car/xpeng/Scene;->mSceneId:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Landroid/car/xpeng/Scene;->mAction:Landroid/car/xpeng/Scene$Action;

    iput-object v0, p0, Landroid/car/xpeng/Scene;->mAction:Landroid/car/xpeng/Scene$Action;

    .line 73
    iget p1, p1, Landroid/car/xpeng/Scene;->mCode:I

    iput p1, p0, Landroid/car/xpeng/Scene;->mCode:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/xpeng/Scene;->mTimeStamp:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/Scene;->mSceneId:Ljava/lang/String;

    .line 79
    invoke-static {}, Landroid/car/xpeng/Scene$Action;->values()[Landroid/car/xpeng/Scene$Action;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/car/xpeng/Scene;->mAction:Landroid/car/xpeng/Scene$Action;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/car/xpeng/Scene;->mCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/xpeng/Scene;->mTimeStamp:J

    .line 64
    iput-object p1, p0, Landroid/car/xpeng/Scene;->mSceneId:Ljava/lang/String;

    .line 65
    sget-object p1, Landroid/car/xpeng/Scene$Action;->EXIT:Landroid/car/xpeng/Scene$Action;

    iput-object p1, p0, Landroid/car/xpeng/Scene;->mAction:Landroid/car/xpeng/Scene$Action;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Landroid/car/xpeng/Scene;->mCode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Landroid/car/xpeng/Scene$Action;
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/car/xpeng/Scene;->mAction:Landroid/car/xpeng/Scene$Action;

    return-object v0
.end method

.method public getExitCode()I
    .locals 1

    .line 136
    iget v0, p0, Landroid/car/xpeng/Scene;->mCode:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/car/xpeng/Scene;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 109
    iget-wide v0, p0, Landroid/car/xpeng/Scene;->mTimeStamp:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 145
    sget-object v0, Landroid/car/xpeng/Scene$Action;->EXIT:Landroid/car/xpeng/Scene$Action;

    invoke-virtual {p0, v0}, Landroid/car/xpeng/Scene;->setAction(Landroid/car/xpeng/Scene$Action;)Landroid/car/xpeng/Scene;

    const-string v0, "init"

    .line 146
    invoke-virtual {p0, v0}, Landroid/car/xpeng/Scene;->setSceneId(Ljava/lang/String;)Landroid/car/xpeng/Scene;

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/Scene;->setTimeStamp(J)Landroid/car/xpeng/Scene;

    return-void
.end method

.method public setAction(Landroid/car/xpeng/Scene$Action;)Landroid/car/xpeng/Scene;
    .locals 0

    .line 131
    iput-object p1, p0, Landroid/car/xpeng/Scene;->mAction:Landroid/car/xpeng/Scene$Action;

    return-object p0
.end method

.method public setExitCode(I)Landroid/car/xpeng/Scene;
    .locals 0

    .line 140
    iput p1, p0, Landroid/car/xpeng/Scene;->mCode:I

    return-object p0
.end method

.method public setSceneId(Ljava/lang/String;)Landroid/car/xpeng/Scene;
    .locals 0

    .line 122
    iput-object p1, p0, Landroid/car/xpeng/Scene;->mSceneId:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeStamp(J)Landroid/car/xpeng/Scene;
    .locals 0

    .line 113
    iput-wide p1, p0, Landroid/car/xpeng/Scene;->mTimeStamp:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarScene{mSceneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/Scene;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/Scene;->mAction:Landroid/car/xpeng/Scene$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/car/xpeng/Scene;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/xpeng/Scene;->mCode:I

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

    .line 85
    iget-wide v0, p0, Landroid/car/xpeng/Scene;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-object p2, p0, Landroid/car/xpeng/Scene;->mSceneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Landroid/car/xpeng/Scene;->mAction:Landroid/car/xpeng/Scene$Action;

    invoke-virtual {p2}, Landroid/car/xpeng/Scene$Action;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget p2, p0, Landroid/car/xpeng/Scene;->mCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
