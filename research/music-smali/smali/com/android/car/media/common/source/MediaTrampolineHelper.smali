.class public Lcom/android/car/media/common/source/MediaTrampolineHelper;
.super Ljava/lang/Object;
.source "MediaTrampolineHelper.java"

# interfaces
.implements Landroidx/lifecycle/m;


# instance fields
.field private final a:Landroidx/fragment/app/FragmentActivity;

.field private final b:Lcom/android/car/media/common/source/d;

.field private c:Lcom/android/car/media/common/source/b;

.field private d:Z


# direct methods
.method private a(Lcom/android/car/media/common/source/b;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/car/media/common/source/MediaTrampolineHelper;->c:Lcom/android/car/media/common/source/b;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    const-string v1, "MediaTrampolineHlp"

    .line 112
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " old: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/media/common/source/MediaTrampolineHelper;->c:Lcom/android/car/media/common/source/b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.car.intent.action.MEDIA_TEMPLATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/android/car/media/common/source/b;->b()Landroid/content/ComponentName;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.car.intent.extra.MEDIA_COMPONENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    .line 120
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "latestSource is null in onResume"

    .line 121
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/car/media/common/source/MediaTrampolineHelper;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;
    .end annotation

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/car/media/common/source/MediaTrampolineHelper;->d:Z

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;
    .end annotation

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/android/car/media/common/source/MediaTrampolineHelper;->d:Z

    .line 99
    iget-object v0, p0, Lcom/android/car/media/common/source/MediaTrampolineHelper;->b:Lcom/android/car/media/common/source/d;

    invoke-virtual {v0}, Lcom/android/car/media/common/source/d;->b()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/media/common/source/b;

    invoke-direct {p0, v0}, Lcom/android/car/media/common/source/MediaTrampolineHelper;->a(Lcom/android/car/media/common/source/b;)V

    return-void
.end method
