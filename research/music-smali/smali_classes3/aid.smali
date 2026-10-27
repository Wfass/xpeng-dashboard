.class public Laid;
.super Landroidx/lifecycle/b;
.source "AospPlaybackViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laid$e;,
        Laid$c;,
        Laid$d;,
        Laid$b;,
        Laid$a;
    }
.end annotation


# static fields
.field private static a:[Laid;

.field private static final b:Landroid/media/MediaMetadata;


# instance fields
.field private final c:Laid$b;

.field private final d:Landroidx/lifecycle/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/s<",
            "Lcom/android/car/media/common/source/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/android/car/media/common/source/c$a;

.field private final f:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Lcom/android/car/media/common/source/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Ljava/util/List<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Laid$c;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Laid$d;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Laie;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Laie;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Laid$a;

.field private p:Laid$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 84
    new-array v0, v0, [Laid;

    sput-object v0, Laid;->a:[Laid;

    .line 129
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    sput-object v0, Laid;->b:Landroid/media/MediaMetadata;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;I)V
    .locals 1

    .line 184
    invoke-static {p1, p2}, Lcom/android/car/media/common/source/d;->a(Landroid/app/Application;I)Lcom/android/car/media/common/source/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/car/media/common/source/d;->c()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, L-$$Lambda$aid$DZZiClLYKQSMPeyMjli6SOFJfFo;

    invoke-direct {v0, p1}, L-$$Lambda$aid$DZZiClLYKQSMPeyMjli6SOFJfFo;-><init>(Landroid/app/Application;)V

    invoke-direct {p0, p1, p2, v0}, Laid;-><init>(Landroid/app/Application;Landroidx/lifecycle/LiveData;Laid$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/LiveData;Laid$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/car/media/common/source/a$b;",
            ">;",
            "Laid$a;",
            ")V"
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 131
    new-instance v0, Laid$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laid$b;-><init>(Laid;Laid$1;)V

    iput-object v0, p0, Laid;->c:Laid$b;

    .line 132
    new-instance v0, Laid$1;

    invoke-direct {v0, p0}, Laid$1;-><init>(Laid;)V

    iput-object v0, p0, Laid;->d:Landroidx/lifecycle/s;

    .line 141
    invoke-static {v1}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v0

    iput-object v0, p0, Laid;->f:Landroidx/lifecycle/r;

    .line 143
    invoke-static {v1}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v0

    iput-object v0, p0, Laid;->g:Landroidx/lifecycle/r;

    .line 146
    invoke-static {v1}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v0

    iput-object v0, p0, Laid;->h:Landroidx/lifecycle/r;

    .line 148
    invoke-static {v1}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v0

    iput-object v0, p0, Laid;->i:Landroidx/lifecycle/r;

    .line 150
    invoke-static {v1}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v0

    iput-object v0, p0, Laid;->j:Landroidx/lifecycle/r;

    .line 152
    invoke-static {v1}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v0

    iput-object v0, p0, Laid;->k:Landroidx/lifecycle/r;

    .line 154
    invoke-static {v1}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v0

    iput-object v0, p0, Laid;->l:Landroidx/lifecycle/r;

    .line 156
    invoke-static {v1}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v0

    iput-object v0, p0, Laid;->m:Landroidx/lifecycle/r;

    .line 158
    iget-object v0, p0, Laid;->l:Landroidx/lifecycle/r;

    new-instance v1, Laid$2;

    invoke-direct {v1, p0}, Laid$2;-><init>(Laid;)V

    .line 159
    invoke-static {v0, v1}, Landroidx/lifecycle/y;->b(Landroidx/lifecycle/LiveData;Lz;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Laid;->n:Landroidx/lifecycle/LiveData;

    .line 192
    iput-object p3, p0, Laid;->o:Laid$a;

    .line 193
    new-instance p3, Lcom/android/car/media/common/source/c$a;

    invoke-direct {p3, p1}, Lcom/android/car/media/common/source/c$a;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Laid;->e:Lcom/android/car/media/common/source/c$a;

    .line 194
    iget-object p1, p0, Laid;->d:Landroidx/lifecycle/s;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method static synthetic a(Laid;)Laid$b;
    .locals 0

    .line 77
    iget-object p0, p0, Laid;->c:Laid$b;

    return-object p0
.end method

.method static synthetic a(Laid;Laid$c;)Laid$c;
    .locals 0

    .line 77
    iput-object p1, p0, Laid;->p:Laid$c;

    return-object p1
.end method

.method public static a(Landroid/app/Application;I)Laid;
    .locals 2

    .line 88
    sget-object v0, Laid;->a:[Laid;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Laid;

    invoke-direct {v1, p0, p1}, Laid;-><init>(Landroid/app/Application;I)V

    aput-object v1, v0, p1

    .line 91
    :cond_0
    sget-object p0, Laid;->a:[Laid;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private static synthetic a(Landroid/app/Application;Landroid/support/v4/media/MediaBrowserCompat;)Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 1

    .line 185
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-object v0
.end method

.method static synthetic b(Laid;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 77
    iget-object p0, p0, Laid;->n:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method static synthetic c(Laid;)Laid$a;
    .locals 0

    .line 77
    iget-object p0, p0, Laid;->o:Laid$a;

    return-object p0
.end method

.method static synthetic d(Laid;)Landroidx/lifecycle/r;
    .locals 0

    .line 77
    iget-object p0, p0, Laid;->k:Landroidx/lifecycle/r;

    return-object p0
.end method

.method static synthetic e(Laid;)Laid$c;
    .locals 0

    .line 77
    iget-object p0, p0, Laid;->p:Laid$c;

    return-object p0
.end method

.method static synthetic f(Laid;)Lcom/android/car/media/common/source/c$a;
    .locals 0

    .line 77
    iget-object p0, p0, Laid;->e:Lcom/android/car/media/common/source/c$a;

    return-object p0
.end method

.method static synthetic g(Laid;)Landroidx/lifecycle/r;
    .locals 0

    .line 77
    iget-object p0, p0, Laid;->f:Landroidx/lifecycle/r;

    return-object p0
.end method

.method static synthetic h()Landroid/media/MediaMetadata;
    .locals 1

    .line 77
    sget-object v0, Laid;->b:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic h(Laid;)Landroidx/lifecycle/r;
    .locals 0

    .line 77
    iget-object p0, p0, Laid;->g:Landroidx/lifecycle/r;

    return-object p0
.end method

.method static synthetic i(Laid;)Landroidx/lifecycle/r;
    .locals 0

    .line 77
    iget-object p0, p0, Laid;->j:Landroidx/lifecycle/r;

    return-object p0
.end method

.method static synthetic j(Laid;)Landroidx/lifecycle/r;
    .locals 0

    .line 77
    iget-object p0, p0, Laid;->h:Landroidx/lifecycle/r;

    return-object p0
.end method

.method static synthetic k(Laid;)Landroidx/lifecycle/r;
    .locals 0

    .line 77
    iget-object p0, p0, Laid;->i:Landroidx/lifecycle/r;

    return-object p0
.end method

.method static synthetic l(Laid;)Landroidx/lifecycle/r;
    .locals 0

    .line 77
    iget-object p0, p0, Laid;->l:Landroidx/lifecycle/r;

    return-object p0
.end method

.method public static synthetic lambda$DZZiClLYKQSMPeyMjli6SOFJfFo(Landroid/app/Application;Landroid/support/v4/media/MediaBrowserCompat;)Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 0

    invoke-static {p0, p1}, Laid;->a(Landroid/app/Application;Landroid/support/v4/media/MediaBrowserCompat;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Laid;)Landroidx/lifecycle/r;
    .locals 0

    .line 77
    iget-object p0, p0, Laid;->m:Landroidx/lifecycle/r;

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/car/media/common/source/c;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Laid;->f:Landroidx/lifecycle/r;

    return-object v0
.end method

.method public c()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Laid;->g:Landroidx/lifecycle/r;

    return-object v0
.end method

.method public d()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Laid$c;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Laid;->k:Landroidx/lifecycle/r;

    return-object v0
.end method

.method public f()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Laid$d;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Laid;->l:Landroidx/lifecycle/r;

    return-object v0
.end method

.method public g()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Laie;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Laid;->n:Landroidx/lifecycle/LiveData;

    return-object v0
.end method
