.class public Layj;
.super Landroidx/lifecycle/b;
.source "PlaybackViewModel.java"

# interfaces
.implements Layk;
.implements Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;
.implements Lcom/xiaopeng/musicradio/model/bluetooth/j$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layj$c;,
        Layj$d;,
        Layj$b;,
        Layj$a;
    }
.end annotation


# static fields
.field private static b:[Layj;

.field private static final s:Landroid/media/MediaMetadata;


# instance fields
.field private final A:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final B:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Layj$c;",
            ">;"
        }
    .end annotation
.end field

.field private final C:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Layj$d;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Laie;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Laie;",
            ">;"
        }
    .end annotation
.end field

.field private final F:Layj$a;

.field private G:Layj$c;

.field private H:Z

.field private I:J

.field private J:J

.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Lcom/xiaopeng/musicradio/model/bluetooth/e;

.field private f:Lcom/xiaopeng/musicradio/model/bluetooth/f;

.field private g:Lcom/xiaopeng/musicradio/model/bluetooth/j;

.field private h:Lio/reactivex/disposables/Disposable;

.field private i:Z

.field private j:I

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/musicradio/model/bluetooth/g;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/musicradio/model/bluetooth/h;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/musicradio/model/bluetooth/i;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Z

.field private final t:Layj$b;

.field private final u:Landroidx/lifecycle/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/s<",
            "Lcom/android/car/media/common/source/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lcom/android/car/media/common/source/c$a;

.field private final w:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Lcom/android/car/media/common/source/c;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Ljava/util/List<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field private final z:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 128
    new-array v0, v0, [Layj;

    sput-object v0, Layj;->b:[Layj;

    .line 548
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    sput-object v0, Layj;->s:Landroid/media/MediaMetadata;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;I)V
    .locals 1

    .line 592
    invoke-static {p1, p2}, Lcom/android/car/media/common/source/d;->a(Landroid/app/Application;I)Lcom/android/car/media/common/source/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/car/media/common/source/d;->c()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Layj$9;

    invoke-direct {v0, p1}, Layj$9;-><init>(Landroid/app/Application;)V

    invoke-direct {p0, p1, p2, v0}, Layj;-><init>(Landroid/app/Application;Landroidx/lifecycle/LiveData;Layj$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/LiveData;Layj$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/car/media/common/source/a$b;",
            ">;",
            "Layj$a;",
            ")V"
        }
    .end annotation

    .line 605
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Layj;->d:Z

    .line 144
    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;-><init>()V

    iput-object v1, p0, Layj;->e:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    .line 145
    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/f;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;-><init>()V

    iput-object v1, p0, Layj;->f:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    .line 146
    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/j;-><init>()V

    iput-object v1, p0, Layj;->g:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    const/4 v1, -0x1

    .line 240
    iput v1, p0, Layj;->j:I

    .line 267
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Layj;->k:Ljava/util/Set;

    .line 268
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Layj;->l:Ljava/util/Set;

    .line 269
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Layj;->m:Ljava/util/Set;

    .line 452
    iput v1, p0, Layj;->q:I

    .line 460
    iput-boolean v0, p0, Layj;->r:Z

    .line 550
    new-instance v1, Layj$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Layj$b;-><init>(Layj;Layj$1;)V

    iput-object v1, p0, Layj;->t:Layj$b;

    .line 552
    new-instance v1, Layj$7;

    invoke-direct {v1, p0}, Layj$7;-><init>(Layj;)V

    iput-object v1, p0, Layj;->u:Landroidx/lifecycle/s;

    .line 561
    invoke-static {v2}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v1

    iput-object v1, p0, Layj;->w:Landroidx/lifecycle/r;

    .line 563
    invoke-static {v2}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v1

    iput-object v1, p0, Layj;->x:Landroidx/lifecycle/r;

    .line 566
    invoke-static {v2}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v1

    iput-object v1, p0, Layj;->y:Landroidx/lifecycle/r;

    .line 568
    invoke-static {v2}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v1

    iput-object v1, p0, Layj;->z:Landroidx/lifecycle/r;

    .line 570
    invoke-static {v2}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v1

    iput-object v1, p0, Layj;->A:Landroidx/lifecycle/r;

    .line 572
    invoke-static {v2}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v1

    iput-object v1, p0, Layj;->B:Landroidx/lifecycle/r;

    .line 574
    invoke-static {v2}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v1

    iput-object v1, p0, Layj;->C:Landroidx/lifecycle/r;

    .line 576
    invoke-static {v2}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v1

    iput-object v1, p0, Layj;->D:Landroidx/lifecycle/r;

    .line 578
    iget-object v1, p0, Layj;->C:Landroidx/lifecycle/r;

    new-instance v2, Layj$8;

    invoke-direct {v2, p0}, Layj$8;-><init>(Layj;)V

    .line 579
    invoke-static {v1, v2}, Landroidx/lifecycle/y;->b(Landroidx/lifecycle/LiveData;Lz;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Layj;->E:Landroidx/lifecycle/LiveData;

    .line 962
    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Layj;->a:Ljava/util/Set;

    .line 964
    iget-object v1, p0, Layj;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 965
    iget-object v0, p0, Layj;->a:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 966
    iget-object v0, p0, Layj;->a:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 967
    iget-object v0, p0, Layj;->a:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object v0, p0, Layj;->a:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 969
    iget-object v0, p0, Layj;->a:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 970
    iget-object v0, p0, Layj;->a:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 971
    iget-object v0, p0, Layj;->a:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v0, p0, Layj;->a:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x1

    .line 976
    iput-wide v0, p0, Layj;->I:J

    .line 977
    iput-wide v0, p0, Layj;->J:J

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get ==> browsingState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",factory:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",observer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Layj;->u:Landroidx/lifecycle/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    iput-object p3, p0, Layj;->F:Layj$a;

    .line 608
    new-instance p3, Lcom/android/car/media/common/source/c$a;

    invoke-direct {p3, p1}, Lcom/android/car/media/common/source/c$a;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Layj;->v:Lcom/android/car/media/common/source/c$a;

    .line 609
    iget-object p1, p0, Layj;->u:Landroidx/lifecycle/s;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method static synthetic a(Layj;I)I
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Layj;->c(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Layj;J)J
    .locals 0

    .line 121
    iput-wide p1, p0, Layj;->I:J

    return-wide p1
.end method

.method static synthetic a(Layj;Layj$c;)Layj$c;
    .locals 0

    .line 121
    iput-object p1, p0, Layj;->G:Layj$c;

    return-object p1
.end method

.method public static a(Landroid/app/Application;I)Layj;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get ============>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",,,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Layj;->b:[Layj;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Layj;

    invoke-direct {v1, p0, p1}, Layj;-><init>(Landroid/app/Application;I)V

    aput-object v1, v0, p1

    .line 139
    :cond_0
    sget-object p0, Layj;->b:[Layj;

    aget-object p0, p0, p1

    return-object p0
.end method

.method static synthetic a(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/f;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->f:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    return-object p0
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyProfileConnection ==>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",isConnected:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PlaybackViewModel"

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    iget-object p2, p0, Layj;->l:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/bluetooth/h;

    .line 471
    new-instance v1, Layj$4;

    invoke-direct {v1, p0, v0, p1, p3}, Layj$4;-><init>(Layj;Lcom/xiaopeng/musicradio/model/bluetooth/h;IZ)V

    invoke-static {v1}, Lbql;->j(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(JJ)V
    .locals 6

    .line 1084
    iget-object v0, p0, Layj;->g:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {p0}, Layj;->i()I

    move-result v3

    move-wide v1, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a(JIJ)V

    .line 1087
    invoke-virtual {p0}, Layj;->i()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 1089
    iget-object p1, p0, Layj;->g:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a()V

    :cond_0
    return-void
.end method

.method static synthetic a(Layj;II)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Layj;->b(II)V

    return-void
.end method

.method static synthetic a(Layj;JJ)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Layj;->a(JJ)V

    return-void
.end method

.method static synthetic a(Layj;Lcom/xiaopeng/musicradio/model/bluetooth/e;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Layj;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V
    .locals 1

    .line 1053
    new-instance v0, Layj$2;

    invoke-direct {v0, p0, p1}, Layj$2;-><init>(Layj;Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Layj;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Layj;->H:Z

    return p1
.end method

.method static synthetic b(Layj;I)I
    .locals 0

    .line 121
    iput p1, p0, Layj;->j:I

    return p1
.end method

.method static synthetic b(Layj;J)J
    .locals 0

    .line 121
    iput-wide p1, p0, Layj;->J:J

    return-wide p1
.end method

.method static synthetic b(Layj;)Layj$b;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->t:Layj$b;

    return-object p0
.end method

.method private b(II)V
    .locals 1

    .line 979
    iget-boolean v0, p0, Layj;->H:Z

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Layj;->h:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 981
    iget-object v0, p0, Layj;->h:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 984
    :cond_0
    new-instance v0, Layj$10;

    invoke-direct {v0, p0, p1, p2}, Layj$10;-><init>(Layj;II)V

    invoke-static {v0}, Lbql;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Layj;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Layj;->d:Z

    return p1
.end method

.method private c(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method static synthetic c(Layj;)Layj$a;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->F:Layj$a;

    return-object p0
.end method

.method private c(Z)V
    .locals 3

    .line 481
    iget-boolean v0, p0, Layj;->i:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 484
    :cond_0
    iput-boolean p1, p0, Layj;->i:Z

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",, mCallStateListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Layj;->k:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Layj;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/bluetooth/g;

    .line 488
    new-instance v2, Layj$5;

    invoke-direct {v2, p0, v1, p1}, Layj$5;-><init>(Layj;Lcom/xiaopeng/musicradio/model/bluetooth/g;Z)V

    invoke-static {v2}, Lbql;->j(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic c(Layj;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Layj;->c:Z

    return p1
.end method

.method static synthetic d(Layj;)Landroidx/lifecycle/r;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->B:Landroidx/lifecycle/r;

    return-object p0
.end method

.method private d(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method static synthetic e(Layj;)Layj$c;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->G:Layj$c;

    return-object p0
.end method

.method static synthetic f(Layj;)Ljava/util/Set;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->m:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic g(Layj;)Lcom/android/car/media/common/source/c$a;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->v:Lcom/android/car/media/common/source/c$a;

    return-object p0
.end method

.method static synthetic h(Layj;)Landroidx/lifecycle/r;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->w:Landroidx/lifecycle/r;

    return-object p0
.end method

.method static synthetic i(Layj;)Landroidx/lifecycle/r;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->x:Landroidx/lifecycle/r;

    return-object p0
.end method

.method static synthetic j(Layj;)Landroidx/lifecycle/r;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->C:Landroidx/lifecycle/r;

    return-object p0
.end method

.method static synthetic k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->e:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    return-object p0
.end method

.method static synthetic l(Layj;)Landroidx/lifecycle/r;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->A:Landroidx/lifecycle/r;

    return-object p0
.end method

.method static synthetic m(Layj;)Landroidx/lifecycle/r;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->y:Landroidx/lifecycle/r;

    return-object p0
.end method

.method static synthetic n(Layj;)Landroidx/lifecycle/r;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->z:Landroidx/lifecycle/r;

    return-object p0
.end method

.method static synthetic o()Landroid/media/MediaMetadata;
    .locals 1

    .line 121
    sget-object v0, Layj;->s:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic o(Layj;)Landroidx/lifecycle/r;
    .locals 0

    .line 121
    iget-object p0, p0, Layj;->D:Landroidx/lifecycle/r;

    return-object p0
.end method

.method static synthetic p(Layj;)J
    .locals 2

    .line 121
    iget-wide v0, p0, Layj;->J:J

    return-wide v0
.end method

.method private p()V
    .locals 1

    .line 351
    invoke-virtual {p0}, Layj;->l()Z

    move-result v0

    invoke-direct {p0, v0}, Layj;->c(Z)V

    return-void
.end method

.method static synthetic q(Layj;)I
    .locals 0

    .line 121
    iget p0, p0, Layj;->j:I

    return p0
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x7

    .line 364
    iput v0, p0, Layj;->q:I

    const/4 v0, 0x0

    .line 365
    invoke-direct {p0, v0}, Layj;->c(Z)V

    return-void
.end method

.method private r()V
    .locals 0

    return-void
.end method

.method static synthetic r(Layj;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Layj;->H:Z

    return p0
.end method

.method private s()V
    .locals 3

    .line 390
    iget-object v0, p0, Layj;->f:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a()V

    .line 391
    iget-object v0, p0, Layj;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/bluetooth/i;

    .line 392
    new-instance v2, Layj$1;

    invoke-direct {v2, p0, v1}, Layj$1;-><init>(Layj;Lcom/xiaopeng/musicradio/model/bluetooth/i;)V

    invoke-static {v2}, Lbql;->j(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Layj;->h:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Layj;->h:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method static synthetic s(Layj;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Layj;->v()V

    return-void
.end method

.method static synthetic t(Layj;)J
    .locals 2

    .line 121
    iget-wide v0, p0, Layj;->I:J

    return-wide v0
.end method

.method private t()V
    .locals 3

    .line 429
    sget-boolean v0, Lbsd;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 430
    sput-boolean v1, Lbsd;->a:Z

    .line 431
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->play()V

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvrcpConnected state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Layj;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isClickPlay:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Layj;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PlaybackViewModel"

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    iget v0, p0, Layj;->j:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Layj;->c:Z

    if-eqz v0, :cond_1

    .line 435
    iput-boolean v1, p0, Layj;->c:Z

    .line 436
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->play()V

    :cond_1
    return-void
.end method

.method private u()V
    .locals 2

    .line 441
    iget-object v0, p0, Layj;->f:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a()V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvrcpStateChanged: avrcp not connect metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Layj;->f:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b()Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 443
    invoke-direct {p0, v0, v0}, Layj;->b(II)V

    .line 444
    iget-object v0, p0, Layj;->f:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b()Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v0

    invoke-direct {p0, v0}, Layj;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    return-void
.end method

.method static synthetic u(Layj;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Layj;->w()V

    return-void
.end method

.method private v()V
    .locals 3

    .line 1018
    iget-object v0, p0, Layj;->h:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1019
    iget-object v0, p0, Layj;->h:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const-wide/16 v0, 0x1388

    .line 1021
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1022
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Layj$11;

    invoke-direct {v1, p0}, Layj$11;-><init>(Layj;)V

    .line 1023
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Layj;->h:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private w()V
    .locals 2

    .line 1039
    iget v0, p0, Layj;->j:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1047
    :cond_0
    iget-object v0, p0, Layj;->g:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->b()V

    goto :goto_0

    .line 1041
    :cond_1
    invoke-virtual {p0}, Layj;->h()V

    .line 1042
    iget-object v0, p0, Layj;->g:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->b()V

    .line 1043
    iget-object v0, p0, Layj;->g:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a()V

    const/4 v0, 0x0

    .line 1044
    iput-boolean v0, p0, Layj;->c:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 3

    .line 500
    iget-object v0, p0, Layj;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/bluetooth/i;

    .line 501
    new-instance v2, Layj$6;

    invoke-direct {v2, p0, v1, p1, p2}, Layj$6;-><init>(Layj;Lcom/xiaopeng/musicradio/model/bluetooth/i;J)V

    invoke-static {v2}, Lbql;->j(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/model/bluetooth/g;)V
    .locals 1

    .line 249
    iget-object v0, p0, Layj;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/model/bluetooth/h;)V
    .locals 1

    .line 259
    iget-object v0, p0, Layj;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/model/bluetooth/i;)V
    .locals 1

    .line 273
    iget-object v0, p0, Layj;->m:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 455
    iput p2, p0, Layj;->q:I

    .line 456
    iget p1, p0, Layj;->q:I

    invoke-direct {p0, p1}, Layj;->d(I)Z

    move-result p1

    .line 457
    invoke-direct {p0, p1}, Layj;->c(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    const/4 p1, 0x0

    const/16 p2, 0x8c

    if-ne p4, p2, :cond_0

    const/4 p2, 0x1

    .line 337
    iput-boolean p2, p0, Layj;->o:Z

    goto :goto_0

    .line 339
    :cond_0
    iput-boolean p1, p0, Layj;->o:Z

    .line 341
    :goto_0
    iget-boolean p2, p0, Layj;->o:Z

    if-nez p2, :cond_1

    .line 342
    invoke-direct {p0}, Layj;->q()V

    goto :goto_1

    .line 344
    :cond_1
    invoke-direct {p0}, Layj;->p()V

    .line 346
    :goto_1
    iget-boolean p2, p0, Layj;->o:Z

    const-string p3, "hfp"

    invoke-direct {p0, p1, p3, p2}, Layj;->a(ILjava/lang/String;Z)V

    .line 347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onHfpStateChanged isAospHfpConnected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Layj;->o:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",newState:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlaybackViewModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 305
    iget-object v0, p0, Layj;->f:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    sget-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    iget-object v0, p0, Layj;->f:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    sget-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public a(F)Z
    .locals 3

    .line 213
    invoke-static {}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->setA2dpVolume(F)Z

    move-result v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setA2dpVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , result: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PlaybackViewModel"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public a(I)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 225
    invoke-static {}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->pauseBtRender()Z

    move-result p1

    const-string v0, "MUTE"

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->startBtRender()Z

    move-result p1

    const-string v0, "UNMUTE"

    .line 231
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStreamMode(): mode = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], result = ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return p1
.end method

.method public a(Z)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 180
    iget p1, p0, Layj;->q:I

    invoke-direct {p0, p1}, Layj;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 182
    invoke-direct {p0, p1}, Layj;->c(Z)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 187
    :cond_1
    iget-boolean p1, p0, Layj;->i:Z

    return p1
.end method

.method public b(I)V
    .locals 0

    .line 283
    iput p1, p0, Layj;->j:I

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    const/16 p1, 0x8c

    if-ne p4, p1, :cond_0

    const/4 p1, 0x1

    .line 372
    iput-boolean p1, p0, Layj;->n:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 374
    iput-boolean p1, p0, Layj;->n:Z

    .line 376
    :goto_0
    iget-boolean p1, p0, Layj;->n:Z

    if-nez p1, :cond_1

    .line 377
    invoke-direct {p0}, Layj;->s()V

    goto :goto_1

    .line 379
    :cond_1
    invoke-direct {p0}, Layj;->r()V

    :goto_1
    const/4 p1, 0x2

    .line 381
    iget-boolean p2, p0, Layj;->n:Z

    const-string p3, "a2dp"

    invoke-direct {p0, p1, p3, p2}, Layj;->a(ILjava/lang/String;Z)V

    .line 382
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onA2dpStateChanged isAospA2dpConnected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Layj;->n:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",newState:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlaybackViewModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 463
    iput-boolean p1, p0, Layj;->r:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Layj;->n:Z

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/16 p3, 0x8c

    if-eq p4, p3, :cond_1

    const/16 p3, 0x91

    if-ne p4, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p1

    goto :goto_1

    :cond_1
    :goto_0
    move p3, p2

    :goto_1
    if-eqz p3, :cond_2

    .line 409
    iput-boolean p2, p0, Layj;->p:Z

    .line 410
    iget-object p1, p0, Layj;->g:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a(Lcom/xiaopeng/musicradio/model/bluetooth/j$a;)V

    goto :goto_2

    .line 412
    :cond_2
    iput-boolean p1, p0, Layj;->p:Z

    .line 413
    iget-object p1, p0, Layj;->g:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a(Lcom/xiaopeng/musicradio/model/bluetooth/j$a;)V

    :goto_2
    if-eqz p3, :cond_3

    .line 416
    iget-object p1, p0, Layj;->e:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->f()V

    .line 419
    :cond_3
    iget-boolean p1, p0, Layj;->p:Z

    if-nez p1, :cond_4

    .line 420
    invoke-direct {p0}, Layj;->u()V

    goto :goto_3

    .line 422
    :cond_4
    invoke-direct {p0}, Layj;->t()V

    :goto_3
    const/4 p1, 0x3

    .line 424
    iget-boolean p2, p0, Layj;->p:Z

    const-string p3, "avrcp"

    invoke-direct {p0, p1, p3, p2}, Layj;->a(ILjava/lang/String;Z)V

    .line 425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAvrcpStateChanged isAospAvrcpConnected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Layj;->p:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",newState:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlaybackViewModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Layj;->o:Z

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()I
    .locals 1

    .line 244
    iget v0, p0, Layj;->j:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init ==========> context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Layi;->a()Layi;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Layi;->a(Landroid/content/Context;Layk;)V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Layj;->d:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Layj;->r:Z

    return v0
.end method

.method public k_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 3

    .line 355
    iget v0, p0, Layj;->q:I

    invoke-direct {p0, v0}, Layj;->d(I)Z

    move-result v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iterate call list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Layj;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlaybackViewModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Layj$d;",
            ">;"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Layj;->C:Landroidx/lifecycle/r;

    return-object v0
.end method

.method public n()Layj$c;
    .locals 2

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRealPlaybackController m_PlaybackController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Layj;->G:Layj$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Layj;->G:Layj$c;

    return-object v0
.end method
