.class Lbur$1;
.super Ljava/lang/Object;
.source "QueryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbur;->a(Lbun;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbur;


# direct methods
.method constructor <init>(Lbur;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lbur$1;->a:Lbur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 40
    iget-object v0, p0, Lbur$1;->a:Lbur;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbur;->a(Lbur;Z)V

    return-void
.end method
