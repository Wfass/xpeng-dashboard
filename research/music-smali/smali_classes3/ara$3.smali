.class Lara$3;
.super Ljava/lang/Object;
.source "AbsReissueOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lara;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lara;


# direct methods
.method constructor <init>(Lara;Ljava/util/List;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lara$3;->b:Lara;

    iput-object p2, p0, Lara$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    iget-object v0, p0, Lara$3;->b:Lara;

    iget-object v0, v0, Lara;->b:Larf;

    iget-object v1, p0, Lara$3;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Larf;->a(Ljava/util/List;)V

    return-void
.end method
