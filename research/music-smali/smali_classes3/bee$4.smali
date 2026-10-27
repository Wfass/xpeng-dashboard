.class Lbee$4;
.super Ljava/lang/Object;
.source "XmlyManagerModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbee;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbee;


# direct methods
.method constructor <init>(Lbee;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lbee$4;->a:Lbee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 152
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lbee$4$1;

    invoke-direct {v0, p0}, Lbee$4$1;-><init>(Lbee$4;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
