.class public Lbop;
.super Ljava/lang/Object;
.source "SearchOpenUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 12
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "account_type"

    .line 13
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    invoke-static {p0, p1, v0}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
