.class Lbuq$1;
.super Ljava/lang/Object;
.source "NodeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbuq;->a(Lbun;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbuq;


# direct methods
.method constructor <init>(Lbuq;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lbuq$1;->a:Lbuq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lbuq$1;->a:Lbuq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbuq;->a(Lbuq;Z)V

    return-void
.end method
