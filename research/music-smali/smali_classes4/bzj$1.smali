.class Lbzj$1;
.super Ljava/lang/Object;
.source "TestResult.java"

# interfaces
.implements Lbze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbzj;->a(Lbzg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbzg;

.field final synthetic b:Lbzj;


# direct methods
.method constructor <init>(Lbzj;Lbzg;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lbzj$1;->b:Lbzj;

    iput-object p2, p0, Lbzj$1;->a:Lbzg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 122
    iget-object v0, p0, Lbzj$1;->a:Lbzg;

    invoke-virtual {v0}, Lbzg;->runBare()V

    return-void
.end method
