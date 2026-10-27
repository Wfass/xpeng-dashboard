.class Lap$1;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lap;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lap$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lap;


# direct methods
.method constructor <init>(Lap;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lap$1;->a:Lap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lap$b;Lap$b;)I
    .locals 0

    .line 193
    iget p1, p1, Lap$b;->a:I

    iget p2, p2, Lap$b;->a:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 190
    check-cast p1, Lap$b;

    check-cast p2, Lap$b;

    invoke-virtual {p0, p1, p2}, Lap$1;->a(Lap$b;Lap$b;)I

    move-result p1

    return p1
.end method
