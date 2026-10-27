.class public Laic$b;
.super Landroidx/lifecycle/LiveData;
.source "MediaItemsRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Lahy<",
        "Ljava/util/List<",
        "Lcom/android/car/media/common/MediaItemMetadata;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    invoke-direct {p0, v0}, Laic$b;-><init>(Z)V

    return-void
.end method

.method synthetic constructor <init>(Laic$1;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Laic$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 80
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Laic$b;->f()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Laic$b;->g()V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(ZLaic$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Laic$b;-><init>(Z)V

    return-void
.end method

.method static synthetic a(Laic$b;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Laic$b;->f()V

    return-void
.end method

.method static synthetic a(Laic$b;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Laic$b;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-static {p1, p2}, Lahy;->a(Ljava/lang/Object;Ljava/lang/Object;)Lahy;

    move-result-object p1

    invoke-virtual {p0, p1}, Laic$b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Laic$b;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Laic$b;->g()V

    return-void
.end method

.method private f()V
    .locals 1

    .line 94
    invoke-static {}, Lahy;->a()Lahy;

    move-result-object v0

    invoke-virtual {p0, v0}, Laic$b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Laic$b;->b(Ljava/lang/Object;)V

    return-void
.end method
