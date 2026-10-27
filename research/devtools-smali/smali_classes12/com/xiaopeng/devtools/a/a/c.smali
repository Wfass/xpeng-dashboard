.class public Lcom/xiaopeng/devtools/a/a/c;
.super Lcom/xiaopeng/devtools/a/a/a;
.source "XpengLog.java"


# instance fields
.field private ve:Lcom/xiaopeng/devtools/a/b;

.field private vh:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/devtools/a/b;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/a/a/a;-><init>(Landroid/content/Context;)V

    .line 30
    const-string p1, "LOG"

    iput-object p1, p0, Lcom/xiaopeng/devtools/a/a/c;->vd:Ljava/lang/String;

    .line 31
    const-string p1, "XpengLog"

    iput-object p1, p0, Lcom/xiaopeng/devtools/a/a/c;->CLASS_NAME:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/xiaopeng/devtools/a/a/c;->ve:Lcom/xiaopeng/devtools/a/b;

    .line 33
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/a/a/c;->vh:Ljava/util/HashMap;

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/c;->vh:Ljava/util/HashMap;

    const-string p2, "AND"

    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/c;->vh:Ljava/util/HashMap;

    const-string p2, "TBOX"

    const/16 v0, 0x3eb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/c;->vh:Ljava/util/HashMap;

    const-string p2, "NAVI"

    const/16 v0, 0x3ed

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/c;->vh:Ljava/util/HashMap;

    const-string p2, "MODEM"

    const/16 v0, 0x3ee

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/c;->vh:Ljava/util/HashMap;

    const-string p2, "ICM"

    const/16 v0, 0x3ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/f;->k(Ljava/lang/Object;)V

    .line 40
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/xiaopeng/devtools/a/a/a;->destroy()V

    .line 99
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/f;->l(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public declared-synchronized f([Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    monitor-enter p0

    .line 44
    const/4 v0, 0x0

    .line 46
    :try_start_0
    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/a/a/c;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 47
    const/4 v1, 0x1

    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 48
    aget-object v3, p1, v1

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    array-length v5, v3

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 51
    iget-object v8, p0, Lcom/xiaopeng/devtools/a/a/c;->vh:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 52
    if-eqz v7, :cond_0

    .line 53
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy log "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "by PC command"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "triggered"

    invoke-static {p1, v1}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string v1, "storagePath"

    iget-object v2, p0, Lcom/xiaopeng/devtools/a/a/c;->ve:Lcom/xiaopeng/devtools/a/b;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/a/b;->hS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "copyDest"

    const/16 v2, 0x2711

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v1, "copylogs"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 65
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/a/a/c;->bN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_1
    goto :goto_2

    .line 70
    :cond_3
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/a/a/c;->bN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 73
    :cond_4
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/a/a/c;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_2
    monitor-exit p0

    return-object v0

    .line 43
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 82
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/c;->ve:Lcom/xiaopeng/devtools/a/b;

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/a/a/c;->bN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/a/b;->write(Ljava/lang/String;)Z

    .line 89
    goto :goto_0

    .line 84
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/c;->ve:Lcom/xiaopeng/devtools/a/b;

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/a/a/c;->bO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/a/b;->write(Ljava/lang/String;)Z

    .line 85
    nop

    .line 94
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
