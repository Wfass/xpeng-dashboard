.class Lbws$10;
.super Ljava/lang/Object;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbws;->a(Landroid/os/IBinder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvk;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Z

.field final synthetic c:Lbws;


# direct methods
.method constructor <init>(Lbws;Landroid/os/IBinder;Z)V
    .locals 0

    .line 252
    iput-object p1, p0, Lbws$10;->c:Lbws;

    iput-object p2, p0, Lbws$10;->a:Landroid/os/IBinder;

    iput-boolean p3, p0, Lbws$10;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, Lbvk;

    invoke-virtual {p0, p1}, Lbws$10;->a(Lbvk;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbvk;)Ljava/lang/String;
    .locals 2

    .line 255
    iget-object v0, p0, Lbws$10;->a:Landroid/os/IBinder;

    iget-boolean v1, p0, Lbws$10;->b:Z

    invoke-interface {p1, v0, v1}, Lbvk;->a(Landroid/os/IBinder;Z)V

    const/4 p1, 0x0

    return-object p1
.end method
