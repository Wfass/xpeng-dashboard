.class Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;
.super Ljava/lang/Object;
.source "RequestExecutorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiyi/video/qys/RequestExecutorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodHolder"
.end annotation


# instance fields
.field mHasCallback:Z

.field mHasRequest:Z

.field mMethod:Ljava/lang/reflect/Method;

.field mSync:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Ljava/lang/Object;Ljava/lang/String;)Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "command"    # Ljava/lang/String;

    .line 239
    new-instance v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;

    invoke-direct {v0}, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;-><init>()V

    .line 240
    .local v0, "holder":Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 241
    .local v1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/qiyi/video/qys/IQYSRequest;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/qiyi/video/qys/IQYSCallback;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p1, v1, v2}, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 242
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 243
    iput-boolean v4, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mSync:Z

    .line 244
    iput-object v2, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mMethod:Ljava/lang/reflect/Method;

    .line 245
    iput-boolean v5, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mHasRequest:Z

    .line 246
    iput-boolean v5, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mHasCallback:Z

    .line 247
    return-object v0

    .line 249
    :cond_0
    new-array v3, v5, [Ljava/lang/Class;

    const-class v6, Lcom/qiyi/video/qys/IQYSCallback;

    aput-object v6, v3, v4

    invoke-static {p1, v1, v3}, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 250
    if-eqz v2, :cond_1

    .line 251
    iput-boolean v5, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mSync:Z

    .line 252
    iput-object v2, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mMethod:Ljava/lang/reflect/Method;

    .line 253
    iput-boolean v4, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mHasRequest:Z

    .line 254
    iput-boolean v5, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mHasCallback:Z

    .line 255
    return-object v0

    .line 257
    :cond_1
    new-array v3, v5, [Ljava/lang/Class;

    const-class v6, Lcom/qiyi/video/qys/IQYSRequest;

    aput-object v6, v3, v4

    invoke-static {p1, v1, v3}, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_2

    .line 259
    iput-boolean v5, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mSync:Z

    .line 260
    iput-object v2, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mMethod:Ljava/lang/reflect/Method;

    .line 261
    iput-boolean v5, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mHasRequest:Z

    .line 262
    iput-boolean v4, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mHasCallback:Z

    .line 263
    return-object v0

    .line 265
    :cond_2
    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {p1, v1, v3}, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 266
    if-eqz v2, :cond_3

    .line 267
    iput-boolean v5, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mSync:Z

    .line 268
    iput-object v2, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mMethod:Ljava/lang/reflect/Method;

    .line 269
    iput-boolean v4, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mHasRequest:Z

    .line 270
    iput-boolean v4, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mHasCallback:Z

    .line 271
    return-object v0

    .line 273
    :cond_3
    return-object v0
.end method

.method private static varargs getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 278
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 282
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, 0x0

    return-object v0
.end method
