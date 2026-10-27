.class public Lcom/ta/utdid2/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ta/utdid2/b/a/a;->a:Landroid/content/SharedPreferences;

    .line 23
    if-nez p1, :cond_0

    .line 24
    return-void

    .line 27
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/b/a/a;->a:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 41
    nop

    .line 42
    iget-object v0, p0, Lcom/ta/utdid2/b/a/a;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/ta/utdid2/b/a/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 46
    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "PersistentConfiguration"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getTypeFromSp type"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/ta/utdid2/b/a/a;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "PersistentConfiguration"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "writeUtdidToSp utdid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/ta/utdid2/b/a/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    const-string v1, "UTDID2"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string p1, "type"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 78
    iget-object p1, p0, Lcom/ta/utdid2/b/a/a;->a:Landroid/content/SharedPreferences;

    const-string p2, "t2"

    const-wide/16 v1, 0x0

    invoke-interface {p1, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 79
    cmp-long p1, p1, v1

    if-nez p1, :cond_0

    .line 80
    const-string p1, "t2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 84
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception p1

    .line 89
    :cond_1
    :goto_0
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 5

    .line 31
    const-string v0, ""

    .line 32
    iget-object v1, p0, Lcom/ta/utdid2/b/a/a;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/ta/utdid2/b/a/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "UTDID2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_0
    const-string v1, "PersistentConfiguration"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getUtdidFromSp utdid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-object v0
.end method
