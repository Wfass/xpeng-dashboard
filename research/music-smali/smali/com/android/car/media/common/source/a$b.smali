.class public Lcom/android/car/media/common/source/a$b;
.super Ljava/lang/Object;
.source "MediaBrowserConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/media/common/source/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/android/car/media/common/source/b;

.field public final b:Landroid/support/v4/media/MediaBrowserCompat;

.field public final c:Lcom/android/car/media/common/source/a$d;


# direct methods
.method public constructor <init>(Lcom/android/car/media/common/source/b;Landroid/support/v4/media/MediaBrowserCompat;Lcom/android/car/media/common/source/a$d;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "source can\'t be null"

    .line 97
    invoke-static {p1, v0}, Lfg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/car/media/common/source/b;

    iput-object p1, p0, Lcom/android/car/media/common/source/a$b;->a:Lcom/android/car/media/common/source/b;

    const-string p1, "browser can\'t be null"

    .line 98
    invoke-static {p2, p1}, Lfg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat;

    iput-object p1, p0, Lcom/android/car/media/common/source/a$b;->b:Landroid/support/v4/media/MediaBrowserCompat;

    const-string p1, "status can\'t be null"

    .line 99
    invoke-static {p3, p1}, Lfg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/car/media/common/source/a$d;

    iput-object p1, p0, Lcom/android/car/media/common/source/a$b;->c:Lcom/android/car/media/common/source/a$d;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    check-cast p1, Lcom/android/car/media/common/source/a$b;

    .line 107
    iget-object v2, p0, Lcom/android/car/media/common/source/a$b;->a:Lcom/android/car/media/common/source/b;

    iget-object v3, p1, Lcom/android/car/media/common/source/a$b;->a:Lcom/android/car/media/common/source/b;

    invoke-virtual {v2, v3}, Lcom/android/car/media/common/source/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/car/media/common/source/a$b;->b:Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v3, p1, Lcom/android/car/media/common/source/a$b;->b:Landroid/support/v4/media/MediaBrowserCompat;

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/car/media/common/source/a$b;->c:Lcom/android/car/media/common/source/a$d;

    iget-object p1, p1, Lcom/android/car/media/common/source/a$b;->c:Lcom/android/car/media/common/source/a$d;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 114
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/car/media/common/source/a$b;->a:Lcom/android/car/media/common/source/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/media/common/source/a$b;->b:Landroid/support/v4/media/MediaBrowserCompat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/media/common/source/a$b;->c:Lcom/android/car/media/common/source/a$d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
