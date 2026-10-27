.class Lcom/android/car/media/common/PlaybackFragment$1;
.super Lcom/android/car/media/common/e;
.source "PlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/media/common/PlaybackFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/car/media/common/PlaybackFragment;


# direct methods
.method constructor <init>(Lcom/android/car/media/common/PlaybackFragment;Landroid/content/Context;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/car/media/common/PlaybackFragment$1;->a:Lcom/android/car/media/common/PlaybackFragment;

    invoke-direct {p0, p2}, Lcom/android/car/media/common/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment$1;->a:Lcom/android/car/media/common/PlaybackFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/media/common/PlaybackFragment;->access$002(Lcom/android/car/media/common/PlaybackFragment;Z)Z

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment$1;->a:Lcom/android/car/media/common/PlaybackFragment;

    invoke-static {v0}, Lcom/android/car/media/common/PlaybackFragment;->access$100(Lcom/android/car/media/common/PlaybackFragment;)Lcom/android/car/media/common/PlaybackFragment$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/media/common/PlaybackFragment$a;->g()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/car/media/common/PlaybackFragment$1;->a:Lcom/android/car/media/common/PlaybackFragment;

    .line 181
    invoke-static {v2}, Lcom/android/car/media/common/PlaybackFragment;->access$200(Lcom/android/car/media/common/PlaybackFragment;)Landroid/car/content/pm/CarPackageManager;

    move-result-object v2

    .line 180
    invoke-static {v2, p2}, Lahx;->a(Landroid/car/content/pm/CarPackageManager;Landroid/app/PendingIntent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/android/car/media/common/PlaybackFragment$1;->a:Lcom/android/car/media/common/PlaybackFragment;

    invoke-static {v2}, Lcom/android/car/media/common/PlaybackFragment;->access$300(Lcom/android/car/media/common/PlaybackFragment;)Lcom/android/car/media/common/d;

    move-result-object v2

    invoke-virtual {v2, p1, p3, p2, v1}, Lcom/android/car/media/common/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)V

    .line 184
    iget-object p1, p0, Lcom/android/car/media/common/PlaybackFragment$1;->a:Lcom/android/car/media/common/PlaybackFragment;

    invoke-static {p1, v0}, Lcom/android/car/media/common/PlaybackFragment;->access$002(Lcom/android/car/media/common/PlaybackFragment;Z)Z

    .line 188
    :cond_1
    iget-object p1, p0, Lcom/android/car/media/common/PlaybackFragment$1;->a:Lcom/android/car/media/common/PlaybackFragment;

    invoke-static {p1}, Lcom/android/car/media/common/PlaybackFragment;->access$000(Lcom/android/car/media/common/PlaybackFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 189
    iget-object p1, p0, Lcom/android/car/media/common/PlaybackFragment$1;->a:Lcom/android/car/media/common/PlaybackFragment;

    invoke-static {p1}, Lcom/android/car/media/common/PlaybackFragment;->access$300(Lcom/android/car/media/common/PlaybackFragment;)Lcom/android/car/media/common/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/car/media/common/d;->a()V

    :cond_2
    return-void
.end method
