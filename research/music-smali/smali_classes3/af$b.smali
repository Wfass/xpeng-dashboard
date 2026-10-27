.class Laf$b;
.super Lad;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic g:Laf;


# direct methods
.method public constructor <init>(Laf;Lae;)V
    .locals 0

    .line 89
    iput-object p1, p0, Laf$b;->g:Laf;

    invoke-direct {p0}, Lad;-><init>()V

    .line 90
    new-instance p1, Lak;

    invoke-direct {p1, p0, p2}, Lak;-><init>(Lad;Lae;)V

    iput-object p1, p0, Laf$b;->e:Lad$a;

    return-void
.end method
