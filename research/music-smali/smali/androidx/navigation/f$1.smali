.class Landroidx/navigation/f$1;
.super Ljava/lang/Object;
.source "NavControllerViewModel.java"

# interfaces
.implements Landroidx/lifecycle/aa$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/z;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 39
    new-instance p1, Landroidx/navigation/f;

    invoke-direct {p1}, Landroidx/navigation/f;-><init>()V

    return-object p1
.end method
