.class Lcom/android/car/ui/f$a;
.super Ljava/util/HashMap;
.source "RotaryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/android/car/ui/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCacheType:I

.field private final mExpirationPeriodMs:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 145
    iput p1, p0, Lcom/android/car/ui/f$a;->mCacheType:I

    .line 146
    iput p2, p0, Lcom/android/car/ui/f$a;->mExpirationPeriodMs:I

    .line 147
    iget p1, p0, Lcom/android/car/ui/f$a;->mCacheType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/android/car/ui/f$a;->mExpirationPeriodMs:I

    if-lez p1, :cond_0

    goto :goto_0

    .line 148
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
.method a(IJ)Lcom/android/car/ui/d;
    .locals 0

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/f$a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/car/ui/f$b;

    .line 163
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/car/ui/f$a;->a(Lcom/android/car/ui/f$b;J)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/android/car/ui/f$b;->a:Lcom/android/car/ui/d;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method a(ILcom/android/car/ui/d;J)V
    .locals 2

    .line 155
    iget v0, p0, Lcom/android/car/ui/f$a;->mCacheType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/android/car/ui/f$b;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/car/ui/f$b;-><init>(Lcom/android/car/ui/d;J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/car/ui/f$a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Lcom/android/car/ui/f$b;J)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 170
    :cond_0
    iget v1, p0, Lcom/android/car/ui/f$a;->mCacheType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_1

    return v0

    :cond_1
    return v3

    .line 174
    :cond_2
    iget-wide v1, p1, Lcom/android/car/ui/f$b;->b:J

    sub-long/2addr p2, v1

    iget p1, p0, Lcom/android/car/ui/f$a;->mExpirationPeriodMs:I

    int-to-long v1, p1

    cmp-long p1, p2, v1

    if-gez p1, :cond_3

    move v0, v3

    :cond_3
    return v0
.end method
