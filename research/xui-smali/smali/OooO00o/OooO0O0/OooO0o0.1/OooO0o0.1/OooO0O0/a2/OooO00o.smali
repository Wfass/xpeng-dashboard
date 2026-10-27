.class public abstract LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;


# instance fields
.field public OooO00o:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0O0()V

    .line 4
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO00o()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final OooO00o(Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;)V
    .locals 1
    .param p1    # Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO00o:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    return-void
.end method

.method public OooO0O0()V
    .locals 7

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    .line 283
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 284
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO00o()V

    goto/16 :goto_2

    .line 286
    :cond_1
    :goto_0
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "MyAudioRecord"

    const-string v3, " will start audio record"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v1, Lcom/loostone/libbottom/util/permission/PermissionActivity;->OooO00o:Lcom/loostone/libbottom/util/permission/PermissionActivity$OooO00o;

    .line 326
    const-string v1, "android.permission.RECORD_AUDIO"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 327
    new-instance v2, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0o;

    invoke-direct {v2, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0o;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;)V

    const-string v0, "permissions"

    .line 328
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    sput-object v2, Lcom/loostone/libbottom/util/permission/PermissionActivity;->OooO0O0:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0Oo/OooO00o;

    const-string v0, "permissions"

    .line 330
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v3, v0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v5, :cond_4

    .line 488
    aget-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 489
    sget-object v6, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v6, :cond_3

    .line 490
    invoke-static {v6, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 491
    :cond_3
    const-string v0, "instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_4
    move v0, v5

    :goto_1
    if-eqz v0, :cond_5

    .line 492
    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0o;->OooO00o()V

    goto :goto_2

    .line 494
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .line 495
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v2, :cond_9

    .line 496
    const-class v3, Lcom/loostone/libbottom/util/permission/PermissionActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "permissions"

    .line 497
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 498
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v1, :cond_8

    .line 500
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 501
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PermissionActivity"

    const-string v2, " startActivity:request"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :goto_2
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_7

    .line 503
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0O0()V

    goto :goto_4

    .line 505
    :cond_7
    :goto_3
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO00o()V

    :goto_4
    return-void

    .line 506
    :cond_8
    const-string v0, "instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 507
    :cond_9
    const-string v0, "instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public OooO0OO()V
    .locals 1

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO00o()V

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO$OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO;->OooO0O0()V

    return-void
.end method
