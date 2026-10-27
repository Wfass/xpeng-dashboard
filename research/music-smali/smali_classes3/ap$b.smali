.class Lap$b;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:F

.field c:F

.field d:F

.field e:F


# direct methods
.method public constructor <init>(IFFFF)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lap$b;->a:I

    .line 95
    iput p5, p0, Lap$b;->b:F

    .line 96
    iput p3, p0, Lap$b;->c:F

    .line 97
    iput p2, p0, Lap$b;->d:F

    .line 98
    iput p4, p0, Lap$b;->e:F

    return-void
.end method
