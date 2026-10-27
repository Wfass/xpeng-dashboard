.class public final Lcom/qiyi/video/qys/IQYSResponse;
.super Ljava/lang/Object;
.source "IQYSResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qiyi/video/qys/IQYSResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCode:I

.field public mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

.field public mRealRequest:Lcom/qiyi/video/qys/IQYSRequest;

.field public mRequest:Lcom/qiyi/video/qys/IQYSRequest;

.field public mResult:Lcom/qiyi/video/qys/IQYSStringWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/qiyi/video/qys/IQYSResponse$1;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSResponse$1;-><init>()V

    sput-object v0, Lcom/qiyi/video/qys/IQYSResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/qiyi/video/qys/IQYSString;->EMPTY:Lcom/qiyi/video/qys/IQYSString;

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 9
    sget-object v0, Lcom/qiyi/video/qys/IQYSString;->EMPTY:Lcom/qiyi/video/qys/IQYSString;

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mResult:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 35
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/qiyi/video/qys/IQYSString;->EMPTY:Lcom/qiyi/video/qys/IQYSString;

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 9
    sget-object v0, Lcom/qiyi/video/qys/IQYSString;->EMPTY:Lcom/qiyi/video/qys/IQYSString;

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mResult:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 39
    const-class v0, Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qiyi/video/qys/IQYSStringWrapper;

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 40
    const-class v0, Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qiyi/video/qys/IQYSStringWrapper;

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mResult:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 41
    const-class v0, Lcom/qiyi/video/qys/IQYSRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qiyi/video/qys/IQYSRequest;

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mRealRequest:Lcom/qiyi/video/qys/IQYSRequest;

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 29
    const-class v0, Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qiyi/video/qys/IQYSStringWrapper;

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 30
    const-class v0, Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qiyi/video/qys/IQYSStringWrapper;

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mResult:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 31
    const-class v0, Lcom/qiyi/video/qys/IQYSRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qiyi/video/qys/IQYSRequest;

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mRealRequest:Lcom/qiyi/video/qys/IQYSRequest;

    .line 32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 21
    iget v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 23
    iget-object v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mResult:Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    iget-object v0, p0, Lcom/qiyi/video/qys/IQYSResponse;->mRealRequest:Lcom/qiyi/video/qys/IQYSRequest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 25
    return-void
.end method
