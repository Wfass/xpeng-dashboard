.class public Lcom/xiaopeng/aicabin/AParceledListSlice;
.super Ljava/lang/Object;
.source "AParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/xiaopeng/aicabin/AParceledListSlice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAX_IPC_SIZE:I

.field private static final TAG:Ljava/lang/String; = "AiCabin_ParceledListSlice"


# instance fields
.field private mInlineCountLimit:I

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaopeng/aicabin/AParceledListSlice;->getIpcMaxSize()I

    move-result v0

    sput v0, Lcom/xiaopeng/aicabin/AParceledListSlice;->MAX_IPC_SIZE:I

    .line 199
    new-instance v0, Lcom/xiaopeng/aicabin/AParceledListSlice$b;

    invoke-direct {v0}, Lcom/xiaopeng/aicabin/AParceledListSlice$b;-><init>()V

    sput-object v0, Lcom/xiaopeng/aicabin/AParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 8

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 8
    iput v0, p0, Lcom/xiaopeng/aicabin/AParceledListSlice;->mInlineCountLimit:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/aicabin/AParceledListSlice;->mList:Ljava/util/List;

    if-gtz v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/aicabin/AParceledListSlice;->readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 30
    :cond_1
    invoke-direct {p0, v1, p1, p2, v4}, Lcom/xiaopeng/aicabin/AParceledListSlice;->readVerifyAndAddElement(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v2, v0, :cond_3

    return-void

    .line 37
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_2
    if-ge v2, v0, :cond_5

    .line 40
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 41
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 42
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    .line 44
    :try_start_0
    invoke-interface {p1, v7, v5, v6, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-ge v2, v0, :cond_4

    .line 49
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 50
    invoke-direct {p0, v1, v6, p2, v4}, Lcom/xiaopeng/aicabin/AParceledListSlice;->readVerifyAndAddElement(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 55
    :cond_4
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 56
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catch_0
    move-exception p1

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure retrieving array; only received "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AiCabin_ParceledListSlice"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/xiaopeng/aicabin/AParceledListSlice$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/aicabin/AParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lcom/xiaopeng/aicabin/AParceledListSlice;->mInlineCountLimit:I

    .line 6
    iput-object p1, p0, Lcom/xiaopeng/aicabin/AParceledListSlice;->mList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    .line 1
    sget v0, Lcom/xiaopeng/aicabin/AParceledListSlice;->MAX_IPC_SIZE:I

    return v0
.end method

.method public static synthetic access$100(Lcom/xiaopeng/aicabin/AParceledListSlice;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaopeng/aicabin/AParceledListSlice;->mList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaopeng/aicabin/AParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method private static getIpcMaxSize()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    :goto_0
    return v0
.end method

.method private readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 4
    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    return-object p1

    .line 6
    :cond_0
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    return-object p1
.end method

.method private readVerifyAndAddElement(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/aicabin/AParceledListSlice;->readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p4, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/xiaopeng/aicabin/AParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/aicabin/AParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p4
.end method

.method private static verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unparcel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in list of type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/AParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-interface {v3}, Landroid/os/Parcelable;->describeContents()I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/AParceledListSlice;->mList:Ljava/util/List;

    return-object v0
.end method

.method public readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lcom/xiaopeng/aicabin/ParcelableReflectionHelper;->readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object p1

    return-object p1
.end method

.method public setInlineCountLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaopeng/aicabin/AParceledListSlice;->mInlineCountLimit:I

    return-void
.end method

.method public writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeParcelableCreator(Landroid/os/Parcelable;Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p1}, Lcom/xiaopeng/aicabin/ParcelableReflectionHelper;->writeParcelableCreator(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/AParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/xiaopeng/aicabin/AParceledListSlice;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    iget-object v3, p0, Lcom/xiaopeng/aicabin/AParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/aicabin/AParceledListSlice;->writeParcelableCreator(Landroid/os/Parcelable;Landroid/os/Parcel;)V

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 9
    iget v4, p0, Lcom/xiaopeng/aicabin/AParceledListSlice;->mInlineCountLimit:I

    if-ge v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    sget v5, Lcom/xiaopeng/aicabin/AParceledListSlice;->MAX_IPC_SIZE:I

    if-ge v4, v5, :cond_0

    const/4 v4, 0x1

    .line 10
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object v4, p0, Lcom/xiaopeng/aicabin/AParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaopeng/aicabin/AParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 14
    invoke-virtual {p0, v4, p1, p2}, Lcom/xiaopeng/aicabin/AParceledListSlice;->writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-ge v3, v0, :cond_1

    .line 20
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    new-instance v2, Lcom/xiaopeng/aicabin/AParceledListSlice$a;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/xiaopeng/aicabin/AParceledListSlice$a;-><init>(Lcom/xiaopeng/aicabin/AParceledListSlice;ILjava/lang/Class;I)V

    .line 48
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_1
    return-void
.end method
