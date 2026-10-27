.class Lcom/android/car/CarProjectionService$ListenerInfo;
.super Lcom/android/car/BinderInterfaceContainer$BinderInterface;
.source "CarProjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarProjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/BinderInterfaceContainer$BinderInterface<",
        "Landroid/car/ICarProjectionCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilter:I


# direct methods
.method private constructor <init>(Lcom/android/car/CarProjectionService$ListenerHolder;Landroid/car/ICarProjectionCallback;I)V
    .locals 0
    .param p1, "holder"    # Lcom/android/car/CarProjectionService$ListenerHolder;
    .param p2, "binder"    # Landroid/car/ICarProjectionCallback;
    .param p3, "filter"    # I

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/car/BinderInterfaceContainer$BinderInterface;-><init>(Lcom/android/car/BinderInterfaceContainer;Landroid/os/IInterface;)V

    .line 242
    iput p3, p0, Lcom/android/car/CarProjectionService$ListenerInfo;->mFilter:I

    .line 243
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarProjectionService$ListenerHolder;Landroid/car/ICarProjectionCallback;ILcom/android/car/CarProjectionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarProjectionService$ListenerHolder;
    .param p2, "x1"    # Landroid/car/ICarProjectionCallback;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/car/CarProjectionService$1;

    .line 236
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/CarProjectionService$ListenerInfo;-><init>(Lcom/android/car/CarProjectionService$ListenerHolder;Landroid/car/ICarProjectionCallback;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/CarProjectionService$ListenerInfo;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarProjectionService$ListenerInfo;
    .param p1, "x1"    # I

    .line 236
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService$ListenerInfo;->hasFilter(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/car/CarProjectionService$ListenerInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService$ListenerInfo;
    .param p1, "x1"    # I

    .line 236
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService$ListenerInfo;->setFilter(I)V

    return-void
.end method

.method private declared-synchronized getFilter()I
    .locals 1

    monitor-enter p0

    .line 246
    :try_start_0
    iget v0, p0, Lcom/android/car/CarProjectionService$ListenerInfo;->mFilter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarProjectionService$ListenerInfo;
    throw v0
.end method

.method private hasFilter(I)Z
    .locals 1
    .param p1, "filter"    # I

    .line 250
    invoke-direct {p0}, Lcom/android/car/CarProjectionService$ListenerInfo;->getFilter()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized setFilter(I)V
    .locals 0
    .param p1, "filter"    # I

    monitor-enter p0

    .line 254
    :try_start_0
    iput p1, p0, Lcom/android/car/CarProjectionService$ListenerInfo;->mFilter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 253
    .end local p1    # "filter":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarProjectionService$ListenerInfo;
    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 259
    monitor-enter p0

    .line 260
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListenerInfo{filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarProjectionService$ListenerInfo;->mFilter:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
