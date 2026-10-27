.class Lbqx$1$1;
.super Ljava/lang/Object;
.source "AudioLogoOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbqx$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbqx$1;


# direct methods
.method constructor <init>(Lbqx$1;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lbqx$1$1;->a:Lbqx$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 70
    iget-object v0, p0, Lbqx$1$1;->a:Lbqx$1;

    iget-object v0, v0, Lbqx$1;->c:Lbqx$a;

    iget-object v1, p0, Lbqx$1$1;->a:Lbqx$1;

    iget-object v1, v1, Lbqx$1;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lbqx$a;->a(Ljava/util/List;)V

    return-void
.end method
