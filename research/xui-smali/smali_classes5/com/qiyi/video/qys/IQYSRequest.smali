.class public final Lcom/qiyi/video/qys/IQYSRequest;
.super Ljava/lang/Object;
.source "IQYSRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qiyi/video/qys/IQYSRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCmd:Lcom/qiyi/video/qys/IQYSStringWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/qiyi/video/qys/IQYSRequest$1;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSRequest$1;-><init>()V

    sput-object v0, Lcom/qiyi/video/qys/IQYSRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qiyi/video/qys/IQYSStringWrapper;

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSRequest;->mCmd:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/qiyi/video/qys/IQYSStringWrapper;)V
    .locals 0
    .param p1, "cmd"    # Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/qiyi/video/qys/IQYSRequest;->mCmd:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/qiyi/video/qys/IQYSString;

    invoke-direct {v0, p1}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSRequest;->mCmd:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 12
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 19
    const-class v0, Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qiyi/video/qys/IQYSStringWrapper;

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSRequest;->mCmd:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 20
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 29
    iget-object v0, p0, Lcom/qiyi/video/qys/IQYSRequest;->mCmd:Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 30
    return-void
.end method
