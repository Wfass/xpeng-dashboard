.class Laid$2;
.super Ljava/lang/Object;
.source "AospPlaybackViewModel.java"

# interfaces
.implements Lz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz<",
        "Laid$d;",
        "Landroidx/lifecycle/LiveData<",
        "Laie;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laid;


# direct methods
.method constructor <init>(Laid;)V
    .locals 0

    .line 160
    iput-object p1, p0, Laid$2;->a:Laid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laid$d;)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laid$d;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Laie;",
            ">;"
        }
    .end annotation

    const-string v0, ",,,,"

    const-string v1, "AospPlaybackViewModel"

    if-eqz p1, :cond_0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apply ===========>> state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Laid$d;->a(Laid$d;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Laid$d;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "apply ===========>> state = null:"

    .line 166
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    iget-object v2, p0, Laid$2;->a:Laid;

    invoke-static {v2}, Laid;->b(Laid;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laie;

    if-eqz v2, :cond_1

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply =================>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Laie;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v2}, Laie;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "apply: progress == null"

    .line 174
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez p1, :cond_2

    .line 176
    new-instance p1, Laie;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v0, v1}, Laie;-><init>(JJ)V

    invoke-static {p1}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance v0, Laif;

    .line 177
    invoke-static {p1}, Laid$d;->a(Laid$d;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-virtual {p1}, Laid$d;->c()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Laif;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;J)V

    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p1, Laid$d;

    invoke-virtual {p0, p1}, Laid$2;->a(Laid$d;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
