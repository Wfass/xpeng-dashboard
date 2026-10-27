.class final Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;
.super Ljava/lang/Object;
.source "CarUxRestrictionsConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RestrictionsPerSpeedRange"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mMode:Ljava/lang/String;

.field final mReqOpt:Z

.field final mRestrictions:I

.field final mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1163
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange$1;

    invoke-direct {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange$1;-><init>()V

    sput-object v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mMode:Ljava/lang/String;

    .line 1183
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    .line 1184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    .line 1187
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1189
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 1190
    new-instance v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-direct {v1, v0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;-><init>(FF)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1192
    :goto_0
    iput-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)V
    .locals 1

    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Driving optimization is not required but UX restrictions is required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const-string v0, "mode must not be null"

    .line 1119
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mMode:Ljava/lang/String;

    .line 1120
    iput-boolean p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    .line 1121
    iput p3, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    .line 1122
    iput-object p4, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    return-void
.end method

.method constructor <init>(ZI)V
    .locals 2

    const-string v0, "baseline"

    const/4 v1, 0x0

    .line 1110
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;-><init>(Ljava/lang/String;ZILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1139
    instance-of v2, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    if-nez v2, :cond_1

    goto :goto_1

    .line 1142
    :cond_1
    check-cast p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 1143
    iget-object v2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mMode:Ljava/lang/String;

    iget-object v3, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mMode:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    iget-boolean v3, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    iget v3, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    iget-object p1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    .line 1146
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getSpeedRange()Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;
    .locals 1

    .line 1126
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1131
    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mMode:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Mode is "

    .line 1152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Requires DO? "

    .line 1153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Restrictions: "

    .line 1154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Speed range: "

    .line 1155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1156
    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    .line 1157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1197
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1198
    iget-boolean p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1199
    iget p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1202
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-eqz p2, :cond_1

    .line 1203
    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$400(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1204
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$500(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_1
    return-void
.end method
