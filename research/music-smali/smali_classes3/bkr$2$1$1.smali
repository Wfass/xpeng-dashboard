.class Lbkr$2$1$1;
.super Ljava/lang/Object;
.source "XPFirstCacheRequestPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkr$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbkr$2$1;


# direct methods
.method constructor <init>(Lbkr$2$1;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lbkr$2$1$1;->a:Lbkr$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 120
    iget-object v0, p0, Lbkr$2$1$1;->a:Lbkr$2$1;

    iget-object v0, v0, Lbkr$2$1;->a:Lbkr$2;

    iget-object v0, v0, Lbkr$2;->b:Lbkr;

    invoke-static {v0}, Lbkr;->m(Lbkr;)V

    return-void
.end method
