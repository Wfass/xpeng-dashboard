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
.field private static mFrameSequenceKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNativeFrameSequences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/support/rastermill/util/NativeResourcesUtil$Info;",
            ">;"
        }
    .end annotation
.end field

.field private static mNativeStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/support/rastermill/util/NativeResourcesUtil$Info;",
            ">;"
        }
    .end annotation
.end field

.field public static sEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

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
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 10
    invoke-static {p0, p1}, Landroid/support/rastermill/util/NativeResourcesUtil;->getFrameSequenceKeyLog(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 10
    invoke-static {p0, p1}, Landroid/support/rastermill/util/NativeResourcesUtil;->getNativeInfoLog(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    return-void
.end method

.method public static addNativeFrameSequence(JIII)V
    .locals 7
    .param p0, "nativeFrameSequence"    # J
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "frameCount"    # I

    .line 61
    sget-boolean v0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    if-nez v0, :cond_0

    .line 62
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

    .line 70
    return-void
.end method

.method public static addNativeState(JJIII)V
    .locals 9
    .param p0, "nativeFrameSequence"    # J
    .param p2, "nativeState"    # J
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "frameCount"    # I

    .line 37
    sget-boolean v0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    if-nez v0, :cond_0

    .line 38
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

    .line 46
    return-void
.end method

.method private static getFrameSequenceKeyLog(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
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
    .local p1, "frameSequenceKeys":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
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
    .local v1, "key":Ljava/lang/Long;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 122
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .end local v1    # "key":Ljava/lang/Long;
    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method private static getNativeInfoLog(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 9
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
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

    .line 127
    .local p1, "nativeInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Landroid/support/rastermill/util/NativeResourcesUtil$Info;>;"
    const-string v0, "----\nkey:size\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v0, "countMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 130
    .local v2, "key":Ljava/lang/Long;
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/rastermill/util/NativeResourcesUtil$Info;

    .line 131
    .local v3, "info":Landroid/support/rastermill/util/NativeResourcesUtil$Info;
    invoke-virtual {v3}, Landroid/support/rastermill/util/NativeResourcesUtil$Info;->getSizeKey()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "sizeKey":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 133
    .local v5, "count":Ljava/lang/Integer;
    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 138
    :goto_1
    sget-object v6, Landroid/support/rastermill/util/NativeResourcesUtil;->mFrameSequenceKeys:Ljava/util/HashMap;

    iget-wide v7, v3, Landroid/support/rastermill/util/NativeResourcesUtil$Info;->nativeFrameSequence:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 139
    .local v6, "frameSequenceKeys":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    .line 140
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    .line 142
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v2    # "key":Ljava/lang/Long;
    .end local v3    # "info":Landroid/support/rastermill/util/NativeResourcesUtil$Info;
    .end local v4    # "sizeKey":Ljava/lang/String;
    .end local v5    # "count":Ljava/lang/Integer;
    .end local v6    # "frameSequenceKeys":Ljava/lang/String;
    goto :goto_0

    .line 145
    :cond_1
    const-string v1, "----\nsize:count\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    .local v2, "sizeKey":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    .line 148
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 150
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .end local v2    # "sizeKey":Ljava/lang/String;
    goto :goto_2

    .line 152
    :cond_2
    return-void
.end method

.method public static log()V
    .locals 1

    .line 86
    sget-boolean v0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    if-nez v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    new-instance v0, Landroid/support/rastermill/util/NativeResourcesUtil$6;

    invoke-direct {v0}, Landroid/support/rastermill/util/NativeResourcesUtil$6;-><init>()V

    invoke-static {v0}, Landroid/support/rastermill/util/ThreadUtils;->postWorker(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public static putFrameSequenceKey(JLjava/lang/String;)V
    .locals 1
    .param p0, "nativeFrameSequence"    # J
    .param p2, "key"    # Ljava/lang/String;

    .line 25
    sget-boolean v0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    if-nez v0, :cond_0

    .line 26
    return-void

    .line 28
    :cond_0
    new-instance v0, Landroid/support/rastermill/util/NativeResourcesUtil$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/rastermill/util/NativeResourcesUtil$1;-><init>(JLjava/lang/String;)V

    invoke-static {v0}, Landroid/support/rastermill/util/ThreadUtils;->postWorker(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method

.method public static removeNativeFrameSequence(J)V
    .locals 1
    .param p0, "nativeFrameSequence"    # J

    .line 73
    sget-boolean v0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    if-nez v0, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    new-instance v0, Landroid/support/rastermill/util/NativeResourcesUtil$5;

    invoke-direct {v0, p0, p1}, Landroid/support/rastermill/util/NativeResourcesUtil$5;-><init>(J)V

    invoke-static {v0}, Landroid/support/rastermill/util/ThreadUtils;->postWorker(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public static removeNativeState(J)V
    .locals 1
    .param p0, "nativeState"    # J

    .line 49
    sget-boolean v0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    if-nez v0, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    new-instance v0, Landroid/support/rastermill/util/NativeResourcesUtil$3;

    invoke-direct {v0, p0, p1}, Landroid/support/rastermill/util/NativeResourcesUtil$3;-><init>(J)V

    invoke-static {v0}, Landroid/support/rastermill/util/ThreadUtils;->postWorker(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public static setEnable(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 21
    sput-boolean p0, Landroid/support/rastermill/util/NativeResourcesUtil;->sEnable:Z

    .line 22
    return-void
.end method
