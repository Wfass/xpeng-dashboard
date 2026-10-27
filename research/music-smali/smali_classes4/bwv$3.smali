.class Lbwv$3;
.super Ljava/lang/Object;
.source "HotwordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvn;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/IBinder;

.field final synthetic d:Lbwv;


# direct methods
.method constructor <init>(Lbwv;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lbwv$3;->d:Lbwv;

    iput-object p2, p0, Lbwv$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lbwv$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lbwv$3;->c:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvn;)Ljava/lang/Object;
    .locals 3

    .line 103
    iget-object v0, p0, Lbwv$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lbwv$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lbwv$3;->c:Landroid/os/IBinder;

    invoke-interface {p1, v0, v1, v2}, Lbvn;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p1, Lbvn;

    invoke-virtual {p0, p1}, Lbwv$3;->a(Lbvn;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
