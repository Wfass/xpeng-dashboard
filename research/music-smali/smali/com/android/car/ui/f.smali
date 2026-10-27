.class Lcom/android/car/ui/f;
.super Ljava/lang/Object;
.source "RotaryCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/f$a;,
        Lcom/android/car/ui/f$b;,
        Lcom/android/car/ui/f$c;,
        Lcom/android/car/ui/f$d;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/car/ui/f$c;

.field private final b:Lcom/android/car/ui/f$a;


# direct methods
.method constructor <init>(IIII)V
    .locals 3

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lcom/android/car/ui/f$c;

    int-to-long v1, p2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/car/ui/f$c;-><init>(IJ)V

    iput-object v0, p0, Lcom/android/car/ui/f;->a:Lcom/android/car/ui/f$c;

    .line 186
    new-instance p1, Lcom/android/car/ui/f$a;

    invoke-direct {p1, p3, p4}, Lcom/android/car/ui/f$a;-><init>(II)V

    iput-object p1, p0, Lcom/android/car/ui/f;->b:Lcom/android/car/ui/f$a;

    return-void
.end method


# virtual methods
.method a(J)Landroid/view/View;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/car/ui/f;->a:Lcom/android/car/ui/f$c;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/ui/f$c;->a(J)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method a(IJ)Lcom/android/car/ui/d;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/car/ui/f;->b:Lcom/android/car/ui/f$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/car/ui/f$a;->a(IJ)Lcom/android/car/ui/d;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/car/ui/f;->b:Lcom/android/car/ui/f$a;

    invoke-virtual {v0}, Lcom/android/car/ui/f$a;->clear()V

    return-void
.end method

.method a(ILcom/android/car/ui/d;J)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/car/ui/f;->b:Lcom/android/car/ui/f$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/car/ui/f$a;->a(ILcom/android/car/ui/d;J)V

    return-void
.end method

.method a(Landroid/view/View;J)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/car/ui/f;->a:Lcom/android/car/ui/f$c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/car/ui/f$c;->a(Landroid/view/View;J)V

    return-void
.end method
