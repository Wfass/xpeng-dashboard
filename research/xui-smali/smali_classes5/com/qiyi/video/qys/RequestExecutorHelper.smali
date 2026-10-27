.class public Lcom/qiyi/video/qys/RequestExecutorHelper;
.super Ljava/lang/Object;
.source "RequestExecutorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;,
        Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;
    }
.end annotation


# instance fields
.field private final mMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;",
            "Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qiyi/video/qys/RequestExecutorHelper;->mMethodMap:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lcom/qiyi/video/qys/RequestExecutorHelper;->mObject:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method private getMethodHolder(Lcom/qiyi/video/qys/IQYSRequest;Z)Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;
    .locals 6
    .param p1, "request"    # Lcom/qiyi/video/qys/IQYSRequest;
    .param p2, "isSync"    # Z

    .line 153
    const/4 v0, 0x0

    move-object v1, v0

    .line 155
    .local v1, "command":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v2, p1, Lcom/qiyi/video/qys/IQYSRequest;->mCmd:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 156
    .local v2, "cmd":Lcom/qiyi/video/qys/IQYSStringWrapper;
    :goto_0
    if-nez v2, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcom/qiyi/video/qys/IQYSStringWrapper;->get()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "cmdStr":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_2

    move-object v4, v0

    goto :goto_2

    :cond_2
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "command"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v1, v4

    .line 160
    .end local v2    # "cmd":Lcom/qiyi/video/qys/IQYSStringWrapper;
    goto :goto_3

    .line 158
    .end local v3    # "cmdStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 161
    :goto_3
    if-nez v1, :cond_3

    .line 162
    return-object v0

    .line 164
    :cond_3
    invoke-static {}, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->obtain()Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;

    move-result-object v0

    .line 165
    .local v0, "obtain":Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;
    iput-object v1, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->mCommand:Ljava/lang/String;

    .line 166
    iput-boolean p2, v0, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->mSync:Z

    .line 167
    iget-object v2, p0, Lcom/qiyi/video/qys/RequestExecutorHelper;->mMethodMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;

    .line 168
    .local v2, "methodHolder":Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;
    if-nez v2, :cond_5

    .line 169
    if-nez p2, :cond_4

    .line 170
    invoke-virtual {v0}, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->recycle()V

    .line 171
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/qiyi/video/qys/RequestExecutorHelper;->getMethodHolder(Lcom/qiyi/video/qys/IQYSRequest;Z)Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;

    move-result-object v3

    return-object v3

    .line 173
    :cond_4
    iget-object v3, p0, Lcom/qiyi/video/qys/RequestExecutorHelper;->mObject:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/qiyi/video/qys/RequestExecutorHelper;->mMethodMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 177
    :cond_5
    invoke-virtual {v0}, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodKey;->recycle()V

    .line 179
    :goto_4
    return-object v2
.end method

.method private getTargetException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 140
    move-object v0, p1

    .line 141
    .local v0, "exception":Ljava/lang/Throwable;
    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_1

    .line 142
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    .line 143
    .local v1, "ie":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_1
    move-object v0, v2

    .line 144
    .end local v1    # "ie":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 145
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    .line 148
    :cond_2
    return-object v0
.end method


# virtual methods
.method public executeAsync(Lcom/qiyi/video/qys/IQYSRequest;Lcom/qiyi/video/qys/IQYSCallback;)V
    .locals 8
    .param p1, "request"    # Lcom/qiyi/video/qys/IQYSRequest;
    .param p2, "callback"    # Lcom/qiyi/video/qys/IQYSCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qiyi/video/qys/RequestExecutorHelper;->getMethodHolder(Lcom/qiyi/video/qys/IQYSRequest;Z)Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;

    move-result-object v1

    .line 24
    .local v1, "holder":Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;
    if-nez v1, :cond_1

    .line 25
    if-eqz p2, :cond_0

    .line 26
    new-instance v0, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 27
    .local v0, "response":Lcom/qiyi/video/qys/IQYSResponse;
    const/16 v2, -0x190

    iput v2, v0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 28
    new-instance v2, Lcom/qiyi/video/qys/IQYSString;

    const-string v3, "need command param"

    invoke-direct {v2, v3}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 29
    invoke-interface {p2, v0}, Lcom/qiyi/video/qys/IQYSCallback;->onResponse(Lcom/qiyi/video/qys/IQYSResponse;)V

    .line 31
    .end local v0    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_0
    return-void

    .line 33
    :cond_1
    iget-object v2, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    .line 34
    if-eqz p2, :cond_2

    .line 35
    new-instance v0, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 36
    .restart local v0    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    const/16 v2, -0x194

    iput v2, v0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 37
    new-instance v2, Lcom/qiyi/video/qys/IQYSString;

    const-string v3, "command is not found"

    invoke-direct {v2, v3}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 38
    invoke-interface {p2, v0}, Lcom/qiyi/video/qys/IQYSCallback;->onResponse(Lcom/qiyi/video/qys/IQYSResponse;)V

    .line 40
    .end local v0    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_2
    return-void

    .line 43
    :cond_3
    iget-boolean v2, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mSync:Z

    const/16 v3, -0x1f4

    const/4 v4, 0x1

    if-eqz v2, :cond_b

    .line 45
    :try_start_0
    iget-object v2, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 46
    .local v2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/qiyi/video/qys/IQYSResponse;

    if-ne v2, v5, :cond_6

    .line 47
    iget-object v5, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/qiyi/video/qys/RequestExecutorHelper;->mObject:Ljava/lang/Object;

    iget-boolean v7, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mHasRequest:Z

    if-eqz v7, :cond_4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    goto :goto_0

    :cond_4
    new-array v4, v0, [Ljava/lang/Object;

    :goto_0
    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "invoke":Ljava/lang/Object;
    if-eqz p2, :cond_5

    .line 49
    move-object v4, v0

    check-cast v4, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-interface {p2, v4}, Lcom/qiyi/video/qys/IQYSCallback;->onResponse(Lcom/qiyi/video/qys/IQYSResponse;)V

    .line 51
    .end local v0    # "invoke":Ljava/lang/Object;
    :cond_5
    goto/16 :goto_3

    :cond_6
    const-class v5, Ljava/lang/Void;

    if-eq v2, v5, :cond_8

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_7

    goto :goto_1

    .line 60
    :cond_7
    if-eqz p2, :cond_a

    .line 61
    new-instance v0, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 62
    .local v0, "response":Lcom/qiyi/video/qys/IQYSResponse;
    iput v3, v0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 63
    new-instance v4, Lcom/qiyi/video/qys/IQYSString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remote error, return type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 64
    invoke-interface {p2, v0}, Lcom/qiyi/video/qys/IQYSCallback;->onResponse(Lcom/qiyi/video/qys/IQYSResponse;)V

    .end local v0    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    .end local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3

    .line 52
    .restart local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    :goto_1
    iget-object v5, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/qiyi/video/qys/RequestExecutorHelper;->mObject:Ljava/lang/Object;

    iget-boolean v7, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mHasRequest:Z

    if-eqz v7, :cond_9

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    goto :goto_2

    :cond_9
    new-array v4, v0, [Ljava/lang/Object;

    :goto_2
    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    if-eqz p2, :cond_a

    .line 54
    new-instance v0, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 55
    .restart local v0    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    const/16 v4, 0xc8

    iput v4, v0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 56
    new-instance v4, Lcom/qiyi/video/qys/IQYSString;

    const-string v5, "SUCCESS"

    invoke-direct {v4, v5}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 57
    invoke-interface {p2, v0}, Lcom/qiyi/video/qys/IQYSCallback;->onResponse(Lcom/qiyi/video/qys/IQYSResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    goto :goto_3

    .line 67
    .end local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_a

    .line 69
    invoke-direct {p0, v0}, Lcom/qiyi/video/qys/RequestExecutorHelper;->getTargetException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 70
    .local v2, "exception":Ljava/lang/Throwable;
    new-instance v4, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v4}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 71
    .local v4, "response":Lcom/qiyi/video/qys/IQYSResponse;
    iput v3, v4, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 72
    new-instance v3, Lcom/qiyi/video/qys/IQYSString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNKNOWN-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v3, v4, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 73
    invoke-interface {p2, v4}, Lcom/qiyi/video/qys/IQYSCallback;->onResponse(Lcom/qiyi/video/qys/IQYSResponse;)V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v4    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_a
    :goto_3
    goto :goto_5

    .line 78
    :cond_b
    :try_start_1
    iget-object v2, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/qiyi/video/qys/RequestExecutorHelper;->mObject:Ljava/lang/Object;

    iget-boolean v6, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mHasRequest:Z

    if-eqz v6, :cond_c

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    aput-object p2, v6, v4

    goto :goto_4

    :cond_c
    new-array v6, v4, [Ljava/lang/Object;

    aput-object p2, v6, v0

    :goto_4
    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    goto :goto_5

    .line 79
    :catch_1
    move-exception v0

    .line 80
    .restart local v0    # "e":Ljava/lang/Exception;
    if-eqz p2, :cond_d

    .line 81
    invoke-direct {p0, v0}, Lcom/qiyi/video/qys/RequestExecutorHelper;->getTargetException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 82
    .restart local v2    # "exception":Ljava/lang/Throwable;
    new-instance v4, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v4}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 83
    .restart local v4    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    iput v3, v4, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 84
    new-instance v3, Lcom/qiyi/video/qys/IQYSString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNKNOWN-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v3, v4, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 85
    invoke-interface {p2, v4}, Lcom/qiyi/video/qys/IQYSCallback;->onResponse(Lcom/qiyi/video/qys/IQYSResponse;)V

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v4    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_d
    :goto_5
    return-void
.end method

.method public executeSync(Lcom/qiyi/video/qys/IQYSRequest;)Lcom/qiyi/video/qys/IQYSResponse;
    .locals 8
    .param p1, "request"    # Lcom/qiyi/video/qys/IQYSRequest;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qiyi/video/qys/RequestExecutorHelper;->getMethodHolder(Lcom/qiyi/video/qys/IQYSRequest;Z)Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;

    move-result-object v1

    .line 93
    .local v1, "holder":Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;
    if-nez v1, :cond_0

    .line 94
    new-instance v0, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 95
    .local v0, "response":Lcom/qiyi/video/qys/IQYSResponse;
    const/16 v2, -0x190

    iput v2, v0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 96
    new-instance v2, Lcom/qiyi/video/qys/IQYSString;

    const-string v3, "need command param"

    invoke-direct {v2, v3}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 97
    return-object v0

    .line 99
    .end local v0    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_0
    iget-object v2, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mMethod:Ljava/lang/reflect/Method;

    const/16 v3, -0x194

    if-nez v2, :cond_1

    .line 100
    new-instance v0, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 101
    .restart local v0    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    iput v3, v0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 102
    new-instance v2, Lcom/qiyi/video/qys/IQYSString;

    const-string v3, "command is not found"

    invoke-direct {v2, v3}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 103
    return-object v0

    .line 106
    .end local v0    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_1
    iget-boolean v2, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mSync:Z

    if-eqz v2, :cond_7

    .line 108
    const/16 v2, -0x1f4

    :try_start_0
    iget-object v3, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 109
    .local v3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/qiyi/video/qys/IQYSResponse;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    .line 110
    iget-object v4, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/qiyi/video/qys/RequestExecutorHelper;->mObject:Ljava/lang/Object;

    iget-boolean v7, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mHasRequest:Z

    if-eqz v7, :cond_2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    goto :goto_0

    :cond_2
    new-array v5, v0, [Ljava/lang/Object;

    :goto_0
    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, "invoke":Ljava/lang/Object;
    move-object v4, v0

    check-cast v4, Lcom/qiyi/video/qys/IQYSResponse;

    return-object v4

    .line 112
    .end local v0    # "invoke":Ljava/lang/Object;
    :cond_3
    const-class v4, Ljava/lang/Void;

    if-eq v3, v4, :cond_5

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    goto :goto_1

    .line 119
    :cond_4
    new-instance v0, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 120
    .local v0, "response":Lcom/qiyi/video/qys/IQYSResponse;
    iput v2, v0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 121
    new-instance v4, Lcom/qiyi/video/qys/IQYSString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remote error, return type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 122
    return-object v0

    .line 113
    .end local v0    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_5
    :goto_1
    iget-object v4, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/qiyi/video/qys/RequestExecutorHelper;->mObject:Ljava/lang/Object;

    iget-boolean v7, v1, Lcom/qiyi/video/qys/RequestExecutorHelper$MethodHolder;->mHasRequest:Z

    if-eqz v7, :cond_6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    goto :goto_2

    :cond_6
    new-array v5, v0, [Ljava/lang/Object;

    :goto_2
    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 115
    .restart local v0    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    const/16 v4, 0xc8

    iput v4, v0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 116
    new-instance v4, Lcom/qiyi/video/qys/IQYSString;

    const-string v5, "SUCCESS"

    invoke-direct {v4, v5}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-object v0

    .line 124
    .end local v0    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    .end local v3    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/qiyi/video/qys/RequestExecutorHelper;->getTargetException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 126
    .local v3, "exception":Ljava/lang/Throwable;
    new-instance v4, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v4}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 127
    .local v4, "response":Lcom/qiyi/video/qys/IQYSResponse;
    iput v2, v4, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 128
    new-instance v2, Lcom/qiyi/video/qys/IQYSString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNKNOWN-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v2, v4, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 129
    return-object v4

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "exception":Ljava/lang/Throwable;
    .end local v4    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_7
    new-instance v0, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 133
    .local v0, "response":Lcom/qiyi/video/qys/IQYSResponse;
    iput v3, v0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 134
    new-instance v2, Lcom/qiyi/video/qys/IQYSString;

    const-string v3, "method is async,please use executeAsync"

    invoke-direct {v2, v3}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 135
    return-object v0
.end method
