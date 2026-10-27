.class public Landroidx/core/app/h$c;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field A:Z

.field B:Z

.field C:Ljava/lang/String;

.field D:Landroid/os/Bundle;

.field E:I

.field F:I

.field G:Landroid/app/Notification;

.field H:Landroid/widget/RemoteViews;

.field I:Landroid/widget/RemoteViews;

.field J:Landroid/widget/RemoteViews;

.field K:Ljava/lang/String;

.field L:I

.field M:Ljava/lang/String;

.field N:Ldk;

.field O:J

.field P:I

.field Q:Z

.field R:Landroidx/core/app/h$b;

.field S:Landroid/app/Notification;

.field T:Z

.field U:Landroid/graphics/drawable/Icon;

.field public V:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/h$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/k;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/h$a;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Landroid/app/PendingIntent;

.field h:Landroid/app/PendingIntent;

.field i:Landroid/widget/RemoteViews;

.field j:Landroid/graphics/Bitmap;

.field k:Ljava/lang/CharSequence;

.field l:I

.field m:I

.field n:Z

.field o:Z

.field p:Landroidx/core/app/h$d;

.field q:Ljava/lang/CharSequence;

.field r:Ljava/lang/CharSequence;

.field s:[Ljava/lang/CharSequence;

.field t:I

.field u:I

.field v:Z

.field w:Ljava/lang/String;

.field x:Z

.field y:Ljava/lang/String;

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$c;->b:Ljava/util/ArrayList;

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$c;->c:Ljava/util/ArrayList;

    .line 846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$c;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 857
    iput-boolean v0, p0, Landroidx/core/app/h$c;->n:Z

    const/4 v1, 0x0

    .line 870
    iput-boolean v1, p0, Landroidx/core/app/h$c;->z:Z

    .line 875
    iput v1, p0, Landroidx/core/app/h$c;->E:I

    .line 876
    iput v1, p0, Landroidx/core/app/h$c;->F:I

    .line 882
    iput v1, p0, Landroidx/core/app/h$c;->L:I

    .line 886
    iput v1, p0, Landroidx/core/app/h$c;->P:I

    .line 889
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/core/app/h$c;->S:Landroid/app/Notification;

    .line 1073
    iput-object p1, p0, Landroidx/core/app/h$c;->a:Landroid/content/Context;

    .line 1074
    iput-object p2, p0, Landroidx/core/app/h$c;->K:Ljava/lang/String;

    .line 1076
    iget-object p1, p0, Landroidx/core/app/h$c;->S:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/app/Notification;->when:J

    .line 1077
    iget-object p1, p0, Landroidx/core/app/h$c;->S:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 1078
    iput v1, p0, Landroidx/core/app/h$c;->m:I

    .line 1079
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/h$c;->V:Ljava/util/ArrayList;

    .line 1080
    iput-boolean v0, p0, Landroidx/core/app/h$c;->Q:Z

    return-void
.end method

.method protected static c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 2351
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2352
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .line 1855
    iget-object v0, p0, Landroidx/core/app/h$c;->D:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1856
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$c;->D:Landroid/os/Bundle;

    .line 1858
    :cond_0
    iget-object v0, p0, Landroidx/core/app/h$c;->D:Landroid/os/Bundle;

    return-object v0
.end method

.method public a(I)Landroidx/core/app/h$c;
    .locals 1

    .line 1168
    iget-object v0, p0, Landroidx/core/app/h$c;->S:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;
    .locals 0

    .line 1214
    invoke-static {p1}, Landroidx/core/app/h$c;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/h$c;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/core/app/h$c;
    .locals 0

    .line 1629
    iput-object p1, p0, Landroidx/core/app/h$c;->C:Ljava/lang/String;

    return-object p0
.end method

.method public b()Landroid/app/Notification;
    .locals 1

    .line 2346
    new-instance v0, Landroidx/core/app/i;

    invoke-direct {v0, p0}, Landroidx/core/app/i;-><init>(Landroidx/core/app/h$c;)V

    invoke-virtual {v0}, Landroidx/core/app/i;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Landroidx/core/app/h$c;
    .locals 0

    .line 1692
    iput p1, p0, Landroidx/core/app/h$c;->m:I

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;
    .locals 0

    .line 1222
    invoke-static {p1}, Landroidx/core/app/h$c;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/h$c;->f:Ljava/lang/CharSequence;

    return-object p0
.end method
