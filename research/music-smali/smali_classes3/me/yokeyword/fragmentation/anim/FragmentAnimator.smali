.class public Lme/yokeyword/fragmentation/anim/FragmentAnimator;
.super Ljava/lang/Object;
.source "FragmentAnimator.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lme/yokeyword/fragmentation/anim/FragmentAnimator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lme/yokeyword/fragmentation/anim/FragmentAnimator$1;

    invoke-direct {v0}, Lme/yokeyword/fragmentation/anim/FragmentAnimator$1;-><init>()V

    sput-object v0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->a:I

    .line 31
    iput p2, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->b:I

    .line 32
    iput p3, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->c:I

    .line 33
    iput p4, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->d:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->a:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->b:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->c:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->d:I

    return-void
.end method


# virtual methods
.method public a()Lme/yokeyword/fragmentation/anim/FragmentAnimator;
    .locals 5

    .line 37
    new-instance v0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    invoke-virtual {p0}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->b()I

    move-result v1

    invoke-virtual {p0}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->c()I

    move-result v2

    invoke-virtual {p0}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->d()I

    move-result v3

    invoke-virtual {p0}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->e()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;-><init>(IIII)V

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 60
    iget v0, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 69
    iget v0, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 81
    iget v0, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->c:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .line 90
    iget v0, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->d:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 105
    iget p2, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget p2, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget p2, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget p2, p0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
