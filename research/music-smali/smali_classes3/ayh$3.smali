.class Layh$3;
.super Ljava/lang/Object;
.source "MediaLogoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layh;


# direct methods
.method constructor <init>(Layh;)V
    .locals 0

    .line 295
    iput-object p1, p0, Layh$3;->a:Layh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 298
    iget-object v0, p0, Layh$3;->a:Layh;

    invoke-static {v0}, Layh;->b(Layh;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 299
    iget-object v0, p0, Layh$3;->a:Layh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Layh;->a(Layh;Z)Z

    return-void
.end method
