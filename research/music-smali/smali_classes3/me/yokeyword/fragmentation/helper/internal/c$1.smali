.class Lme/yokeyword/fragmentation/helper/internal/c$1;
.super Ljava/lang/Object;
.source "VisibleDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/helper/internal/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/yokeyword/fragmentation/helper/internal/c;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/helper/internal/c;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lme/yokeyword/fragmentation/helper/internal/c$1;->a:Lme/yokeyword/fragmentation/helper/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 166
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c$1;->a:Lme/yokeyword/fragmentation/helper/internal/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/yokeyword/fragmentation/helper/internal/c;->a(Lme/yokeyword/fragmentation/helper/internal/c;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 167
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c$1;->a:Lme/yokeyword/fragmentation/helper/internal/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/yokeyword/fragmentation/helper/internal/c;->a(Lme/yokeyword/fragmentation/helper/internal/c;Z)V

    return-void
.end method
