.class Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;
.super Ljava/lang/Object;
.source "ObservableRecyclerView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_STATE:Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Landroid/util/SparseIntArray;

.field g:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 451
    new-instance v0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState$1;

    invoke-direct {v0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->EMPTY_STATE:Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;

    .line 531
    new-instance v0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState$2;

    invoke-direct {v0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 455
    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->b:I

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->g:Landroid/os/Parcelable;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 455
    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->b:I

    .line 484
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->EMPTY_STATE:Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;

    :goto_0
    iput-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->g:Landroid/os/Parcelable;

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->a:I

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->b:I

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->c:I

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->d:I

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->e:I

    .line 492
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->f:Landroid/util/SparseIntArray;

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 498
    iget-object v4, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$1;)V
    .locals 0

    .line 450
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 455
    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->b:I

    .line 475
    sget-object v0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->EMPTY_STATE:Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->g:Landroid/os/Parcelable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$1;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Parcelable;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->g:Landroid/os/Parcelable;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->g:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 512
    iget p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget-object p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->f:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    .line 518
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_1

    :goto_1
    if-ge v0, p2, :cond_1

    .line 521
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
