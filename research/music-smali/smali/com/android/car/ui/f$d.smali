.class Lcom/android/car/ui/f$d;
.super Ljava/lang/Object;
.source "RotaryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field final b:J


# direct methods
.method constructor <init>(Landroid/view/View;J)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/car/ui/f$d;->a:Landroid/view/View;

    .line 69
    iput-wide p2, p0, Lcom/android/car/ui/f$d;->b:J

    return-void
.end method
