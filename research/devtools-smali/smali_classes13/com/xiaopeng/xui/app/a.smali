.class public Lcom/xiaopeng/xui/app/a;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 3

    .line 18
    if-eqz p0, :cond_0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    .line 23
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 24
    invoke-static {p0}, Lcom/xiaopeng/xui/app/a;->aA(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    const-string v0, "ActivityUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    nop

    .line 30
    :goto_1
    return-void
.end method

.method public static a(Landroid/app/Activity;Z)Z
    .locals 3

    .line 32
    nop

    .line 34
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    if-nez p1, :cond_0

    if-nez v1, :cond_0

    .line 39
    :try_start_1
    invoke-static {p0}, Lcom/xiaopeng/xui/app/a;->aA(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    move v0, p1

    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    move v0, p1

    goto :goto_2

    .line 42
    :catch_1
    move-exception p0

    .line 43
    :goto_1
    const-string p1, "ActivityUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToBack e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 44
    :cond_1
    :goto_2
    nop

    .line 45
    :goto_3
    return v0
.end method

.method public static aA(Landroid/content/Context;)V
    .locals 3

    .line 49
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    const-string v0, "ActivityUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHome e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void
.end method
