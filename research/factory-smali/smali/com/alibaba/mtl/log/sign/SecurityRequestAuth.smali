.class public Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;
.super Ljava/lang/Object;
.source "SecurityRequestAuth.java"

# interfaces
.implements Lcom/alibaba/mtl/log/sign/IRequestAuth;


# instance fields
.field private F:Z

.field private a:Ljava/lang/Class;

.field private a:Ljava/lang/reflect/Field;

.field private a:Ljava/lang/reflect/Method;

.field private ad:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private b:Ljava/lang/reflect/Field;

.field private c:Ljava/lang/Object;

.field private c:Ljava/lang/reflect/Field;

.field private g:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aAppkey"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->g:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/Object;

    .line 40
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/Object;

    .line 41
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    .line 42
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Field;

    .line 43
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/reflect/Field;

    .line 44
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/reflect/Field;

    .line 45
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Method;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->z:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->F:Z

    .line 35
    iput-object p1, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->g:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->ad:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private declared-synchronized D()V
    .locals 7

    monitor-enter p0

    .line 51
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 52
    monitor-exit p0

    return-void

    .line 54
    :cond_0
    nop

    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "com.alibaba.wireless.security.open.SecurityGuardManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    const-string v4, "getInstance"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 58
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/Object;

    .line 60
    const-string v4, "getSecureSignatureComp"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 61
    iget-object v5, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    goto :goto_1

    .line 62
    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v3, v0

    .line 63
    :goto_0
    :try_start_3
    const-string v5, "SecurityRequestAuth"

    const-string v6, "initSecurityCheck"

    invoke-static {v5, v6, v4}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :goto_1
    if-eqz v3, :cond_4

    .line 67
    :try_start_4
    const-string v4, "com.alibaba.wireless.security.open.SecurityGuardParamContext"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    .line 68
    iget-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    const-string v5, "appKey"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Field;

    .line 69
    iget-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    const-string v5, "paramMap"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/reflect/Field;

    .line 70
    iget-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    const-string v5, "requestType"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/reflect/Field;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    nop

    .line 73
    nop

    .line 75
    :try_start_5
    const-string v4, "isOpen"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 78
    goto :goto_2

    .line 76
    :catch_2
    move-exception v3

    .line 77
    :try_start_6
    const-string v4, "SecurityRequestAuth"

    const-string v5, "initSecurityCheck"

    invoke-static {v4, v5, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 80
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_1

    .line 81
    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 83
    :cond_1
    nop

    .line 86
    :try_start_7
    const-string v3, "com.taobao.wireless.security.sdk.securitybody.ISecurityBodyComponent"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 89
    nop

    .line 90
    move-object v0, v3

    goto :goto_3

    .line 87
    :catch_3
    move-exception v3

    .line 88
    :try_start_8
    const-string v4, "SecurityRequestAuth"

    const-string v5, "initSecurityCheck"

    invoke-static {v4, v5, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 90
    :goto_3
    if-nez v0, :cond_2

    .line 91
    nop

    .line 95
    move v0, v1

    goto :goto_4

    :cond_2
    move v0, v2

    :goto_4
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_5

    :cond_3
    const/16 v0, 0xc

    :goto_5
    iput v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->z:I

    .line 97
    const-string v0, "com.alibaba.wireless.security.open.securesignature.ISecureSignatureComponent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    const-string v3, "signRequest"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    iget-object v5, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 100
    :catch_4
    move-exception v0

    .line 101
    :try_start_9
    const-string v2, "SecurityRequestAuth"

    const-string v3, "initSecurityCheck"

    invoke-static {v2, v3, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 102
    :cond_4
    :goto_6
    nop

    .line 103
    :goto_7
    iput-boolean v1, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->F:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "toBeSignedStr"    # Ljava/lang/String;

    .line 110
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->F:Z

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->D()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->g:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 115
    const-string v0, "SecurityRequestAuth"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "There is no appkey,please check it!"

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-object v3

    .line 119
    :cond_1
    if-nez p1, :cond_2

    .line 120
    return-object v3

    .line 123
    :cond_2
    nop

    .line 124
    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 129
    iget-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Field;

    iget-object v5, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->g:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    iget-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 131
    const-string v5, "INPUT"

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/reflect/Field;

    iget v5, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->z:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    iget-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->ad:Ljava/lang/String;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    :cond_3
    move-object v0, v3

    :goto_0
    return-object v0
.end method
