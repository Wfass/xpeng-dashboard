.class public Lcom/android/car/media/common/source/d;
.super Landroidx/lifecycle/b;
.source "MediaSourceViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/media/common/source/d$a;
    }
.end annotation


# static fields
.field private static a:[Lcom/android/car/media/common/source/d;


# instance fields
.field private b:Landroid/car/Car;

.field private c:Landroid/car/media/CarMediaManager;

.field private final d:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Lcom/android/car/media/common/source/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Lcom/android/car/media/common/source/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private final g:Landroid/car/media/CarMediaManager$MediaSourceChangedListener;

.field private final h:I

.field private final i:Lcom/android/car/media/common/source/d$a;

.field private final j:Lcom/android/car/media/common/source/a;

.field private final k:Lcom/android/car/media/common/source/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [Lcom/android/car/media/common/source/d;

    sput-object v0, Lcom/android/car/media/common/source/d;->a:[Lcom/android/car/media/common/source/d;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;I)V
    .locals 1

    .line 90
    new-instance v0, Lcom/android/car/media/common/source/d$1;

    invoke-direct {v0, p1}, Lcom/android/car/media/common/source/d$1;-><init>(Landroid/app/Application;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/media/common/source/d;-><init>(Landroid/app/Application;ILcom/android/car/media/common/source/d$a;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Application;ILcom/android/car/media/common/source/d$a;)V
    .locals 2

    .line 166
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/media/common/source/d;->d:Landroidx/lifecycle/r;

    .line 56
    invoke-static {v0}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/media/common/source/d;->e:Landroidx/lifecycle/r;

    .line 161
    iget-object v0, p0, Lcom/android/car/media/common/source/d;->e:Landroidx/lifecycle/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/car/media/common/source/-$$Lambda$xr2QympwZld2H0V5F3jZBoZGk18;

    invoke-direct {v1, v0}, Lcom/android/car/media/common/source/-$$Lambda$xr2QympwZld2H0V5F3jZBoZGk18;-><init>(Landroidx/lifecycle/r;)V

    iput-object v1, p0, Lcom/android/car/media/common/source/d;->k:Lcom/android/car/media/common/source/a$c;

    .line 167
    iput p2, p0, Lcom/android/car/media/common/source/d;->h:I

    .line 168
    iput-object p3, p0, Lcom/android/car/media/common/source/d;->i:Lcom/android/car/media/common/source/d$a;

    .line 169
    iget p2, p0, Lcom/android/car/media/common/source/d;->h:I

    invoke-direct {p0, p1, p2}, Lcom/android/car/media/common/source/d;->b(Landroid/app/Application;I)Landroid/car/Car;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/media/common/source/d;->b:Landroid/car/Car;

    .line 171
    iget-object p2, p0, Lcom/android/car/media/common/source/d;->k:Lcom/android/car/media/common/source/a$c;

    invoke-interface {p3, p1, p2}, Lcom/android/car/media/common/source/d$a;->a(Landroid/app/Application;Lcom/android/car/media/common/source/a$c;)Lcom/android/car/media/common/source/a;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/media/common/source/d;->j:Lcom/android/car/media/common/source/a;

    .line 172
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/car/media/common/source/d;->f:Landroid/os/Handler;

    .line 173
    new-instance p1, Lcom/android/car/media/common/source/-$$Lambda$d$UTk6zWI-QU0nIB9qCHku3lL2YCs;

    invoke-direct {p1, p0}, Lcom/android/car/media/common/source/-$$Lambda$d$UTk6zWI-QU0nIB9qCHku3lL2YCs;-><init>(Lcom/android/car/media/common/source/d;)V

    iput-object p1, p0, Lcom/android/car/media/common/source/d;->g:Landroid/car/media/CarMediaManager$MediaSourceChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/android/car/media/common/source/d;)Landroid/car/Car;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/car/media/common/source/d;->b:Landroid/car/Car;

    return-object p0
.end method

.method static synthetic a(Lcom/android/car/media/common/source/d;Landroid/car/media/CarMediaManager;)Landroid/car/media/CarMediaManager;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/car/media/common/source/d;->c:Landroid/car/media/CarMediaManager;

    return-object p1
.end method

.method public static a(Landroid/app/Application;I)Lcom/android/car/media/common/source/d;
    .locals 2

    .line 78
    sget-object v0, Lcom/android/car/media/common/source/d;->a:[Lcom/android/car/media/common/source/d;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/android/car/media/common/source/d;

    invoke-direct {v1, p0, p1}, Lcom/android/car/media/common/source/d;-><init>(Landroid/app/Application;I)V

    aput-object v1, v0, p1

    .line 81
    :cond_0
    sget-object p0, Lcom/android/car/media/common/source/d;->a:[Lcom/android/car/media/common/source/d;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private a(I)V
    .locals 2

    .line 144
    iget-object p1, p0, Lcom/android/car/media/common/source/d;->c:Landroid/car/media/CarMediaManager;

    if-eqz p1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/car/media/common/source/d;->g:Landroid/car/media/CarMediaManager$MediaSourceChangedListener;

    iget v1, p0, Lcom/android/car/media/common/source/d;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/car/media/CarMediaManager;->addMediaSourceListener(Landroid/car/media/CarMediaManager$MediaSourceChangedListener;I)V

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get ========> componentName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/car/media/common/source/d;->c:Landroid/car/media/CarMediaManager;

    iget v1, p0, Lcom/android/car/media/common/source/d;->h:I

    invoke-virtual {v0, v1}, Landroid/car/media/CarMediaManager;->getMediaSource(I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSourceViewModel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p1, p0, Lcom/android/car/media/common/source/d;->i:Lcom/android/car/media/common/source/d$a;

    iget-object v0, p0, Lcom/android/car/media/common/source/d;->c:Landroid/car/media/CarMediaManager;

    iget v1, p0, Lcom/android/car/media/common/source/d;->h:I

    invoke-virtual {v0, v1}, Landroid/car/media/CarMediaManager;->getMediaSource(I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/car/media/common/source/d$a;->a(Landroid/content/ComponentName;)Lcom/android/car/media/common/source/b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/android/car/media/common/source/d;->a(Lcom/android/car/media/common/source/b;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 151
    invoke-direct {p0, p1}, Lcom/android/car/media/common/source/d;->b(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    .line 154
    invoke-direct {p0, p1}, Lcom/android/car/media/common/source/d;->b(I)V

    :goto_0
    return-void
.end method

.method private synthetic a(Landroid/content/ComponentName;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/car/media/common/source/d;->f:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/media/common/source/-$$Lambda$d$KtWypMvnP9z_z_GQ4jOH-ZPUfKA;

    invoke-direct {v1, p0, p1}, Lcom/android/car/media/common/source/-$$Lambda$d$KtWypMvnP9z_z_GQ4jOH-ZPUfKA;-><init>(Lcom/android/car/media/common/source/d;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/android/car/media/common/source/b;I)V
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get ========> source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaSourceViewModel"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p2, p0, Lcom/android/car/media/common/source/d;->d:Landroidx/lifecycle/r;

    invoke-virtual {p2}, Landroidx/lifecycle/r;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/car/media/common/source/b;

    .line 230
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object p2, p0, Lcom/android/car/media/common/source/d;->d:Landroidx/lifecycle/r;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 239
    iget-object p2, p0, Lcom/android/car/media/common/source/d;->j:Lcom/android/car/media/common/source/a;

    invoke-virtual {p2, p1}, Lcom/android/car/media/common/source/a;->a(Lcom/android/car/media/common/source/b;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/car/media/common/source/d;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/car/media/common/source/d;->a(I)V

    return-void
.end method

.method private b(Landroid/app/Application;I)Landroid/car/Car;
    .locals 1

    .line 121
    new-instance v0, Lcom/android/car/media/common/source/d$2;

    invoke-direct {v0, p0, p2}, Lcom/android/car/media/common/source/d$2;-><init>(Lcom/android/car/media/common/source/d;I)V

    invoke-static {p1, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/media/common/source/d;->b:Landroid/car/Car;

    .line 139
    iget-object p1, p0, Lcom/android/car/media/common/source/d;->b:Landroid/car/Car;

    invoke-virtual {p1}, Landroid/car/Car;->connect()V

    .line 140
    iget-object p1, p0, Lcom/android/car/media/common/source/d;->b:Landroid/car/Car;

    return-object p1
.end method

.method static synthetic b(Lcom/android/car/media/common/source/d;)Landroid/car/media/CarMediaManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/car/media/common/source/d;->c:Landroid/car/media/CarMediaManager;

    return-object p0
.end method

.method private b(I)V
    .locals 4

    const-string v0, "com.android.bluetooth/com.android.bluetooth.avrcpcontroller.BluetoothMediaBrowserService"

    .line 179
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/android/car/media/common/source/d;->i:Lcom/android/car/media/common/source/d$a;

    invoke-interface {v1, v0}, Lcom/android/car/media/common/source/d$a;->a(Landroid/content/ComponentName;)Lcom/android/car/media/common/source/b;

    move-result-object v1

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ========> mediaSrcComp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",,src2,,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaSourceViewModel"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0, v1, p1}, Lcom/android/car/media/common/source/d;->a(Lcom/android/car/media/common/source/b;I)V

    return-void
.end method

.method private synthetic b(Landroid/content/ComponentName;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/car/media/common/source/d;->i:Lcom/android/car/media/common/source/d$a;

    invoke-interface {v0, p1}, Lcom/android/car/media/common/source/d$a;->a(Landroid/content/ComponentName;)Lcom/android/car/media/common/source/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/car/media/common/source/d;->a(Lcom/android/car/media/common/source/b;I)V

    return-void
.end method

.method public static synthetic lambda$KtWypMvnP9z_z_GQ4jOH-ZPUfKA(Lcom/android/car/media/common/source/d;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/media/common/source/d;->b(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic lambda$UTk6zWI-QU0nIB9qCHku3lL2YCs(Lcom/android/car/media/common/source/d;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/media/common/source/d;->a(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public b()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/car/media/common/source/b;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/android/car/media/common/source/d;->d:Landroidx/lifecycle/r;

    return-object v0
.end method

.method public c()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/car/media/common/source/a$b;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/car/media/common/source/d;->e:Landroidx/lifecycle/r;

    return-object v0
.end method

.method protected l_()V
    .locals 1

    .line 187
    invoke-super {p0}, Landroidx/lifecycle/b;->l_()V

    .line 188
    iget-object v0, p0, Lcom/android/car/media/common/source/d;->b:Landroid/car/Car;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    :cond_0
    return-void
.end method
