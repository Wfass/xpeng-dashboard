.class Lai$1;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai;->e(Laj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Laj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lai;


# direct methods
.method constructor <init>(Lai;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lai$1;->a:Lai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laj;Laj;)I
    .locals 0

    .line 211
    iget p1, p1, Laj;->b:I

    iget p2, p2, Laj;->b:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 208
    check-cast p1, Laj;

    check-cast p2, Laj;

    invoke-virtual {p0, p1, p2}, Lai$1;->a(Laj;Laj;)I

    move-result p1

    return p1
.end method
