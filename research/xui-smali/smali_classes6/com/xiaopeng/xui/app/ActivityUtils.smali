.class public Lcom/xiaopeng/xui/app/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finish(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 18
    if-eqz p0, :cond_0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    .line 20
    .local v0, "isChild":Z
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    .line 23
    .local v1, "isFinishing":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 24
    invoke-static {p0}, Lcom/xiaopeng/xui/app/ActivityUtils;->startHome(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "isChild":Z
    .end local v1    # "isFinishing":Z
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    nop

    .line 30
    :goto_1
    return-void
.end method

.method public static makeIntentFlag()I
    .locals 1

    .line 58
    const v0, 0x10204000

    return v0
.end method

.method public static moveTaskToBack(Landroid/app/Activity;Z)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "nonRoot"    # Z

    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, "ret":Z
    if-eqz p0, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    .line 36
    .local v1, "isChild":Z
    invoke-virtual {p0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result v2

    move v0, v2

    .line 38
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 39
    invoke-static {p0}, Lcom/xiaopeng/xui/app/ActivityUtils;->startHome(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "isChild":Z
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActivityUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToBack e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    nop

    .line 45
    :goto_1
    return v0
.end method

.method public static startHome(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
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
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHome e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
