.class Lbdg$1;
.super Ljava/lang/Object;
.source "ReplayDownMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbdg;


# direct methods
.method constructor <init>(Lbdg;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lbdg$1;->a:Lbdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ReplayDownMgr"

    const-string v1, "timeout run: === "

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lbdg$1;->a:Lbdg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbdg;->a(Lbdg;Z)V

    return-void
.end method
