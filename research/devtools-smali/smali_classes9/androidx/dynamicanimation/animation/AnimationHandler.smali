.class Landroidx/dynamicanimation/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;,
        Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;,
        Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;,
        Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;,
        Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field private static final FRAME_DELAY_MS:J = 0xaL

.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/dynamicanimation/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

.field private mCurrentFrameTime:J

.field private final mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mListDirty:Z

.field private mProvider:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 250
    return-void
.end method

.method static synthetic access$000(Landroidx/dynamicanimation/animation/AnimationHandler;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    return-wide v0
.end method

.method static synthetic access$002(Landroidx/dynamicanimation/animation/AnimationHandler;J)J
    .locals 0

    .line 40
    iput-wide p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    return-wide p1
.end method

.method static synthetic access$100(Landroidx/dynamicanimation/animation/AnimationHandler;J)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/AnimationHandler;->doAnimationFrame(J)V

    return-void
.end method

.method static synthetic access$200(Landroidx/dynamicanimation/animation/AnimationHandler;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/dynamicanimation/animation/AnimationHandler;)Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/AnimationHandler;->getProvider()Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object p0

    return-object p0
.end method

.method private cleanUpList()V
    .locals 2

    .line 179
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 181
    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 180
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 187
    :cond_2
    return-void
.end method

.method private doAnimationFrame(J)V
    .locals 5

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 148
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 149
    iget-object v3, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    .line 150
    if-nez v3, :cond_0

    .line 151
    goto :goto_1

    .line 153
    :cond_0
    invoke-direct {p0, v3, v0, v1}, Landroidx/dynamicanimation/animation/AnimationHandler;->isCallbackDue(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    invoke-interface {v3, p1, p2}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    .line 148
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_2
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/AnimationHandler;->cleanUpList()V

    .line 158
    return-void
.end method

.method public static getFrameTime()J
    .locals 2

    .line 93
    sget-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    const-wide/16 v0, 0x0

    return-wide v0

    .line 96
    :cond_0
    sget-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    return-wide v0
.end method

.method public static getInstance()Landroidx/dynamicanimation/animation/AnimationHandler;
    .locals 2

    .line 86
    sget-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    new-instance v1, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 89
    :cond_0
    sget-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    return-object v0
.end method

.method private getProvider()Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 2

    .line 108
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    if-nez v0, :cond_1

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 110
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 115
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    return-object v0
.end method

.method private isCallbackDue(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .locals 4

    .line 167
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 168
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 169
    return v1

    .line 171
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-gez p2, :cond_1

    .line 172
    iget-object p2, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p2, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return v1

    .line 175
    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addAnimationFrameCallback(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V
    .locals 3

    .line 122
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/AnimationHandler;->getProvider()Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    .line 125
    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 130
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_2
    return-void
.end method

.method public removeCallback(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 2

    .line 138
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 140
    if-ltz p1, :cond_0

    .line 141
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 144
    :cond_0
    return-void
.end method

.method public setProvider(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;)V
    .locals 0

    .line 104
    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 105
    return-void
.end method
