.class public Landroidx/databinding/ObservableChar;
.super Landroidx/databinding/b;
.source "ObservableChar.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableChar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Landroidx/databinding/ObservableChar$1;

    invoke-direct {v0}, Landroidx/databinding/ObservableChar$1;-><init>()V

    sput-object v0, Landroidx/databinding/ObservableChar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroidx/databinding/b;-><init>()V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroidx/databinding/b;-><init>()V

    .line 53
    iput-char p1, p0, Landroidx/databinding/ObservableChar;->mValue:C

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 99
    iget-char p2, p0, Landroidx/databinding/ObservableChar;->mValue:C

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
