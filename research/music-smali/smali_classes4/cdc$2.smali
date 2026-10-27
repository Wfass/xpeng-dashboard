.class Lcdc$2;
.super Ljava/lang/Object;
.source "ActionQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcdc;->c(Lcdb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcdc;


# direct methods
.method constructor <init>(Lcdc;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcdc$2;->a:Lcdc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcdc$2;->a:Lcdc;

    invoke-static {v0}, Lcdc;->a(Lcdc;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcdc$2;->a:Lcdc;

    invoke-static {v0}, Lcdc;->b(Lcdc;)V

    return-void
.end method
