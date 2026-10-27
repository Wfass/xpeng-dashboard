.class public Lcom/xiaopeng/devtools/a/a/b;
.super Lcom/xiaopeng/devtools/a/a/a;
.source "XpengCan.java"


# instance fields
.field private mStep:I

.field private ve:Lcom/xiaopeng/devtools/a/b;

.field private vf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/devtools/a/b;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/a/a/a;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/devtools/a/a/b;->mStep:I

    .line 35
    const-string p1, "CAN"

    iput-object p1, p0, Lcom/xiaopeng/devtools/a/a/b;->vd:Ljava/lang/String;

    .line 36
    const-string p1, "XpengCan"

    iput-object p1, p0, Lcom/xiaopeng/devtools/a/a/b;->CLASS_NAME:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/xiaopeng/devtools/a/a/b;->ve:Lcom/xiaopeng/devtools/a/b;

    .line 38
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/a/a/b;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    .line 39
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/a/a/b;->vf:Ljava/util/HashMap;

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/b;->vf:Ljava/util/HashMap;

    const-string p2, "ICAN"

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rx:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/b;->vf:Ljava/util/HashMap;

    const-string p2, "DCAN"

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ry:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/b;->vf:Ljava/util/HashMap;

    const-string p2, "BCAN"

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rz:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/b;->vf:Ljava/util/HashMap;

    const-string p2, "CCAN"

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rA:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/b;->vf:Ljava/util/HashMap;

    const-string p2, "ECAN"

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rB:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/b;->vf:Ljava/util/HashMap;

    const-string p2, "ADCAN"

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rC:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/f;->k(Ljava/lang/Object;)V

    .line 47
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 122
    invoke-super {p0}, Lcom/xiaopeng/devtools/a/a/a;->destroy()V

    .line 123
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/f;->l(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/a/b;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/a/a/b;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    .line 125
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fo()I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/a/b;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->D(Z)V

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 130
    :cond_0
    return-void
.end method

.method public declared-synchronized f([Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    monitor-enter p0

    .line 51
    const/4 v0, 0x0

    .line 53
    :try_start_0
    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/a/a/b;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x2711

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/devtools/a/a/b;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fp()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    aget-object v4, p1, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 55
    nop

    .line 56
    iget-object v4, p0, Lcom/xiaopeng/devtools/a/a/b;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->B(Z)V

    .line 57
    aget-object v4, p1, v1

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 58
    array-length v5, v4

    move v6, v3

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v8, v4, v6

    .line 59
    iget-object v9, p0, Lcom/xiaopeng/devtools/a/a/b;->vf:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 60
    if-eqz v8, :cond_0

    .line 61
    iget-object v7, p0, Lcom/xiaopeng/devtools/a/a/b;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->c(IZ)V

    .line 62
    nop

    .line 58
    move v7, v1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 65
    :cond_1
    if-eqz v7, :cond_2

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collect candata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "by PC command"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "triggered"

    invoke-static {p1, v3}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/b;->ve:Lcom/xiaopeng/devtools/a/b;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/a/b;->I(Z)V

    .line 71
    iput v1, p0, Lcom/xiaopeng/devtools/a/a/b;->mStep:I

    .line 72
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-direct {p1, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/devtools/a/a/b;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fs()V

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/devtools/a/a/b;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->bT(I)V

    .line 75
    const-string v1, "storagePath"

    iget-object v2, p0, Lcom/xiaopeng/devtools/a/a/b;->ve:Lcom/xiaopeng/devtools/a/b;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/a/b;->hS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/a/a/b;->bN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    move-object v0, p1

    :goto_1
    goto :goto_2

    .line 81
    :cond_3
    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/a/a/b;->bN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 83
    :cond_4
    const-string v1, "0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/a/a/b;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/devtools/a/a/b;->ve:Lcom/xiaopeng/devtools/a/b;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/devtools/a/b;->I(Z)V

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/devtools/a/a/b;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fp()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaopeng/devtools/a/a/b;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    .line 86
    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fo()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 87
    const/4 p1, 0x2

    iput p1, p0, Lcom/xiaopeng/devtools/a/a/b;->mStep:I

    .line 88
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/a/a/b;->bN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 94
    :cond_6
    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/a/a/b;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_2
    monitor-exit p0

    return-object v0

    .line 50
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fo()I

    move-result p1

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_2

    .line 106
    iget p1, p0, Lcom/xiaopeng/devtools/a/a/b;->mStep:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fp()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/b;->ve:Lcom/xiaopeng/devtools/a/b;

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/a/a/b;->bO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/a/b;->write(Ljava/lang/String;)Z

    .line 108
    iput v1, p0, Lcom/xiaopeng/devtools/a/a/b;->mStep:I

    goto :goto_0

    .line 109
    :cond_1
    iget p1, p0, Lcom/xiaopeng/devtools/a/a/b;->mStep:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fp()Z

    move-result p1

    if-nez p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/a/b;->ve:Lcom/xiaopeng/devtools/a/b;

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/a/a/b;->bO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/a/b;->write(Ljava/lang/String;)Z

    .line 111
    iput v1, p0, Lcom/xiaopeng/devtools/a/a/b;->mStep:I

    .line 118
    :cond_2
    :goto_0
    return-void
.end method
