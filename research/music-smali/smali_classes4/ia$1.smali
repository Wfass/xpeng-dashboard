.class final Lia$1;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lia$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lia$a;Lia$a;)I
    .locals 0

    .line 460
    invoke-virtual {p2}, Lia$a;->a()I

    move-result p2

    invoke-virtual {p1}, Lia$a;->a()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 457
    check-cast p1, Lia$a;

    check-cast p2, Lia$a;

    invoke-virtual {p0, p1, p2}, Lia$1;->a(Lia$a;Lia$a;)I

    move-result p1

    return p1
.end method
