.class Lbfr$b;
.super Ljava/lang/Object;
.source "MainDataOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Lbfr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lbfr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbfr;-><init>(Lbfr$1;)V

    sput-object v0, Lbfr$b;->a:Lbfr;

    return-void
.end method
