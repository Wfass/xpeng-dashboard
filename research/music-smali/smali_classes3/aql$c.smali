.class public Laql$c;
.super Ljava/lang/Object;
.source "XmlyLoginFlowDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Laql;


# direct methods
.method public constructor <init>(Laql;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Laql$c;->a:Laql;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 285
    iget-object p1, p0, Laql$c;->a:Laql;

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Laql$c;->a:Laql;

    if-nez p1, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-static {p1}, Laql;->c(Laql;)Laql$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 291
    invoke-static {p1}, Laql;->c(Laql;)Laql$b;

    move-result-object v1

    invoke-static {v1, v0}, Laql$b;->a(Laql$b;Laql;)Laql;

    .line 292
    invoke-static {p1, v0}, Laql;->a(Laql;Laql$b;)Laql$b;

    :cond_1
    const-string v0, "XmlyLoginFlowDialog"

    const-string v1, "onDismiss: ============="

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 295
    invoke-static {v0}, Laqn;->a(Z)V

    .line 296
    invoke-static {p1}, Laql;->d(Laql;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Laql;->b(Laql;)Laqk;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 297
    invoke-static {p1}, Laql;->b(Laql;)Laqk;

    move-result-object v0

    invoke-virtual {v0}, Laqk;->c()V

    .line 299
    :cond_2
    invoke-static {p1}, Laql;->b(Laql;)Laqk;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 300
    invoke-static {p1}, Laql;->b(Laql;)Laqk;

    move-result-object v0

    invoke-virtual {v0}, Laqk;->a()V

    .line 302
    :cond_3
    new-instance v0, Laql$c$1;

    invoke-direct {v0, p0, p1}, Laql$c$1;-><init>(Laql$c;Laql;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
