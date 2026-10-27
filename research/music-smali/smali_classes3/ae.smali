.class public Lae;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field a:Lah$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lah$a<",
            "Lad;",
            ">;"
        }
    .end annotation
.end field

.field b:Lah$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lah$a<",
            "Lad;",
            ">;"
        }
    .end annotation
.end field

.field c:Lah$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lah$a<",
            "Laj;",
            ">;"
        }
    .end annotation
.end field

.field d:[Laj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lah$b;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lah$b;-><init>(I)V

    iput-object v0, p0, Lae;->a:Lah$a;

    .line 23
    new-instance v0, Lah$b;

    invoke-direct {v0, v1}, Lah$b;-><init>(I)V

    iput-object v0, p0, Lae;->b:Lah$a;

    .line 24
    new-instance v0, Lah$b;

    invoke-direct {v0, v1}, Lah$b;-><init>(I)V

    iput-object v0, p0, Lae;->c:Lah$a;

    const/16 v0, 0x20

    .line 25
    new-array v0, v0, [Laj;

    iput-object v0, p0, Lae;->d:[Laj;

    return-void
.end method
