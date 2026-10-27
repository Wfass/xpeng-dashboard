.class public Lcom/a/a/i;
.super Lcom/a/a/a;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/i$b;,
        Lcom/a/a/i$a;
    }
.end annotation


# static fields
.field private static final mV:Lcom/a/a/h;

.field private static final mW:Lcom/a/a/h;

.field private static ni:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/a/a/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final nj:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lcom/a/a/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final nk:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lcom/a/a/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final nl:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lcom/a/a/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final nm:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lcom/a/a/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final nn:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lcom/a/a/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final no:Landroid/view/animation/Interpolator;

.field private static nu:J


# instance fields
.field private mCurrentFraction:F

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mRunning:Z

.field private mStartDelay:J

.field mStartTime:J

.field private mStarted:Z

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/a/a/i$b;",
            ">;"
        }
    .end annotation
.end field

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field nh:J

.field private np:Z

.field private nq:I

.field private nr:Z

.field private ns:J

.field nt:I

.field nv:[Lcom/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/a/a/i;->ni:Ljava/lang/ThreadLocal;

    .line 98
    new-instance v0, Lcom/a/a/i$1;

    invoke-direct {v0}, Lcom/a/a/i$1;-><init>()V

    sput-object v0, Lcom/a/a/i;->nj:Ljava/lang/ThreadLocal;

    .line 107
    new-instance v0, Lcom/a/a/i$2;

    invoke-direct {v0}, Lcom/a/a/i$2;-><init>()V

    sput-object v0, Lcom/a/a/i;->nk:Ljava/lang/ThreadLocal;

    .line 119
    new-instance v0, Lcom/a/a/i$3;

    invoke-direct {v0}, Lcom/a/a/i$3;-><init>()V

    sput-object v0, Lcom/a/a/i;->nl:Ljava/lang/ThreadLocal;

    .line 127
    new-instance v0, Lcom/a/a/i$4;

    invoke-direct {v0}, Lcom/a/a/i$4;-><init>()V

    sput-object v0, Lcom/a/a/i;->nm:Ljava/lang/ThreadLocal;

    .line 135
    new-instance v0, Lcom/a/a/i$5;

    invoke-direct {v0}, Lcom/a/a/i$5;-><init>()V

    sput-object v0, Lcom/a/a/i;->nn:Ljava/lang/ThreadLocal;

    .line 144
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/a/a/i;->no:Landroid/view/animation/Interpolator;

    .line 148
    new-instance v0, Lcom/a/a/d;

    invoke-direct {v0}, Lcom/a/a/d;-><init>()V

    sput-object v0, Lcom/a/a/i;->mV:Lcom/a/a/h;

    .line 149
    new-instance v0, Lcom/a/a/b;

    invoke-direct {v0}, Lcom/a/a/b;-><init>()V

    sput-object v0, Lcom/a/a/i;->mW:Lcom/a/a/h;

    .line 222
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/a/a/i;->nu:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 283
    invoke-direct {p0}, Lcom/a/a/a;-><init>()V

    .line 85
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/a/a/i;->nh:J

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/i;->np:Z

    .line 161
    iput v0, p0, Lcom/a/a/i;->nq:I

    .line 166
    const/4 v1, 0x0

    iput v1, p0, Lcom/a/a/i;->mCurrentFraction:F

    .line 171
    iput-boolean v0, p0, Lcom/a/a/i;->nr:Z

    .line 187
    iput v0, p0, Lcom/a/a/i;->nt:I

    .line 197
    iput-boolean v0, p0, Lcom/a/a/i;->mRunning:Z

    .line 203
    iput-boolean v0, p0, Lcom/a/a/i;->mStarted:Z

    .line 209
    iput-boolean v0, p0, Lcom/a/a/i;->mInitialized:Z

    .line 216
    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Lcom/a/a/i;->mDuration:J

    .line 219
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/a/a/i;->mStartDelay:J

    .line 226
    iput v0, p0, Lcom/a/a/i;->mRepeatCount:I

    .line 233
    const/4 v0, 0x1

    iput v0, p0, Lcom/a/a/i;->mRepeatMode:I

    .line 240
    sget-object v0, Lcom/a/a/i;->no:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/a/a/i;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/i;->mUpdateListeners:Ljava/util/ArrayList;

    .line 284
    return-void
.end method

.method static synthetic a(Lcom/a/a/i;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/a/a/i;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic a(Lcom/a/a/i;J)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/a/a/i;->i(J)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/a/a/i;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/a/a/i;->mRunning:Z

    return p1
.end method

.method public static varargs b([F)Lcom/a/a/i;
    .locals 1

    .line 315
    new-instance v0, Lcom/a/a/i;

    invoke-direct {v0}, Lcom/a/a/i;-><init>()V

    .line 316
    invoke-virtual {v0, p0}, Lcom/a/a/i;->setFloatValues([F)V

    .line 317
    return-object v0
.end method

.method static synthetic b(Lcom/a/a/i;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/a/a/i;->startAnimation()V

    return-void
.end method

.method static synthetic c(Lcom/a/a/i;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/a/a/i;->du()V

    return-void
.end method

.method static synthetic dA()Ljava/lang/ThreadLocal;
    .locals 1

    .line 43
    sget-object v0, Lcom/a/a/i;->nm:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic dB()J
    .locals 2

    .line 43
    sget-wide v0, Lcom/a/a/i;->nu:J

    return-wide v0
.end method

.method private du()V
    .locals 5

    .line 1025
    sget-object v0, Lcom/a/a/i;->nj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1026
    sget-object v0, Lcom/a/a/i;->nk:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1027
    sget-object v0, Lcom/a/a/i;->nl:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1028
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/i;->nt:I

    .line 1029
    iget-boolean v1, p0, Lcom/a/a/i;->mRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/i;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/a/a/i;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1032
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1033
    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1034
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/a/a/a$a;

    invoke-interface {v4, p0}, Lcom/a/a/a$a;->b(Lcom/a/a/a;)V

    .line 1033
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1037
    :cond_0
    iput-boolean v0, p0, Lcom/a/a/i;->mRunning:Z

    .line 1038
    iput-boolean v0, p0, Lcom/a/a/i;->mStarted:Z

    .line 1039
    return-void
.end method

.method static synthetic dw()Ljava/lang/ThreadLocal;
    .locals 1

    .line 43
    sget-object v0, Lcom/a/a/i;->nj:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic dx()Ljava/lang/ThreadLocal;
    .locals 1

    .line 43
    sget-object v0, Lcom/a/a/i;->nl:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic dy()Ljava/lang/ThreadLocal;
    .locals 1

    .line 43
    sget-object v0, Lcom/a/a/i;->nk:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic dz()Ljava/lang/ThreadLocal;
    .locals 1

    .line 43
    sget-object v0, Lcom/a/a/i;->nn:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private i(J)Z
    .locals 6

    .line 1071
    iget-boolean v0, p0, Lcom/a/a/i;->nr:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1072
    iput-boolean v1, p0, Lcom/a/a/i;->nr:Z

    .line 1073
    iput-wide p1, p0, Lcom/a/a/i;->ns:J

    goto :goto_0

    .line 1075
    :cond_0
    iget-wide v2, p0, Lcom/a/a/i;->ns:J

    sub-long v2, p1, v2

    .line 1076
    iget-wide v4, p0, Lcom/a/a/i;->mStartDelay:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 1079
    iget-wide v4, p0, Lcom/a/a/i;->mStartDelay:J

    sub-long/2addr v2, v4

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/a/a/i;->mStartTime:J

    .line 1080
    iput v1, p0, Lcom/a/a/i;->nt:I

    .line 1081
    return v1

    .line 1084
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private start(Z)V
    .locals 5

    .line 917
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 920
    iput-boolean p1, p0, Lcom/a/a/i;->np:Z

    .line 921
    const/4 p1, 0x0

    iput p1, p0, Lcom/a/a/i;->nq:I

    .line 922
    iput p1, p0, Lcom/a/a/i;->nt:I

    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/i;->mStarted:Z

    .line 924
    iput-boolean p1, p0, Lcom/a/a/i;->nr:Z

    .line 925
    sget-object v1, Lcom/a/a/i;->nk:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    iget-wide v1, p0, Lcom/a/a/i;->mStartDelay:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 928
    invoke-virtual {p0}, Lcom/a/a/i;->getCurrentPlayTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/a/a/i;->setCurrentPlayTime(J)V

    .line 929
    iput p1, p0, Lcom/a/a/i;->nt:I

    .line 930
    iput-boolean v0, p0, Lcom/a/a/i;->mRunning:Z

    .line 932
    iget-object v0, p0, Lcom/a/a/i;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/a/a/i;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 935
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 936
    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 937
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/a$a;

    invoke-interface {v3, p0}, Lcom/a/a/a$a;->a(Lcom/a/a/a;)V

    .line 936
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 941
    :cond_0
    sget-object v0, Lcom/a/a/i;->ni:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/i$a;

    .line 942
    if-nez v0, :cond_1

    .line 943
    new-instance v0, Lcom/a/a/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/i$a;-><init>(Lcom/a/a/i$1;)V

    .line 944
    sget-object v1, Lcom/a/a/i;->ni:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 946
    :cond_1
    invoke-virtual {v0, p1}, Lcom/a/a/i$a;->sendEmptyMessage(I)Z

    .line 947
    return-void

    .line 918
    :cond_2
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private startAnimation()V
    .locals 4

    .line 1046
    invoke-virtual {p0}, Lcom/a/a/i;->initAnimation()V

    .line 1047
    sget-object v0, Lcom/a/a/i;->nj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    iget-wide v0, p0, Lcom/a/a/i;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/i;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/a/a/i;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1053
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1054
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1055
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/a$a;

    invoke-interface {v3, p0}, Lcom/a/a/a$a;->a(Lcom/a/a/a;)V

    .line 1054
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1058
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/i$b;)V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/a/a/i;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/i;->mUpdateListeners:Ljava/util/ArrayList;

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/a/a/i;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    return-void
.end method

.method public varargs a([Lcom/a/a/g;)V
    .locals 6

    .line 456
    array-length v0, p1

    .line 457
    iput-object p1, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    .line 458
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/a/a/i;->mValuesMap:Ljava/util/HashMap;

    .line 459
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 460
    aget-object v3, p1, v2

    .line 461
    iget-object v4, p0, Lcom/a/a/i;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/a/a/g;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :cond_0
    iput-boolean v1, p0, Lcom/a/a/i;->mInitialized:Z

    .line 465
    return-void
.end method

.method animateValue(F)V
    .locals 4

    .line 1169
    iget-object v0, p0, Lcom/a/a/i;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 1170
    iput p1, p0, Lcom/a/a/i;->mCurrentFraction:F

    .line 1171
    iget-object v0, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    array-length v0, v0

    .line 1172
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1173
    iget-object v3, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/a/a/g;->calculateValue(F)V

    .line 1172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1175
    :cond_0
    iget-object p1, p0, Lcom/a/a/i;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 1176
    iget-object p1, p0, Lcom/a/a/i;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1177
    :goto_1
    if-ge v1, p1, :cond_1

    .line 1178
    iget-object v0, p0, Lcom/a/a/i;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/i$b;

    invoke-interface {v0, p0}, Lcom/a/a/i$b;->d(Lcom/a/a/i;)V

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1181
    :cond_1
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 958
    iget v0, p0, Lcom/a/a/i;->nt:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/a/a/i;->nk:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/a/a/i;->nl:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 961
    :cond_0
    iget-boolean v0, p0, Lcom/a/a/i;->mRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/i;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/a/a/i;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 964
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/a$a;

    .line 965
    invoke-interface {v1, p0}, Lcom/a/a/a$a;->c(Lcom/a/a/a;)V

    goto :goto_0

    .line 968
    :cond_1
    invoke-direct {p0}, Lcom/a/a/i;->du()V

    .line 970
    :cond_2
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/a/a/i;->dv()Lcom/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic dn()Lcom/a/a/a;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/a/a/i;->dv()Lcom/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public dv()Lcom/a/a/i;
    .locals 7

    .line 1185
    invoke-super {p0}, Lcom/a/a/a;->dn()Lcom/a/a/a;

    move-result-object v0

    check-cast v0, Lcom/a/a/i;

    .line 1186
    iget-object v1, p0, Lcom/a/a/i;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/a/a/i;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/a/a/i;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1189
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1190
    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    .line 1191
    iget-object v5, v0, Lcom/a/a/i;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1194
    :cond_0
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/a/a/i;->nh:J

    .line 1195
    iput-boolean v2, v0, Lcom/a/a/i;->np:Z

    .line 1196
    iput v2, v0, Lcom/a/a/i;->nq:I

    .line 1197
    iput-boolean v2, v0, Lcom/a/a/i;->mInitialized:Z

    .line 1198
    iput v2, v0, Lcom/a/a/i;->nt:I

    .line 1199
    iput-boolean v2, v0, Lcom/a/a/i;->nr:Z

    .line 1200
    iget-object v1, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    .line 1201
    if-eqz v1, :cond_1

    .line 1202
    array-length v3, v1

    .line 1203
    new-array v4, v3, [Lcom/a/a/g;

    iput-object v4, v0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    .line 1204
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lcom/a/a/i;->mValuesMap:Ljava/util/HashMap;

    .line 1205
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1206
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/a/a/g;->ds()Lcom/a/a/g;

    move-result-object v4

    .line 1207
    iget-object v5, v0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    aput-object v4, v5, v2

    .line 1208
    iget-object v5, v0, Lcom/a/a/i;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/a/a/g;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1211
    :cond_1
    return-object v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/a/a/g;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 748
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .line 556
    iget-boolean v0, p0, Lcom/a/a/i;->mInitialized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/a/a/i;->nt:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/a/a/i;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 557
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public h(J)Lcom/a/a/i;
    .locals 3

    .line 510
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 514
    iput-wide p1, p0, Lcom/a/a/i;->mDuration:J

    .line 515
    return-object p0

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method initAnimation()V
    .locals 3

    .line 490
    iget-boolean v0, p0, Lcom/a/a/i;->mInitialized:Z

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    array-length v0, v0

    .line 492
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 493
    iget-object v2, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/a/a/g;->init()V

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/i;->mInitialized:Z

    .line 497
    :cond_1
    return-void
.end method

.method j(J)Z
    .locals 7

    .line 1100
    nop

    .line 1102
    iget v0, p0, Lcom/a/a/i;->nt:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1103
    iput v3, p0, Lcom/a/a/i;->nt:I

    .line 1104
    iget-wide v4, p0, Lcom/a/a/i;->nh:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_0

    .line 1105
    iput-wide p1, p0, Lcom/a/a/i;->mStartTime:J

    goto :goto_0

    .line 1107
    :cond_0
    iget-wide v4, p0, Lcom/a/a/i;->nh:J

    sub-long v4, p1, v4

    iput-wide v4, p0, Lcom/a/a/i;->mStartTime:J

    .line 1109
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/a/a/i;->nh:J

    .line 1112
    :cond_1
    :goto_0
    iget v0, p0, Lcom/a/a/i;->nt:I

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_5

    .line 1115
    :pswitch_0
    iget-wide v5, p0, Lcom/a/a/i;->mDuration:J

    cmp-long v0, v5, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_2

    iget-wide v5, p0, Lcom/a/a/i;->mStartTime:J

    sub-long/2addr p1, v5

    long-to-float p1, p1

    iget-wide v5, p0, Lcom/a/a/i;->mDuration:J

    long-to-float p2, v5

    div-float/2addr p1, p2

    goto :goto_1

    .line 1116
    :cond_2
    move p1, v1

    :goto_1
    cmpl-float p2, p1, v1

    if-ltz p2, :cond_7

    .line 1117
    iget p2, p0, Lcom/a/a/i;->nq:I

    iget v0, p0, Lcom/a/a/i;->mRepeatCount:I

    if-lt p2, v0, :cond_4

    iget p2, p0, Lcom/a/a/i;->mRepeatCount:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    goto :goto_2

    .line 1132
    :cond_3
    nop

    .line 1133
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1136
    move v4, v3

    goto :goto_4

    .line 1119
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/a/a/i;->mListeners:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 1120
    iget-object p2, p0, Lcom/a/a/i;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1121
    move v0, v4

    :goto_3
    if-ge v0, p2, :cond_5

    .line 1122
    iget-object v2, p0, Lcom/a/a/i;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/a$a;

    invoke-interface {v2, p0}, Lcom/a/a/a$a;->d(Lcom/a/a/a;)V

    .line 1121
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1125
    :cond_5
    iget p2, p0, Lcom/a/a/i;->mRepeatMode:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 1126
    iget-boolean p2, p0, Lcom/a/a/i;->np:Z

    xor-int/2addr p2, v3

    iput-boolean p2, p0, Lcom/a/a/i;->np:Z

    .line 1128
    :cond_6
    iget p2, p0, Lcom/a/a/i;->nq:I

    float-to-int v0, p1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/a/a/i;->nq:I

    .line 1129
    rem-float/2addr p1, v1

    .line 1130
    iget-wide v2, p0, Lcom/a/a/i;->mStartTime:J

    iget-wide v5, p0, Lcom/a/a/i;->mDuration:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/a/a/i;->mStartTime:J

    .line 1136
    :cond_7
    :goto_4
    iget-boolean p2, p0, Lcom/a/a/i;->np:Z

    if-eqz p2, :cond_8

    .line 1137
    sub-float p1, v1, p1

    .line 1139
    :cond_8
    invoke-virtual {p0, p1}, Lcom/a/a/i;->animateValue(F)V

    .line 1143
    :goto_5
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentPlayTime(J)V
    .locals 4

    .line 538
    invoke-virtual {p0}, Lcom/a/a/i;->initAnimation()V

    .line 539
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 540
    iget v2, p0, Lcom/a/a/i;->nt:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 541
    iput-wide p1, p0, Lcom/a/a/i;->nh:J

    .line 542
    const/4 v2, 0x2

    iput v2, p0, Lcom/a/a/i;->nt:I

    .line 544
    :cond_0
    sub-long p1, v0, p1

    iput-wide p1, p0, Lcom/a/a/i;->mStartTime:J

    .line 545
    invoke-virtual {p0, v0, v1}, Lcom/a/a/i;->j(J)Z

    .line 546
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 3

    .line 401
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    aget-object v0, v0, v1

    .line 408
    invoke-virtual {v0, p1}, Lcom/a/a/g;->setFloatValues([F)V

    goto :goto_1

    .line 405
    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/a/a/g;

    const-string v2, ""

    invoke-static {v2, p1}, Lcom/a/a/g;->a(Ljava/lang/String;[F)Lcom/a/a/g;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/a/a/i;->a([Lcom/a/a/g;)V

    .line 411
    :goto_1
    iput-boolean v1, p0, Lcom/a/a/i;->mInitialized:Z

    .line 412
    return-void

    .line 402
    :cond_3
    :goto_2
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 865
    if-eqz p1, :cond_0

    .line 866
    iput-object p1, p0, Lcom/a/a/i;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 868
    :cond_0
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/a/a/i;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 870
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 951
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/i;->start(Z)V

    .line 952
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    iget-object v1, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    if-eqz v1, :cond_0

    .line 1258
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/a/i;->nv:[Lcom/a/a/g;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/a/a/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1262
    :cond_0
    return-object v0
.end method
