.class Lbaq$1;
.super Ljava/lang/Object;
.source "KugouLatelyMusicOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaq;->a(Ljava/util/List;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Lbaq;


# direct methods
.method constructor <init>(Lbaq;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0

    .line 193
    iput-object p1, p0, Lbaq$1;->d:Lbaq;

    iput-object p2, p0, Lbaq$1;->a:Ljava/util/List;

    iput-object p3, p0, Lbaq$1;->b:Ljava/util/List;

    iput-boolean p4, p0, Lbaq$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 196
    iget-object v0, p0, Lbaq$1;->d:Lbaq;

    iget-object v1, p0, Lbaq$1;->a:Ljava/util/List;

    iget-object v2, p0, Lbaq$1;->b:Ljava/util/List;

    iget-boolean v3, p0, Lbaq$1;->c:Z

    invoke-static {v0, v1, v2, v3}, Lbaq;->a(Lbaq;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method
