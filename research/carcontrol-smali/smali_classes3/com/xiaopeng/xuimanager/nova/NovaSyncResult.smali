.class public Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;
.super Ljava/lang/Object;
.source "NovaSyncResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAIL_REASON_DOWNLOAD:I = 0x2

.field public static final FAIL_REASON_PRESET_DATA_FORMAT:I = 0x3

.field public static final FAIL_REASON_QUERY_REMOTE:I = 0x1


# instance fields
.field private aborted:Z

.field public addCount:I

.field public deleteCount:I

.field public failReason:I

.field public infoUpdateCount:I

.field private success:Z

.field public updateCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->addCount:I

    .line 13
    iput v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->deleteCount:I

    .line 14
    iput v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->updateCount:I

    .line 15
    iput v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->infoUpdateCount:I

    .line 17
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->aborted:Z

    .line 18
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->success:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->addCount:I

    .line 13
    iput v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->deleteCount:I

    .line 14
    iput v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->updateCount:I

    .line 15
    iput v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->infoUpdateCount:I

    .line 17
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->aborted:Z

    .line 18
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->success:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->addCount:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->deleteCount:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->updateCount:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->infoUpdateCount:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->aborted:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->success:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->failReason:I

    return-void
.end method

.method private static failReasonToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "(Unknown)"

    return-object p0

    :cond_0
    const-string p0, "(FAIL_REASON_PRESET_DATA_FORMAT)"

    return-object p0

    :cond_1
    const-string p0, "(FAIL_REASON_DOWNLOAD)"

    return-object p0

    :cond_2
    const-string p0, "(FAIL_REASON_QUERY_REMOTE)"

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFailReason()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->failReason:I

    return v0
.end method

.method public isAborted()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->aborted:Z

    return v0
.end method

.method public isChanged()Z
    .locals 2

    .line 42
    iget v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->addCount:I

    iget v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->updateCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->deleteCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->infoUpdateCount:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->aborted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->success:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->addCount:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->deleteCount:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->updateCount:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->infoUpdateCount:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->aborted:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->success:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->failReason:I

    return-void
.end method

.method public setAborted(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->aborted:Z

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->success:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NovaSyncResult{addCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->addCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deleteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->deleteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->updateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", infoUpdateCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->infoUpdateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aborted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->aborted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->failReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->failReason:I

    .line 54
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->failReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 81
    iget p2, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->addCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget p2, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->deleteCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget p2, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->updateCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget p2, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->infoUpdateCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-boolean p2, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->aborted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 86
    iget-boolean p2, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->success:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 87
    iget p2, p0, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;->failReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
