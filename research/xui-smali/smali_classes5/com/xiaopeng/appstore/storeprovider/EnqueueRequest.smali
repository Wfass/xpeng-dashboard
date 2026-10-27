.class public Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
.super Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;
.source "EnqueueRequest.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContinuation:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;-><init>(Landroid/os/Parcel;)V

    .line 39
    const-class v0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;->mContinuation:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;)V
    .locals 1
    .param p1, "continuation"    # Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "continuation"
        }
    .end annotation

    .line 23
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;-><init>(I)V

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;->mContinuation:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getContinuation()Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;->mContinuation:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnqueueRequest{contin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;->mContinuation:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 44
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;->mContinuation:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 46
    return-void
.end method
