.class Lorg/chromium/net/HttpNegotiateAuthenticator$a;
.super Ljava/lang/Object;
.source "HttpNegotiateAuthenticator.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/HttpNegotiateAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/chromium/net/HttpNegotiateAuthenticator;

.field private final b:Lorg/chromium/net/HttpNegotiateAuthenticator$c;


# direct methods
.method public constructor <init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lorg/chromium/net/HttpNegotiateAuthenticator$c;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->a:Lorg/chromium/net/HttpNegotiateAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->b:Lorg/chromium/net/HttpNegotiateAuthenticator$c;

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    const-string v0, "net_auth"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 101
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    array-length v4, p1

    const/16 v5, -0x155

    if-nez v4, :cond_0

    .line 109
    new-array p1, v3, [Ljava/lang/Object;

    const-string v2, "ERR_MISSING_AUTH_CREDENTIALS: No account provided for the kerberos authentication. Please verify the configuration policies and that the CONTACTS runtime permission is granted. "

    invoke-static {v0, v2, p1}, Lorg/chromium/base/e;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->a:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->b:Lorg/chromium/net/HttpNegotiateAuthenticator$c;

    iget-wide v2, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$c;->a:J

    invoke-virtual {p1, v2, v3, v5, v1}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    return-void

    .line 117
    :cond_0
    array-length v4, p1

    if-le v4, v2, :cond_1

    .line 118
    new-array v2, v2, [Ljava/lang/Object;

    array-length p1, p1

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "ERR_MISSING_AUTH_CREDENTIALS: Found %d accounts eligible for the kerberos authentication. Please fix the configuration by providing a single account."

    .line 118
    invoke-static {v0, p1, v2}, Lorg/chromium/base/e;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->a:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->b:Lorg/chromium/net/HttpNegotiateAuthenticator$c;

    iget-wide v2, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$c;->a:J

    invoke-virtual {p1, v2, v3, v5, v1}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    return-void

    .line 127
    :cond_1
    iget-object v4, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->a:Lorg/chromium/net/HttpNegotiateAuthenticator;

    invoke-static {}, Lorg/chromium/base/c;->a()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.USE_CREDENTIALS"

    invoke-virtual {v4, v5, v6, v2}, Lorg/chromium/net/HttpNegotiateAuthenticator;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    new-array p1, v3, [Ljava/lang/Object;

    const-string v2, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: USE_CREDENTIALS permission not granted. Aborting authentication."

    invoke-static {v0, v2, p1}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->a:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->b:Lorg/chromium/net/HttpNegotiateAuthenticator$c;

    iget-wide v2, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$c;->a:J

    const/16 v0, -0x157

    invoke-virtual {p1, v2, v3, v0, v1}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->b:Lorg/chromium/net/HttpNegotiateAuthenticator$c;

    aget-object p1, p1, v3

    iput-object p1, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$c;->e:Landroid/accounts/Account;

    .line 139
    iget-object v1, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$c;->b:Landroid/accounts/AccountManager;

    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->b:Lorg/chromium/net/HttpNegotiateAuthenticator$c;

    iget-object v2, p1, Lorg/chromium/net/HttpNegotiateAuthenticator$c;->e:Landroid/accounts/Account;

    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->b:Lorg/chromium/net/HttpNegotiateAuthenticator$c;

    iget-object v3, p1, Lorg/chromium/net/HttpNegotiateAuthenticator$c;->d:Ljava/lang/String;

    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->b:Lorg/chromium/net/HttpNegotiateAuthenticator$c;

    iget-object v4, p1, Lorg/chromium/net/HttpNegotiateAuthenticator$c;->c:Landroid/os/Bundle;

    const/4 v5, 0x1

    new-instance v6, Lorg/chromium/net/HttpNegotiateAuthenticator$b;

    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->a:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->b:Lorg/chromium/net/HttpNegotiateAuthenticator$c;

    invoke-direct {v6, p1, v0}, Lorg/chromium/net/HttpNegotiateAuthenticator$b;-><init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lorg/chromium/net/HttpNegotiateAuthenticator$c;)V

    new-instance v7, Landroid/os/Handler;

    .line 142
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->e()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v7, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 103
    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string p1, "ERR_UNEXPECTED: Error while attempting to retrieve accounts."

    invoke-static {v0, p1, v2}, Lorg/chromium/base/e;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->a:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$a;->b:Lorg/chromium/net/HttpNegotiateAuthenticator$c;

    iget-wide v2, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$c;->a:J

    const/16 v0, -0x9

    invoke-virtual {p1, v2, v3, v0, v1}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    return-void
.end method
