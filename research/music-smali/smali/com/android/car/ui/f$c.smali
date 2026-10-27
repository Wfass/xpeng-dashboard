.class Lcom/android/car/ui/f$c;
.super Ljava/lang/Object;
.source "RotaryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:I

.field b:J

.field c:Lcom/android/car/ui/f$d;


# direct methods
.method constructor <init>(IJ)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/android/car/ui/f$c;->a:I

    .line 86
    iput-wide p2, p0, Lcom/android/car/ui/f$c;->b:J

    .line 87
    iget p1, p0, Lcom/android/car/ui/f$c;->a:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-wide p1, p0, Lcom/android/car/ui/f$c;->b:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expiration time must be positive if CacheType is CACHE_TYPE_EXPIRED_AFTER_SOME_TIME"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method a(J)Landroid/view/View;
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/car/ui/f$c;->b(J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/car/ui/f$c;->c:Lcom/android/car/ui/f$d;

    iget-object p1, p1, Lcom/android/car/ui/f$d;->a:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method a(Landroid/view/View;J)V
    .locals 2

    .line 99
    iget v0, p0, Lcom/android/car/ui/f$c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 102
    new-instance v0, Lcom/android/car/ui/f$d;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/car/ui/f$d;-><init>(Landroid/view/View;J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/car/ui/f$c;->c:Lcom/android/car/ui/f$d;

    return-void
.end method

.method b(J)Z
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/android/car/ui/f$c;->c:Lcom/android/car/ui/f$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    iget v2, p0, Lcom/android/car/ui/f$c;->a:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const/4 p1, 0x3

    if-eq v2, p1, :cond_1

    return v1

    :cond_1
    return v4

    .line 115
    :cond_2
    iget-wide v2, v0, Lcom/android/car/ui/f$d;->b:J

    iget-wide v5, p0, Lcom/android/car/ui/f$c;->b:J

    add-long/2addr v2, v5

    cmp-long p1, p1, v2

    if-gez p1, :cond_3

    move v1, v4

    :cond_3
    return v1
.end method
