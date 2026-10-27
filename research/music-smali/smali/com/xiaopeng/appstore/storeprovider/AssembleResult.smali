.class public Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
.super Ljava/lang/Object;
.source "AssembleResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/AssembleResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_EXECUTE:I = 0x2712

.field public static final ERROR_FORCE_UPDATE:I = 0xc9

.field public static final ERROR_HTTP_WRONG:I = 0x12d

.field public static final ERROR_INVALID_ARGUMENT:I = 0x2711

.field public static final ERROR_NOT_DONE_AGREEMENT:I = 0x69

.field public static final ERROR_NOT_LOGIN:I = 0x65

.field public static final ERROR_REPEAT_TASK:I = 0x191

.field public static final ERROR_SUSPEND:I = 0xc9

.field public static final SUCCESS_CODE:I = 0x1


# instance fields
.field private final mCode:I

.field private final mDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mCode:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mDesc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssembleResult{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 51
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
