.class Layh$1;
.super Ljava/lang/Object;
.source "MediaLogoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layh;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layh;


# direct methods
.method constructor <init>(Layh;)V
    .locals 0

    .line 78
    iput-object p1, p0, Layh$1;->a:Layh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 81
    iget-object v0, p0, Layh$1;->a:Layh;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Layh;->a(Layh;IZ)V

    return-void
.end method
