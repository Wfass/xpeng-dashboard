.class Lbuq$2;
.super Ljava/lang/Object;
.source "NodeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbuq;->a(Ljava/lang/Class;Lbuj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lbuj;

.field final synthetic c:Lbuq;


# direct methods
.method constructor <init>(Lbuq;Ljava/lang/Class;Lbuj;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lbuq$2;->c:Lbuq;

    iput-object p2, p0, Lbuq$2;->a:Ljava/lang/Class;

    iput-object p3, p0, Lbuq$2;->b:Lbuj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lbuq$2;->c:Lbuq;

    iget-object v1, p0, Lbuq$2;->a:Ljava/lang/Class;

    invoke-static {v0, v1}, Lbuq;->a(Lbuq;Ljava/lang/Class;)Lbut;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lbuq$2;->b:Lbuj;

    invoke-virtual {v0, v1}, Lbut;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
