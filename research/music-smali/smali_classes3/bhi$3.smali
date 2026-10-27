.class Lbhi$3;
.super Ljava/lang/Object;
.source "NeteaseDown.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhi;->a(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lbhi;


# direct methods
.method constructor <init>(Lbhi;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 401
    iput-object p1, p0, Lbhi$3;->d:Lbhi;

    iput-object p2, p0, Lbhi$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lbhi$3;->b:Ljava/lang/String;

    iput p4, p0, Lbhi$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 404
    iget-object v0, p0, Lbhi$3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lbhi$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lbhi$3;->d:Lbhi;

    iget-object v3, p0, Lbhi$3;->a:Landroid/content/Context;

    iget v4, p0, Lbhi$3;->c:I

    invoke-static {v2, v3, v1, v4}, Lbhi;->a(Lbhi;Landroid/content/Context;Ljava/lang/String;I)Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uninstall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbhi$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NeteaseDown"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
