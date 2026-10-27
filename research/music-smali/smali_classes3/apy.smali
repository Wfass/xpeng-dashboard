.class public Lapy;
.super Ljava/lang/Object;
.source "XpAccountManager.java"


# direct methods
.method public static a(Landroid/content/Context;)Lapx;
    .locals 11

    .line 26
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    .line 27
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 28
    new-instance v1, Lapx;

    invoke-direct {v1}, Lapx;-><init>()V

    const-string v2, "getCurrentAccountInfo userInfo="

    const-string v3, "XpAccountManager"

    if-eqz v0, :cond_2

    .line 29
    array-length v4, v0

    if-lez v4, :cond_2

    const/4 v4, 0x0

    .line 30
    aget-object v5, v0, v4

    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentUserInfo accounts.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";account[0].name="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_0

    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "name"

    .line 34
    invoke-virtual {p0, v5, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "avatar"

    .line 35
    invoke-virtual {p0, v5, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "update"

    .line 36
    invoke-virtual {p0, v5, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "uid"

    .line 37
    invoke-virtual {p0, v5, v8}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "user_type"

    .line 38
    invoke-virtual {p0, v5, v9}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "user_data_encrypted_phone"

    .line 39
    invoke-virtual {p0, v5, v10}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    iput-object v0, v1, Lapx;->a:Ljava/lang/String;

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    .line 42
    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, v1, Lapx;->a:Ljava/lang/String;

    .line 44
    :cond_1
    iput-object v6, v1, Lapx;->b:Ljava/lang/String;

    .line 45
    invoke-static {v7, v4}, Lcom/xiaopeng/musicradio/utils/ax;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lapx;->c:I

    const-wide/16 v5, -0x1

    .line 46
    invoke-static {v8, v5, v6}, Lcom/xiaopeng/musicradio/utils/ax;->a(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lapx;->d:J

    .line 47
    invoke-static {v9, v4}, Lcom/xiaopeng/musicradio/utils/ax;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lapx;->e:I

    .line 48
    iput-object p0, v1, Lapx;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentUserInfo Exception="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string p0, "getCurrentUserInfo account is empty"

    .line 55
    invoke-static {v3, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
