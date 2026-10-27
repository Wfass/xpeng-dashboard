.class public final Lcom/qiyi/video/qys/IQYSString;
.super Ljava/lang/Object;
.source "IQYSString.java"

# interfaces
.implements Lcom/qiyi/video/qys/IQYSStringWrapper;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qiyi/video/qys/IQYSString;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/qiyi/video/qys/IQYSString;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    new-instance v0, Lcom/qiyi/video/qys/IQYSString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/qiyi/video/qys/IQYSString;->EMPTY:Lcom/qiyi/video/qys/IQYSString;

    .line 43
    new-instance v0, Lcom/qiyi/video/qys/IQYSString$1;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSString$1;-><init>()V

    sput-object v0, Lcom/qiyi/video/qys/IQYSString;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSString;->mValue:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/qiyi/video/qys/IQYSString;->mValue:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/qiyi/video/qys/IQYSString;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiyi/video/qys/IQYSString;->mValue:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/qiyi/video/qys/IQYSString;->mValue:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qiyi/video/qys/IQYSString;->mValue:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 36
    iget-object v0, p0, Lcom/qiyi/video/qys/IQYSString;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
