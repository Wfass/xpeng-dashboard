.class Lcom/android/car/CallbackStatistics$ProcessInfo;
.super Ljava/lang/Object;
.source "CallbackStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CallbackStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInfo"
.end annotation


# instance fields
.field private mListener:Landroid/os/IBinder;

.field private mPid:I

.field private final mProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "binder"    # Landroid/os/IBinder;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mProcessName:Ljava/lang/String;

    .line 198
    iput p2, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mPid:I

    .line 199
    iput-object p3, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mListener:Landroid/os/IBinder;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CallbackStatistics$ProcessInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CallbackStatistics$ProcessInfo;

    .line 191
    iget v0, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mPid:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/car/CallbackStatistics$ProcessInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CallbackStatistics$ProcessInfo;
    .param p1, "x1"    # I

    .line 191
    iput p1, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mPid:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/car/CallbackStatistics$ProcessInfo;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CallbackStatistics$ProcessInfo;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 191
    iput-object p1, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mListener:Landroid/os/IBinder;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 209
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 210
    return v0

    .line 212
    :cond_0
    instance-of v1, p1, Lcom/android/car/CallbackStatistics$ProcessInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 213
    move-object v1, p1

    check-cast v1, Lcom/android/car/CallbackStatistics$ProcessInfo;

    .line 214
    .local v1, "that":Lcom/android/car/CallbackStatistics$ProcessInfo;
    iget-object v3, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mProcessName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/car/CallbackStatistics$ProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mPid:I

    .line 215
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lcom/android/car/CallbackStatistics$ProcessInfo;->mPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mListener:Landroid/os/IBinder;

    iget-object v4, v1, Lcom/android/car/CallbackStatistics$ProcessInfo;->mListener:Landroid/os/IBinder;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 218
    .end local v1    # "that":Lcom/android/car/CallbackStatistics$ProcessInfo;
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 223
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mProcessName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mListener:Landroid/os/IBinder;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CallbackStatistics$ProcessInfo;->mListener:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
