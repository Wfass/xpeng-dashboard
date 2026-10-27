.class Lcom/android/car/ui/f$b;
.super Ljava/lang/Object;
.source "RotaryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/android/car/ui/d;

.field final b:J


# direct methods
.method constructor <init>(Lcom/android/car/ui/d;J)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/android/car/ui/f$b;->a:Lcom/android/car/ui/d;

    .line 132
    iput-wide p2, p0, Lcom/android/car/ui/f$b;->b:J

    return-void
.end method
