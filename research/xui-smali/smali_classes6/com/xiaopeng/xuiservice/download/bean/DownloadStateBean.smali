.class public Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;
.super Ljava/lang/Object;
.source "DownloadStateBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mByteTillNow:J

.field private mCompletedFileUri:Ljava/lang/String;

.field private mErrorMessage:Ljava/lang/String;

.field private mFileUri:Ljava/lang/String;

.field private mPercentage:F

.field private mTaskId:J

.field private mTotalBytes:J

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "taskId"    # J
    .param p4, "fileUri"    # Ljava/lang/String;
    .param p5, "totalBytes"    # J
    .param p7, "percentage"    # F
    .param p8, "byteTillNow"    # J
    .param p10, "completedFileUri"    # Ljava/lang/String;
    .param p11, "errorMessage"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mType:I

    .line 21
    iput-wide p2, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mTaskId:J

    .line 22
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mFileUri:Ljava/lang/String;

    .line 23
    iput-wide p5, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mTotalBytes:J

    .line 24
    iput p7, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mPercentage:F

    .line 25
    iput-wide p8, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mByteTillNow:J

    .line 26
    iput-object p10, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mCompletedFileUri:Ljava/lang/String;

    .line 27
    iput-object p11, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mErrorMessage:Ljava/lang/String;

    .line 28
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getByteTillNow()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mByteTillNow:J

    return-wide v0
.end method

.method public getCompletedFileUri()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mCompletedFileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUri()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mFileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentage()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mPercentage:F

    return v0
.end method

.method public getTaskId()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mTaskId:J

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mTotalBytes:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mType:I

    return v0
.end method

.method public setByteTillNow(J)V
    .locals 0
    .param p1, "byteTillNow"    # J

    .line 81
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mByteTillNow:J

    .line 82
    return-void
.end method

.method public setCompletedFileUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "completedFileUri"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mCompletedFileUri:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mErrorMessage:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setFileUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileUri"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mFileUri:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPercentage(F)V
    .locals 0
    .param p1, "percentage"    # F

    .line 73
    iput p1, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mPercentage:F

    .line 74
    return-void
.end method

.method public setTaskId(J)V
    .locals 0
    .param p1, "taskId"    # J

    .line 49
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mTaskId:J

    .line 50
    return-void
.end method

.method public setTotalBytes(J)V
    .locals 0
    .param p1, "totalBytes"    # J

    .line 65
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mTotalBytes:J

    .line 66
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 41
    iput p1, p0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->mType:I

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    return-void
.end method
