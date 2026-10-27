.class public Lcom/android/car/media/common/PlaybackFragment$a;
.super Landroidx/lifecycle/b;
.source "PlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/media/common/PlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/car/media/common/source/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Laic;

.field private h:Laid;

.field private i:Lcom/android/car/media/common/source/d;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 225
    new-instance p1, Landroidx/lifecycle/r;

    invoke-direct {p1}, Landroidx/lifecycle/r;-><init>()V

    iput-object p1, p0, Lcom/android/car/media/common/PlaybackFragment$a;->f:Landroidx/lifecycle/r;

    return-void
.end method

.method private a(Lahy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahy<",
            "Ljava/util/List<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;>;)V"
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Lahy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object p1, p0, Lcom/android/car/media/common/PlaybackFragment$a;->f:Landroidx/lifecycle/r;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    return-void

    .line 282
    :cond_0
    invoke-virtual {p1}, Lahy;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0, p1}, Laib;->a(ZLjava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 284
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 285
    :goto_0
    iget-object p1, p0, Lcom/android/car/media/common/PlaybackFragment$a;->f:Landroidx/lifecycle/r;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$G8RVjvMpLrmuenZAcDDG0EaS2R8(Lcom/android/car/media/common/PlaybackFragment$a;Lahy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/media/common/PlaybackFragment$a;->a(Lahy;)V

    return-void
.end method


# virtual methods
.method a(Landroidx/fragment/app/FragmentActivity;Lcom/android/car/media/common/source/d;Laid;Laic;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment$a;->i:Lcom/android/car/media/common/source/d;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment$a;->h:Laid;

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment$a;->g:Laic;

    if-ne v0, p4, :cond_0

    return-void

    .line 242
    :cond_0
    iput-object p3, p0, Lcom/android/car/media/common/PlaybackFragment$a;->h:Laid;

    .line 243
    iput-object p2, p0, Lcom/android/car/media/common/PlaybackFragment$a;->i:Lcom/android/car/media/common/source/d;

    .line 244
    iput-object p4, p0, Lcom/android/car/media/common/PlaybackFragment$a;->g:Laic;

    .line 245
    iget-object p2, p0, Lcom/android/car/media/common/PlaybackFragment$a;->i:Lcom/android/car/media/common/source/d;

    invoke-virtual {p2}, Lcom/android/car/media/common/source/d;->b()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/media/common/PlaybackFragment$a;->a:Landroidx/lifecycle/LiveData;

    .line 246
    iget-object p2, p0, Lcom/android/car/media/common/PlaybackFragment$a;->a:Landroidx/lifecycle/LiveData;

    sget-object p4, Lcom/android/car/media/common/-$$Lambda$VzaXJ-k4yERlA8qhmX652HwcPbk;->INSTANCE:Lcom/android/car/media/common/-$$Lambda$VzaXJ-k4yERlA8qhmX652HwcPbk;

    invoke-static {p2, p4}, Lahz;->a(Landroidx/lifecycle/LiveData;Lz;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/media/common/PlaybackFragment$a;->b:Landroidx/lifecycle/LiveData;

    .line 247
    iget-object p2, p0, Lcom/android/car/media/common/PlaybackFragment$a;->a:Landroidx/lifecycle/LiveData;

    sget-object p4, Lcom/android/car/media/common/-$$Lambda$tVyA3rxmL29N7lpERKfq5fRaA8A;->INSTANCE:Lcom/android/car/media/common/-$$Lambda$tVyA3rxmL29N7lpERKfq5fRaA8A;

    invoke-static {p2, p4}, Lahz;->a(Landroidx/lifecycle/LiveData;Lz;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/media/common/PlaybackFragment$a;->c:Landroidx/lifecycle/LiveData;

    .line 248
    invoke-virtual {p3}, Laid;->c()Landroidx/lifecycle/LiveData;

    move-result-object p2

    sget-object p4, Lcom/android/car/media/common/-$$Lambda$FNldJ_Vh7T8UYBCzzsoOY6FUb2k;->INSTANCE:Lcom/android/car/media/common/-$$Lambda$FNldJ_Vh7T8UYBCzzsoOY6FUb2k;

    invoke-static {p2, p4}, Lahz;->a(Landroidx/lifecycle/LiveData;Lz;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/media/common/PlaybackFragment$a;->d:Landroidx/lifecycle/LiveData;

    .line 249
    invoke-virtual {p3}, Laid;->c()Landroidx/lifecycle/LiveData;

    move-result-object p2

    sget-object p3, Lcom/android/car/media/common/-$$Lambda$3238wPTx4JXBPS-TrPfFWPgRFZY;->INSTANCE:Lcom/android/car/media/common/-$$Lambda$3238wPTx4JXBPS-TrPfFWPgRFZY;

    invoke-static {p2, p3}, Lahz;->a(Landroidx/lifecycle/LiveData;Lz;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/media/common/PlaybackFragment$a;->e:Landroidx/lifecycle/LiveData;

    .line 251
    iget-object p2, p0, Lcom/android/car/media/common/PlaybackFragment$a;->g:Laic;

    invoke-virtual {p2}, Laic;->a()Laic$b;

    move-result-object p2

    new-instance p3, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$a$G8RVjvMpLrmuenZAcDDG0EaS2R8;

    invoke-direct {p3, p0}, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$a$G8RVjvMpLrmuenZAcDDG0EaS2R8;-><init>(Lcom/android/car/media/common/PlaybackFragment$a;)V

    .line 252
    invoke-virtual {p2, p1, p3}, Laic$b;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    return-void
.end method

.method b()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment$a;->b:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method c()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment$a;->c:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method d()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment$a;->d:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method f()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment$a;->e:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method g()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment$a;->f:Landroidx/lifecycle/r;

    return-object v0
.end method
