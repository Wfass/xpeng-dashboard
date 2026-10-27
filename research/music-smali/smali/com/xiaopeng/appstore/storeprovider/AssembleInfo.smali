.class public Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
.super Ljava/lang/Object;
.source "AssembleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_CANCELLED:I = 0x47e

.field public static final STATE_COMPLETE:I = 0x44c

.field public static final STATE_ERROR:I = 0x3e8

.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_PAUSED:I = 0xc8

.field public static final STATE_PENDING:I = 0x2

.field public static final STATE_RUNNING:I = 0x64

.field public static final STATE_RUNNING_DOWNLOAD:I = 0x65

.field public static final STATE_RUNNING_INSTALLING:I = 0x66

.field public static final STATE_UNKNOWN:I


# instance fields
.field private mCanPause:I

.field private mCanStop:I

.field private final mExtra:Landroid/os/Bundle;

.field private final mKey:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNotificationVisibility:I

.field private mProgress:F

.field private final mResourceType:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 231
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    const/16 v0, 0x64

    .line 99
    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mKey:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mResourceType:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mName:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mProgress:F

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanPause:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanStop:I

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x47e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "STATE_RUNNING_INSTALLING"

    return-object p0

    :pswitch_1
    const-string p0, "STATE_RUNNING_DOWNLOAD"

    return-object p0

    :pswitch_2
    const-string p0, "STATE_RUNNING"

    return-object p0

    :cond_0
    const-string p0, "STATE_CANCELLED"

    return-object p0

    :cond_1
    const-string p0, "STATE_COMPLETE"

    return-object p0

    :cond_2
    const-string p0, "STATE_ERROR"

    return-object p0

    :cond_3
    const-string p0, "STATE_PAUSED"

    return-object p0

    :cond_4
    const-string p0, "STATE_PENDING"

    return-object p0

    :cond_5
    const-string p0, "STATE_LOADING"

    return-object p0

    :cond_6
    const-string p0, "STATE_UNKNOWN"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssembleInfo{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", resType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mResourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    .line 209
    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canPause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanPause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanStop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 250
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mResourceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mProgress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 255
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanPause:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanStop:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
