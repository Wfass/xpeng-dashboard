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

.field public static final ERROR_FORCE_UPDATE:I = 0xca

.field public static final ERROR_HTTP_WRONG:I = 0x12d

.field public static final ERROR_INTERNAL:I = 0x1869f

.field public static final ERROR_INVALID_ARGUMENT:I = 0x2711

.field public static final ERROR_NEED_CONFIRM:I = 0xcb

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

    .line 68
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "desc"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mCode:I

    .line 49
    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mDesc:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mCode:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mDesc:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static createFail(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 1
    .param p0, "code"    # I
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "desc"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createSuccess()Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 3

    .line 40
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    const-string v1, "Success"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mCode:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 2

    .line 81
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
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
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 59
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
