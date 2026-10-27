.class Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;
.super Ljava/lang/Object;
.source "RequestExecutorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiyi/video/qys/RequestExecutorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodKey"
.end annotation


# static fields
.field private static final sMethodKeys:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCommand:Ljava/lang/String;

.field mSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->sMethodKeys:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hashCode([Ljava/lang/Object;)I
    .locals 7
    .param p0, "a"    # [Ljava/lang/Object;

    .line 219
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 220
    return v0

    .line 222
    :cond_0
    const/4 v1, 0x1

    .line 224
    .local v1, "result":I
    array-length v2, p0

    move v3, v1

    move v1, v0

    .end local v1    # "result":I
    .local v3, "result":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, p0, v1

    .line 225
    .local v4, "element":Ljava/lang/Object;
    const/16 v5, 0x1f

    mul-int/2addr v5, v3

    if-nez v4, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    add-int v3, v5, v6

    .line 224
    .end local v4    # "element":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_2
    return v3
.end method

.method public static obtain()Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;
    .locals 2

    .line 189
    sget-object v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->sMethodKeys:Ljava/util/LinkedList;

    monitor-enter v0

    .line 190
    :try_start_0
    sget-object v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->sMethodKeys:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 191
    sget-object v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->sMethodKeys:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;

    monitor-exit v0

    return-object v1

    .line 193
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    new-instance v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;

    invoke-direct {v0}, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;-><init>()V

    return-object v0

    .line 193
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 208
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;

    .line 210
    .local v2, "methodKey":Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;
    iget-boolean v3, p0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->mSync:Z

    iget-boolean v4, v2, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->mSync:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->mCommand:Ljava/lang/String;

    iget-object v4, v2, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->mCommand:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 208
    .end local v2    # "methodKey":Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 215
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->mCommand:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->mSync:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 198
    sget-object v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->sMethodKeys:Ljava/util/LinkedList;

    monitor-enter v0

    .line 199
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->mCommand:Ljava/lang/String;

    .line 200
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->mSync:Z

    .line 201
    sget-object v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->sMethodKeys:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 202
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
