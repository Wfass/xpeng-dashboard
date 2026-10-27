.class Laql$c$1;
.super Ljava/lang/Object;
.source "XmlyLoginFlowDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laql$c;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laql;

.field final synthetic b:Laql$c;


# direct methods
.method constructor <init>(Laql$c;Laql;)V
    .locals 0

    .line 302
    iput-object p1, p0, Laql$c$1;->b:Laql$c;

    iput-object p2, p0, Laql$c$1;->a:Laql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 305
    iget-object v0, p0, Laql$c$1;->a:Laql;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laql;->a(Laql;Laqk;)Laqk;

    return-void
.end method
