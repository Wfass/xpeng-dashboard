.class abstract Lct;
.super Lco;
.source "KeyPositionBase.java"


# instance fields
.field q:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lco;-><init>()V

    .line 31
    sget v0, Lct;->a:I

    iput v0, p0, Lct;->q:I

    return-void
.end method


# virtual methods
.method a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
