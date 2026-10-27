.class public Landroid/support/rastermill/util/NativeResourcesUtil;
.super Ljava/lang/Object;
.source "NativeResourcesUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/util/NativeResourcesUtil$Info;
    }
.end annotation


# static fields
.field private static mFrameSequenceKeys:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNativeFrameSequences:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/support/rastermill/util/NativeResourcesUtil$Info;",
            ">;"
        }
    .end annotation
.end field

.field private static mNativeStates:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/support/rastermill/util/NativeResourcesUtil$Info;",
            ">;"
        }
    .end annotation
.end field

.field public static sEnable:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/rastermill/util/NativeResourcesUtil;->mNativeStates:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/rastermill/util/NativeResourcesUtil;->mNativeFrameSequences:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/rastermill/util/NativeResourcesUtil;->mFrameSequenceKeys:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 10
    sget-object v0, Landroid/support/rastermill/util/NativeResourcesUtil;->mFrameSequenceKeys:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .line 10
    sget-object v0, Landroid/support/rastermill/util/NativeResourcesUtil;->mNativeStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .line 10
    sget-object v0, Landroid/support/rastermill/util/NativeResourcesUtil;->mNativeFrameSequences:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 0

    .line 10
    invoke-static {p0, p1}, Landroid/support/rastermill/util/NativeResourcesUtil;->getFrameSequenceKeyLog(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 0

    .line 10
    invoke-static {p0, p1}, Landroid/support/rastermill/util/NativeResourcesUtil;->getNativeInfoLog(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    return-void
.end method

.method public static addNativeFrameSequence(JIII)V
    .locals 7

    .line 61
    sget-boolean v0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/support/rastermill/util/NativeResourcesUtil$4;

    move-object v1, v0

    move-wide v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/support/rastermill/util/NativeResourcesUtil$4;-><init>(JIII)V

    invoke-static {v0}, Landroid/support/rastermill/util/ThreadUtils;->postWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static addNativeState(JJIII)V
    .locals 9

    .line 37
    sget-boolean v0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Landroid/support/rastermill/util/NativeResourcesUtil$2;

    move-object v1, v0

    move-wide v2, p2

    move-wide v4, p0

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/support/rastermill/util/NativeResourcesUtil$2;-><init>(JJIII)V

    invoke-static {v0}, Landroid/support/rastermill/util/ThreadUtils;->postWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getFrameSequenceKeyLog(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 121
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getNativeInfoLog(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/support/rastermill/util/NativeResourcesUtil$Info;",
            ">;)V"
        }
    .end annotation

    const-string v0, "----\nkey:size\n"

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    const-string v4, ":"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 130
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/rastermill/util/NativeResourcesUtil$Info;

    .line 131
    invoke-virtual {v2}, Landroid/support/rastermill/util/NativeResourcesUtil$Info;->getSizeKey()Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    if-nez v6, :cond_0

    .line 134
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 138
    :goto_1
    sget-object v7, Landroid/support/rastermill/util/NativeResourcesUtil;->mFrameSequenceKeys:Ljava/util/HashMap;

    iget-wide v8, v2, Landroid/support/rastermill/util/NativeResourcesUtil$Info;->nativeFrameSequence:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 140
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 141
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "----\nsize:count\n"

    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 148
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static log()V
    .locals 1

    .line 86
    sget-boolean v0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v0, Landroid/support/rastermill/util/NativeResourcesUtil$6;

    invoke-direct {v0}, Landroid/support/rastermill/util/NativeResourcesUtil$6;-><init>()V

    invoke-static {v0}, Landroid/support/rastermill/util/ThreadUtils;->postWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static putFrameSequenceKey(JLjava/lang/String;)V
    .locals 1

    .line 25
    sget-boolean v0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance v0, Landroid/support/rastermill/util/NativeResourcesUtil$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/rastermill/util/NativeResourcesUtil$1;-><init>(JLjava/lang/String;)V

    invoke-static {v0}, Landroid/support/rastermill/util/ThreadUtils;->postWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeNativeFrameSequence(J)V
    .locals 1

    .line 73
    sget-boolean v0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance v0, Landroid/support/rastermill/util/NativeResourcesUtil$5;

    invoke-direct {v0, p0, p1}, Landroid/support/rastermill/util/NativeResourcesUtil$5;-><init>(J)V

    invoke-static {v0}, Landroid/support/rastermill/util/ThreadUtils;->postWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeNativeState(J)V
    .locals 1

    .line 49
    sget-boolean v0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance v0, Landroid/support/rastermill/util/NativeResourcesUtil$3;

    invoke-direct {v0, p0, p1}, Landroid/support/rastermill/util/NativeResourcesUtil$3;-><init>(J)V

    invoke-static {v0}, Landroid/support/rastermill/util/ThreadUtils;->postWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setEnable(Z)V
    .locals 0

    .line 21
    sput-boolean p0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    return-void
.end method
