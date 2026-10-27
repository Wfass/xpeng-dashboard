.class Lche$1;
.super Lchg;
.source "ExternalResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lche;->statement(Lchg;)Lchg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lchg;

.field final synthetic b:Lche;


# direct methods
.method constructor <init>(Lche;Lchg;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lche$1;->b:Lche;

    iput-object p2, p0, Lche$1;->a:Lchg;

    invoke-direct {p0}, Lchg;-><init>()V

    return-void
.end method
