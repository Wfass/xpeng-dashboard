.class Ldb$1;
.super Ljava/lang/Object;
.source "MotionLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldb;->loadLayoutDescription(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldb;


# direct methods
.method constructor <init>(Ldb;)V
    .locals 0

    .line 1492
    iput-object p1, p0, Ldb$1;->a:Ldb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1495
    iget-object v0, p0, Ldb$1;->a:Ldb;

    invoke-static {v0}, Ldb;->a(Ldb;)Ldb$f;

    move-result-object v0

    invoke-virtual {v0}, Ldb$f;->a()V

    return-void
.end method
